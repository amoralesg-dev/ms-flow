package com.rassini.aprobaciones.service;

import com.rassini.aprobaciones.dto.response.PageResponse;
import com.rassini.aprobaciones.dto.response.ProcessDefinitionResponse;
import com.rassini.aprobaciones.dto.response.ProcessInstanceDetailResponse;
import com.rassini.aprobaciones.dto.response.ProcessInstanceResponse;

import java.util.List;

public interface BpmAdminService {

    List<ProcessDefinitionResponse> listarProcesos(String proceso, boolean todasVersiones);

    byte[] obtenerXmlBpmn(String processDefinitionId);

    byte[] generarDiagramaBpmn(String processDefinitionId);

    ProcessDefinitionResponse suspenderProceso(String processDefinitionId, boolean incluirInstancias);

    ProcessDefinitionResponse activarProceso(String processDefinitionId, boolean incluirInstancias);

    PageResponse<ProcessInstanceResponse> listarInstancias(String proceso, String estado, int page, int size);

    ProcessInstanceDetailResponse obtenerInstancia(String processInstanceId);

    String cancelarInstancia(String processInstanceId, String motivo, String username);
}
