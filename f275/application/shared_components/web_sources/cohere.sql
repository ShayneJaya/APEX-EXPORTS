prompt --application/shared_components/web_sources/cohere
begin
--   Manifest
--     WEB SOURCE: Cohere
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
 p_id=>wwv_flow_imp.id(50427371838539766351)
,p_name=>'Cohere'
,p_static_id=>'cohere'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(50427370727855766346)
,p_remote_server_id=>wwv_flow_imp.id(49872669880894972175)
,p_url_path_prefix=>'/v1/generate'
,p_credential_id=>wwv_flow_imp.id(50860152353890698489)
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
,p_version_scn=>41807807648974
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(50427372031797766351)
,p_web_src_module_id=>wwv_flow_imp.id(50427371838539766351)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(50427372408316766353)
,p_web_src_module_id=>wwv_flow_imp.id(50427371838539766351)
,p_operation=>'POST'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'      "model": "command",',
'      "prompt": "#PROMPT#",',
'      "max_tokens": 300,',
'      "temperature": 0.9,',
'      "k": 0,',
'      "stop_sequences": [],',
'      "return_likelihoods": "NONE"',
'    }'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(50429132447872771920)
,p_web_src_module_id=>wwv_flow_imp.id(50427371838539766351)
,p_web_src_operation_id=>wwv_flow_imp.id(50427372408316766353)
,p_name=>'PROMPT'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(50430671775670776713)
,p_web_src_module_id=>wwv_flow_imp.id(50427371838539766351)
,p_web_src_operation_id=>wwv_flow_imp.id(50427372408316766353)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(50430681751154777794)
,p_web_src_module_id=>wwv_flow_imp.id(50427371838539766351)
,p_web_src_operation_id=>wwv_flow_imp.id(50427372408316766353)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(50427372862127766354)
,p_web_src_module_id=>wwv_flow_imp.id(50427371838539766351)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(50427373220331766354)
,p_web_src_module_id=>wwv_flow_imp.id(50427371838539766351)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
