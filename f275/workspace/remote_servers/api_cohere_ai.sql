prompt --workspace/remote_servers/api_cohere_ai
begin
--   Manifest
--     REMOTE SERVER: api-cohere-ai
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(49872669880894972175)
,p_name=>'api-cohere-ai'
,p_static_id=>'api_cohere_ai'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_cohere_ai'),'https://api.cohere.ai/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_cohere_ai'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_cohere_ai'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_cohere_ai'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_cohere_ai'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_cohere_ai'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_cohere_ai'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_cohere_ai'),'')
);
wwv_flow_imp.component_end;
end;
/
