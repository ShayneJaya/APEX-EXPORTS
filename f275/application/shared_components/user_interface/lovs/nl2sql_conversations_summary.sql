prompt --application/shared_components/user_interface/lovs/nl2sql_conversations_summary
begin
--   Manifest
--     NL2SQL_CONVERSATIONS.SUMMARY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(568343404110510892)
,p_lov_name=>'NL2SQL_CONVERSATIONS.SUMMARY'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'NL2SQL_CONVERSATIONS'
,p_return_column_name=>'ID'
,p_display_column_name=>'SUMMARY'
,p_default_sort_column_name=>'SUMMARY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>42205861229375
);
wwv_flow_imp.component_end;
end;
/
