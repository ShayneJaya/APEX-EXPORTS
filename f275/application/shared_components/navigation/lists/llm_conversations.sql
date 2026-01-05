prompt --application/shared_components/navigation/lists/llm_conversations
begin
--   Manifest
--     LIST: LLM Conversations
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(674550474054659102)
,p_name=>'LLM Conversations'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1, ',
'    summary,',
'    APEX_PAGE.GET_URL(p_page => 1, p_items => ''P1_CONV_ID'', P_values => id), ',
'    case when :P1_CONV_ID = id then ''Y''else ''N'' end , ',
'    ''fa fa-comment-o'' as image from NL2SQL_CONVERSATIONS ',
'where ',
'    username = :app_user ',
'        and summary is not null order by STARTED_ON desc;'))
,p_list_status=>'PUBLIC'
,p_version_scn=>42206185482406
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(568356446996091419)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Comment History'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp.component_end;
end;
/
