package com.rassini.aprobaciones.controller;

import com.rassini.aprobaciones.dto.response.PageResponse;
import com.rassini.aprobaciones.dto.response.ProcessDefinitionResponse;
import com.rassini.aprobaciones.dto.response.ProcessInstanceDetailResponse;
import com.rassini.aprobaciones.dto.response.ProcessInstanceResponse;
import com.rassini.aprobaciones.service.BpmAdminService;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/admin/bpm")
@RequiredArgsConstructor
@PreAuthorize("hasRole('ADMIN')")
public class BpmAdminController {

    private final BpmAdminService bpmAdminService;

    @Operation(summary = "Listar definiciones de proceso desplegadas (versiones y estado activa/suspendida)")
    @GetMapping("/process-definitions")
    public List<ProcessDefinitionResponse> listarProcesos(
            @RequestParam(required = false) String proceso,
            @RequestParam(defaultValue = "false") boolean todasVersiones) {
        return bpmAdminService.listarProcesos(proceso, todasVersiones);
    }

    @Operation(summary = "Obtener el XML BPMN desplegado de una definición de proceso")
    @GetMapping(value = "/process-definitions/{processDefinitionId}/xml", produces = MediaType.APPLICATION_XML_VALUE)
    public byte[] obtenerXmlBpmn(@PathVariable String processDefinitionId) {
        return bpmAdminService.obtenerXmlBpmn(processDefinitionId);
    }

    @Operation(summary = "Obtener el diagrama PNG generado de una definición de proceso")
    @GetMapping(value = "/process-definitions/{processDefinitionId}/diagrama", produces = MediaType.IMAGE_PNG_VALUE)
    public byte[] generarDiagramaBpmn(@PathVariable String processDefinitionId) {
        return bpmAdminService.generarDiagramaBpmn(processDefinitionId);
    }

    @Operation(summary = "Suspender una definición de proceso (opcionalmente con sus instancias en ejecución)")
    @PutMapping("/process-definitions/{processDefinitionId}/suspender")
    public ProcessDefinitionResponse suspenderProceso(@PathVariable String processDefinitionId,
                                                      @RequestParam(defaultValue = "false") boolean incluirInstancias) {
        return bpmAdminService.suspenderProceso(processDefinitionId, incluirInstancias);
    }

    @Operation(summary = "Activar una definición de proceso (opcionalmente con sus instancias suspendidas)")
    @PutMapping("/process-definitions/{processDefinitionId}/activar")
    public ProcessDefinitionResponse activarProceso(@PathVariable String processDefinitionId,
                                                    @RequestParam(defaultValue = "false") boolean incluirInstancias) {
        return bpmAdminService.activarProceso(processDefinitionId, incluirInstancias);
    }

    @Operation(summary = "Listar instancias de proceso con su solicitud asociada",
            description = "estado: activas | terminadas | todas (por defecto: todas)")
    @GetMapping("/process-instances")
    public PageResponse<ProcessInstanceResponse> listarInstancias(
            @RequestParam(required = false) String proceso,
            @RequestParam(defaultValue = "todas") String estado,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return bpmAdminService.listarInstancias(proceso, estado, page, size);
    }

    @Operation(summary = "Obtener detalle de una instancia de proceso (con su solicitud, historial y tareas activas)")
    @GetMapping("/process-instances/{processInstanceId}")
    public ProcessInstanceDetailResponse obtenerInstancia(@PathVariable String processInstanceId) {
        return bpmAdminService.obtenerInstancia(processInstanceId);
    }

    @Operation(summary = "Cancelar una instancia de proceso (si la solicitud está activa se marca como cancelada)")
    @DeleteMapping("/process-instances/{processInstanceId}")
    public String cancelarInstancia(@PathVariable String processInstanceId,
                                    @RequestParam(required = false) String motivo,
                                    Authentication authentication) {
        return bpmAdminService.cancelarInstancia(processInstanceId, motivo, authentication.getName());
    }
}
