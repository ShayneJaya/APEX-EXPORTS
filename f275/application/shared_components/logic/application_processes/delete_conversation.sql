prompt --application/shared_components/logic/application_processes/delete_conversation
begin
--   Manifest
--     APPLICATION PROCESS: Delete Conversation
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
 p_id=>wwv_flow_imp.id(672550222211313102)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Conversation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM NL2SQL_CONVERSATIONS WHERE ID = :P1_CONV_ID;',
':P1_CONV_ID := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'DELETE_CONVERSATION'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_version_scn=>41042850903695
);
wwv_flow_imp.component_end;
end;
/
