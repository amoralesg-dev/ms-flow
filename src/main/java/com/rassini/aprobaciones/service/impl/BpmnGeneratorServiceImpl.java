package com.rassini.aprobaciones.service.impl;

import com.rassini.aprobaciones.entity.RutaTransicion;
import com.rassini.aprobaciones.exception.BusinessException;
import com.rassini.aprobaciones.repository.RutaTransicionRepository;
import com.rassini.aprobaciones.service.BpmnGeneratorService;
import lombok.RequiredArgsConstructor;
import org.flowable.bpmn.converter.BpmnXMLConverter;
import org.flowable.bpmn.model.BpmnModel;
import org.flowable.bpmn.model.EndEvent;
import org.flowable.bpmn.model.FlowElement;
import org.flowable.bpmn.model.Process;
import org.flowable.bpmn.model.SequenceFlow;
import org.flowable.bpmn.model.StartEvent;
import org.flowable.engine.RepositoryService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class BpmnGeneratorServiceImpl implements BpmnGeneratorService {

    private final RutaTransicionRepository rutaTransicionRepository;
    private final RepositoryService repositoryService;

    @Override
    @Transactional
    public String generarYDesplegarProceso(String claveRuta) {
        List<RutaTransicion> transiciones = rutaTransicionRepository.findByRutaClaveRutaOrderBySituacionActualCodigoAsc(claveRuta);
        if (transiciones.isEmpty()) {
            throw new BusinessException("La ruta " + claveRuta + " no tiene transiciones configuradas");
        }
        String definitionKey = processKey(claveRuta);

        BpmnModel model = new BpmnModel();
        Process process = new Process();
        process.setId(definitionKey);
        process.setName("Proceso de aprobación " + claveRuta);
        model.addProcess(process);

        StartEvent startEvent = new StartEvent();
        startEvent.setId("start");
        startEvent.setName("Inicio");
        process.addFlowElement(startEvent);

        EndEvent endEvent = new EndEvent();
        endEvent.setId("end");
        endEvent.setName("Fin");
        process.addFlowElement(endEvent);

        Map<Integer, FlowElement> nodos = new LinkedHashMap<>();
        nodos.put(0, startEvent);

        transiciones.forEach(t -> {
            int actual = t.getSituacionActual().getCodigo();
            nodos.computeIfAbsent(actual, codigo -> {
                org.flowable.bpmn.model.UserTask task = new org.flowable.bpmn.model.UserTask();
                task.setId("sit_" + codigo);
                task.setName("Situación " + codigo + " - " + t.getSituacionActual().getDescripcionCorta());
                process.addFlowElement(task);
                return task;
            });

            if (t.getSituacionSiguiente() != null && t.getSituacionSiguiente().getCodigo() != 0) {
                int siguiente = t.getSituacionSiguiente().getCodigo();
                nodos.computeIfAbsent(siguiente, codigo -> {
                    org.flowable.bpmn.model.UserTask task = new org.flowable.bpmn.model.UserTask();
                    task.setId("sit_" + codigo);
                    task.setName("Situación " + codigo);
                    process.addFlowElement(task);
                    return task;
                });
            }
        });

        SequenceFlow startFlow = new SequenceFlow("start", "sit_" + transiciones.get(0).getSituacionActual().getCodigo());
        startFlow.setId("flow_start");
        process.addFlowElement(startFlow);

        int i = 1;
        for (RutaTransicion transicion : transiciones) {
            String source = "sit_" + transicion.getSituacionActual().getCodigo();
            String target = (transicion.getSituacionSiguiente() == null || transicion.getSituacionSiguiente().getCodigo() == 0)
                    ? "end"
                    : "sit_" + transicion.getSituacionSiguiente().getCodigo();

            SequenceFlow flow = new SequenceFlow(source, target);
            flow.setId("flow_" + (i++));
            flow.setName("to_" + target);
            process.addFlowElement(flow);
        }

        byte[] xmlBytes = new BpmnXMLConverter().convertToXML(model);
        String resourceName = definitionKey + ".bpmn20.xml";

        repositoryService.createDeployment()
                .name("deployment_" + definitionKey)
                .addString(resourceName, new String(xmlBytes, StandardCharsets.UTF_8))
                .deploy();

        return definitionKey;
    }
}
