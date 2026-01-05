prompt --workspace/credentials/credentials_for_openai
begin
--   Manifest
--     CREDENTIAL: Credentials for OpenAI
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(119857049246028812)
,p_name=>'Credentials for OpenAI'
,p_static_id=>'credentials_for_openai'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.openai.com/',
''))
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
