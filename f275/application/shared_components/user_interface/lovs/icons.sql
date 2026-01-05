prompt --application/shared_components/user_interface/lovs/icons
begin
--   Manifest
--     ICONS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(485017088217642246)
,p_lov_name=>'ICONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  return,',
'  display,',
'  case display',
'     when ''Yes'' then ''fa-thumbs-up''',
'     when ''No''  then ''fa-thumbs-down''',
'   end user_icon',
'from icons;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_icon_column_name=>'USER_ICON'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'USER_ICON'
,p_default_sort_direction=>'DESC'
,p_version_scn=>44426608597121
);
wwv_flow_imp.component_end;
end;
/
