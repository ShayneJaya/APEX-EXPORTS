prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 275
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(675349082392886132)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>41042850909753
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(675349381906886137)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>41042850909756
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(50425385084086745578)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>41042850909756
);
wwv_flow_imp.component_end;
end;
/
