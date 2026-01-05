prompt --application/shared_components/security/app_access_control/admin
begin
--   Manifest
--     ACL ROLE: ADMIN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(568548659088465849)
,p_static_id=>'ADMIN'
,p_name=>'ADMIN'
,p_version_scn=>42206211724655
);
wwv_flow_imp.component_end;
end;
/
