prompt --application/shared_components/logic/application_processes/get_response
begin
--   Manifest
--     APPLICATION PROCESS: GET_RESPONSE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(675185366496382625)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_RESPONSE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_response NL2SQL_PROMPTS.response%type;',
'begin',
'    -- This script retrieves a response text from NL2SQL_PROMPTS table based on a provided ID',
'    -- and returns it as JSON for display in the conversation UI.',
'    apex_json.open_object;',
'    apex_json.write(''id'', apex_application.g_x01);',
'    ',
'    begin',
'        select response into l_response from NL2SQL_PROMPTS where id = apex_application.g_x01;',
'        apex_json.write(''response'', l_response);',
'        apex_json.write(''success'', true);',
'    exception',
'        when no_data_found then',
'            apex_debug.error(''Critical error %s'', ''No response found for ID '' || apex_application.g_x01);',
'            apex_json.write(''success'', false);',
'            apex_json.write(''error'', ''No response found for ID '' || apex_application.g_x01);',
'        when others then',
'            apex_debug.error(''Critical error %s'', ''Unexpected error while fetching response for ID '' || apex_application.g_x01 || '': '' || SQLERRM);',
'            apex_json.write(''success'', false);',
'            apex_json.write(''error'', ''Unexpected error: '' || SQLERRM);',
'    end;',
'    ',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>45964105560323
);
wwv_flow_imp.component_end;
end;
/
