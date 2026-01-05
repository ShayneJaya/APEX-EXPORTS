prompt --application/shared_components/logic/application_processes/get_sql_results
begin
--   Manifest
--     APPLICATION PROCESS: GET_SQL_RESULTS
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
 p_id=>wwv_flow_imp.id(678547334763919788)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SQL_RESULTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_context apex_exec.t_context;',
'    l_sql VARCHAR2(4000);',
'begin',
'    -- This script retrieves a SQL query from NL2SQL_PROMPTS table based on a provided ID,',
'    -- executes it with a limit of 10 rows, and returns the results as JSON for display in the conversation UI.',
'    apex_json.open_object;',
'    apex_json.write(''id'', apex_application.g_x01);',
'    ',
'    begin',
'        SELECT showsql into l_sql from NL2SQL_PROMPTS where id= apex_application.g_x01;',
'    exception',
'        when no_data_found then',
'            apex_debug.error(''Critical error %s'', ''No SQL query found for ID '' || apex_application.g_x01);',
'            apex_json.write(''success'', false);',
'            apex_json.write(''error'', ''No SQL query found for ID '' || apex_application.g_x01);',
'            apex_json.close_object;',
'            return;',
'        when others then',
'            apex_debug.error(''Critical error %s'', ''Unexpected error while fetching SQL query for ID '' || apex_application.g_x01 || '': '' || SQLERRM);',
'            apex_json.write(''success'', false);',
'            apex_json.write(''error'', ''Unexpected error fetching SQL query: '' || SQLERRM);',
'            apex_json.close_object;',
'            return;',
'    end;',
'    ',
'    begin',
'        l_context := apex_exec.open_query_context( ',
'                         p_location   => apex_exec.c_location_local_db,',
'                         p_sql_query  => l_sql,',
'                         p_max_rows => 10,',
'                         p_total_row_count => true);',
'        apex_json.write(''success'', true);',
'        apex_json.write(''totalRowCount'', apex_exec.get_total_row_count(l_context));',
'        apex_json.write_context(p_name => ''results'', p_context => l_context, p_write_null => true);',
'    exception',
'        when others then',
'            apex_debug.error(''Critical error %s'', ''Error executing SQL query for ID '' || apex_application.g_x01 || '': '' || SQLERRM);',
'            apex_json.write(''success'', false);',
'            apex_json.write(''error'', ''Error executing SQL query: '' || SQLERRM);',
'    end;',
'    ',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>45964105711867
);
wwv_flow_imp.component_end;
end;
/
