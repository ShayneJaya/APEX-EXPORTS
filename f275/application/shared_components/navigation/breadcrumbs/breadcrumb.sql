prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(50425385754904745578)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(568357342142091446)
,p_short_name=>'User Comment History - ADMIN'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_security_scheme=>wwv_flow_imp.id(50426074923277745710)
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(568387866244232022)
,p_short_name=>'User Comment History'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(50425385938053745578)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
