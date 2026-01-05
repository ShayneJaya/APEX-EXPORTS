prompt --workspace/credentials/cohere_api_key
begin
--   Manifest
--     CREDENTIAL: Cohere API Key
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
 p_id=>wwv_flow_imp.id(50860152353890698489)
,p_name=>'Cohere API Key'
,p_static_id=>'COHERE_API_KEY'
,p_authentication_type=>'HTTP_HEADER'
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
