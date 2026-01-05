prompt --workspace/remote_servers/api_openai_com
begin
--   Manifest
--     REMOTE SERVER: api-openai-com
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
 p_id=>wwv_flow_imp.id(119857388696028815)
,p_name=>'api-openai-com'
,p_static_id=>'api_openai_com'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_openai_com'),'https://api.openai.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_openai_com'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_openai_com'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_openai_com'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_openai_com'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_openai_com'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_openai_com'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_openai_com'),'')
);
wwv_flow_imp.component_end;
end;
/
