prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>275
,p_default_id_offset=>80028336778020283
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Explain'
,p_alias=>'EXPLAIN'
,p_step_title=>'Explain'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pre {',
'  white-space: pre-wrap;',
'  white-space: -moz-pre-wrap;',
'  white-space: -pre-wrap;',
'  white-space: -o-pre-wrap;',
'  word-wrap: break-word;',
'  font-family: inherit;',
'  font-size: inherit;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(672016863161213138)
,p_plug_name=>'Breadcrumb'
,p_region_sub_css_classes=>'u-textCenter'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50425901409080745626)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(50425385754904745578)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(50425963940780745653)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(672567595136362210)
,p_plug_name=>'SQL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(50425889043852745621)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-12 col-sm-12 col-md-12'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675599390264552184)
,p_plug_name=>'Explanation'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(50425422380604745594)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-12 col-sm-12 col-md-12'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_explanation clob;',
'    l_uses_vector_index number;',
'    l_return clob;',
'    l_prompt clob;',
'    l_showsql NL2SQL_PROMPTS.showsql%type;',
'    l_profile_name user_cloud_ai_profiles.profile_name%type := lower(APEX_UTIL.GET_PREFERENCE(       ',
'         p_preference => ''CLOUD_AI_PROFILE'',',
'            p_user       => :APP_USER));',
'begin',
'',
'',
'    SELECT SHOWSQL into l_showsql FROM NL2SQL_PROMPTS WHERE ID = :P3_CURRENT_ID;',
'    SELECT PROMPT  into l_prompt FROM NL2SQL_PROMPTS WHERE ID = :P3_CURRENT_ID;',
'',
'    -- You can''t get an explanation if the current model was changed to Vector Search',
'    SELECT count(*) ',
'    INTO l_uses_vector_index',
'    FROM user_cloud_ai_profile_attributes',
'    WHERE upper(profile_name) =  upper(l_profile_name)',
'      AND upper(attribute_name) = ''VECTOR_INDEX_NAME'';',
'',
'',
'    if l_uses_vector_index > 0 then',
'        l_return := ''<h3>Explanation: </h3><div><pre>',
'        Unable to generate an explanation.</pre></div>'';',
'',
'    else',
'        l_return := ''<h3>Explanation: </h3><div><pre>''||',
'            dbms_cloud_ai.generate(',
'                prompt => l_prompt,',
'                action => ''explainsql'',',
'                profile_name => l_profile_name)',
'        ||''</pre></div>'';',
'    ',
'    end if;',
'    ',
'    return l_return;',
'    ',
'',
'end;'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P3_CURRENT_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(672018368251218200)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(672567595136362210)
,p_button_name=>'COPY_SQL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(50425962304834745652)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy SQL'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(670007064343317912)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(672016863161213138)
,p_button_name=>'CLOSE_SQL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(50425961608434745652)
,p_button_image_alt=>'Close SQL'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(670006895628317910)
,p_name=>'P3_CURRENT_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(672017590145216284)
,p_name=>'P3_SQL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(672567595136362210)
,p_use_cache_before_default=>'NO'
,p_source=>'SELECT SHOWSQL FROM NL2SQL_PROMPTS WHERE ID = :P3_CURRENT_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'PLUGIN_COM.APEXBYG.BLOGSPOT.CODEMIRROR'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(50425959776795745651)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(672567770618362212)
,p_validation_name=>'Check Valid SQL'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor NUMBER := dbms_sql.open_cursor;',
'BEGIN',
'            DBMS_SQL.PARSE (l_cursor, :P3_SQL, DBMS_SQL.native);',
'            return null;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                return sqlerrm;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(485130603070903649)
,p_name=>'Copy SQL Button'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(672018368251218200)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(485130695054903650)
,p_event_id=>wwv_flow_imp.id(485130603070903649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let str = apex.item("P3_SQL").getValue();',
'navigator.clipboard.writeText(str);',
'apex.message.showPageSuccess(''Code copied to Clipboard!'');'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(672567478283362209)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update SQL'
,p_process_sql_clob=>'update NL2SQL_PROMPTS set showsql = REPLACE(:P3_SQL,'';'') where id = :P3_CURRENT_ID;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'SQL Updated'
,p_required_patch=>wwv_flow_imp.id(50425385084086745578)
,p_internal_uid=>16742573995008546
);
wwv_flow_imp.component_end;
end;
/
