prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 275
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(50426075262889745711)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(675348896720886125)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/
