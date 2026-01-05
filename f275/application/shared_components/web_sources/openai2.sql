prompt --application/shared_components/web_sources/openai2
begin
--   Manifest
--     WEB SOURCE: OpenAI2
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(674569924609890577)
,p_name=>'OpenAI2'
,p_static_id=>'openai2'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(674568491479890571)
,p_remote_server_id=>wwv_flow_imp.id(119857388696028815)
,p_url_path_prefix=>'v1/completions'
,p_credential_id=>wwv_flow_imp.id(119857049246028812)
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
,p_version_scn=>41807807648911
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(674570548431890582)
,p_web_src_module_id=>wwv_flow_imp.id(674569924609890577)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(674570162606890579)
,p_web_src_module_id=>wwv_flow_imp.id(674569924609890577)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'"prompt":"#PROMPT#", "model":"text-davinci-003", "temperature":0.7,"max_tokens":2000',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
