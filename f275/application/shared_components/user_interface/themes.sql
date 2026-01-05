prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 275
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(50426047274471745696)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(670009679892367187)
,p_default_page_template=>wwv_flow_imp.id(50425412305566745589)
,p_default_dialog_template=>wwv_flow_imp.id(50425407162971745587)
,p_error_template=>wwv_flow_imp.id(50425397079074745584)
,p_printer_friendly_template=>wwv_flow_imp.id(50425412305566745589)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(50425397079074745584)
,p_default_button_template=>wwv_flow_imp.id(50425962304834745652)
,p_default_region_template=>wwv_flow_imp.id(50425889043852745621)
,p_default_chart_template=>wwv_flow_imp.id(50425889043852745621)
,p_default_form_template=>wwv_flow_imp.id(50425889043852745621)
,p_default_reportr_template=>wwv_flow_imp.id(50425889043852745621)
,p_default_tabform_template=>wwv_flow_imp.id(50425889043852745621)
,p_default_wizard_template=>wwv_flow_imp.id(50425889043852745621)
,p_default_menur_template=>wwv_flow_imp.id(50425901409080745626)
,p_default_listr_template=>wwv_flow_imp.id(50425889043852745621)
,p_default_irr_template=>wwv_flow_imp.id(50425879212531745617)
,p_default_report_template=>wwv_flow_imp.id(50425927343664745636)
,p_default_label_template=>wwv_flow_imp.id(50425959776795745651)
,p_default_menu_template=>wwv_flow_imp.id(50425963940780745653)
,p_default_calendar_template=>wwv_flow_imp.id(50425964003568745653)
,p_default_list_template=>wwv_flow_imp.id(50425943745664745643)
,p_default_nav_list_template=>wwv_flow_imp.id(50425955564595745649)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(50425955564595745649)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(50425950116972745646)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(50425425202065745595)
,p_default_dialogr_template=>wwv_flow_imp.id(50425422380604745594)
,p_default_option_label=>wwv_flow_imp.id(50425959776795745651)
,p_default_required_label=>wwv_flow_imp.id(50425961083849745651)
,p_default_navbar_list_template=>wwv_flow_imp.id(50425949681253745646)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
