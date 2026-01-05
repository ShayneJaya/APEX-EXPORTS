prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'ADBChat'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#speechRecognition#MIN#.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Container Flex */',
'.t-Body-mainContent,',
'.t-Body-contentInner,',
'.t-Body-contentInner > .container,',
'.t-Body-contentInner > .container > .row,',
'.t-Body-contentInner > .container > .row > .col,',
'#PROMPTS,',
'#PROMPTS_TemplateComponent {',
'  display: flex;',
'  flex-grow: 1;',
'  flex-direction: column;',
'}',
'',
'.t-Body-mainContent {',
'  overflow: clip;',
'}',
'',
'.t-Body-contentInner {',
'  padding: 0;',
'}',
'',
'#PROMPTS_TemplateComponent {',
'  flex-shrink: 1;',
'}',
'',
'',
'/* Hide Footer */',
'.t-Footer {',
'  --ut-footer-padding-y: .5rem;',
'}',
'',
'.t-Footer-top,',
'.t-Footer-body {',
'  display: none;',
'}',
'',
'/* Prompt */',
'.a-TMV-altMessage {',
'  justify-content: center;',
'  display: flex;',
'  flex-direction: column;',
'}',
'',
'.a-TMV-altMessage-icon {',
'  display: none;',
'}',
'',
'',
'/* Question */',
'.sticky-Footer {',
'  --ut-field-padding-y: 0rem;',
'  --ut-field-padding-x: 0rem;',
'',
'  position: sticky;',
'  inset-inline: 0;',
'  inset-block-end: 0;',
'  background-color: #eeeae7;',
'  border-block-start: 1px solid #e6e6e6;',
'  flex-shrink: 0;',
'  flex-grow: 0;',
'}',
'',
'.sticky-Footer .t-Button--icon {',
'  --a-button-padding-y: .625rem;',
'  --a-button-icon-size: 1.5rem;',
'}',
'',
'.sticky-Footer .t-Button--icon .t-Icon {',
'  min-inline-size: var(--a-button-line-height, 1rem);',
'}',
'',
'.llm-recording {',
'  pointer-events: auto !important;',
'  cursor: pointer;',
'}',
'',
'.llm-recording:after {',
'  content: '''';',
'  display: block;',
'  position: absolute;',
'  block-size: 2rem;',
'  inline-size: 2rem;',
'  border-radius: .25rem;',
'}',
'',
'.llm-recording:hover:after {',
'  background-color: rgba(0, 0, 0, .1);',
'}'))
,p_step_template=>wwv_flow_imp.id(50425412305566745589)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(485129918067903642)
,p_plug_name=>'HELP'
,p_title=>'Help Information'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(50425873834458745614)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>This is useful stuff to know</h2>',
'<p>',
'You should ask smart questions.',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675767945120140804)
,p_plug_name=>'Prompts'
,p_region_name=>'PROMPTS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50425423836113745595)
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       CONV_ID,',
'       PROMPT,',
'       RESPONSE,',
'       ASKED_ON,',
'       SHOWSQL,',
'       (case when RESPONSE is not null then ''CHAT'' ELSE NULL END) RESPONSE_TYPE,',
'       FEEDBACK,',
'       FEEDBACK_COMMENTS',
'  from NL2SQL_PROMPTS',
' where CONV_ID = :P1_CONV_ID',
' order by ASKED_ON'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_LLM_CONVERSATION'
,p_ajax_items_to_submit=>'P1_CONV_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'Welcome to the conversation!'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'ID', 'ID',
  'PROMPT', 'PROMPT',
  'RESPONSE_TYPE', 'RESPONSE_TYPE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(568334792739349369)
,p_name=>'FEEDBACK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:+;+,-;-'
,p_lov_display_extra=>true
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(568335089118349372)
,p_name=>'FEEDBACK_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK_COMMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(668795882559955411)
,p_name=>'RESPONSE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(675768050054140805)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(675768140050140806)
,p_name=>'CONV_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONV_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(675768260450140807)
,p_name=>'PROMPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(675768290225140808)
,p_name=>'RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(675768393518140809)
,p_name=>'SHOWSQL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOWSQL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(675768551887140810)
,p_name=>'ASKED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASKED_ON'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48873952618707404632)
,p_plug_name=>'Question'
,p_parent_plug_id=>wwv_flow_imp.id(675767945120140804)
,p_region_css_classes=>'sticky-Footer padding-md'
,p_region_template_options=>'#DEFAULT#:t-ItemContainer--alignStart'
,p_plug_template=>wwv_flow_imp.id(50425881349929745617)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48873952437089404630)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(48873952618707404632)
,p_button_name=>'RUN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(50425961608434745652)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Run'
,p_button_position=>'BUTTON_END'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(485130043139903643)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(48873952618707404632)
,p_button_name=>'Help'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(50425962304834745652)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Help'
,p_button_position=>'BUTTON_END'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(672756859233194792)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P1_CONV_ID:&P1_CONV_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(670004424755317886)
,p_branch_action=>'f?p=&APP_ID.:20020:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'OPEN_AI_SETTINGS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(485130367945903646)
,p_name=>'P1_HELP_INFO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48873952618707404632)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Useful Info</h2>',
'<p>',
'Ask smart questions.',
'<br/>',
'Click Help to see this information again.',
'</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(668795974584955412)
,p_name=>'P1_ASK_ADB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48873952618707404632)
,p_item_default=>'T'
,p_prompt=>'Pick your response style:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Tabular;T,Conversational;C'
,p_field_template=>wwv_flow_imp.id(50425959776795745651)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'By checking this box, your app will utilize your business data to provide answers to your questions. Uncheck this box to search the internet for general information.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(672756103079194785)
,p_name=>'P1_CONV_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48873952272193404629)
,p_name=>'P1_PROMPT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48873952618707404632)
,p_prompt=>'Prompt'
,p_placeholder=>'Ask a question'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_field_template=>wwv_flow_imp.id(50425959522190745650)
,p_item_icon_css_classes=>'fa-microphone llm-recording'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(670004219371317884)
,p_name=>'Open AI Settings'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return APEX_UTIL.GET_PREFERENCE(       ',
'         p_preference => ''CLOUD_AI_PROFILE'',',
'            p_user       => :APP_USER) is null;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(670004307107317885)
,p_event_id=>wwv_flow_imp.id(670004219371317884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'OPEN_AI_SETTINGS'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(485130177598903644)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(485130043139903643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(485130260215903645)
,p_event_id=>wwv_flow_imp.id(485130177598903644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(485129918067903642)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(672756282786194786)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create a Conversation'
,p_process_sql_clob=>'INSERT INTO NL2SQL_CONVERSATIONS (USERNAME, STARTED_ON) VALUES (:APP_USER, SYSTIMESTAMP) returning id into :P1_CONV_ID;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P1_CONV_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_required_patch=>wwv_flow_imp.id(50425385084086745578)
,p_internal_uid=>7968697490642105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677457168077758286)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AI Call'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response clob;',
'    l_response_save clob;',
'    l_sql clob;',
'    l_has_summary number;',
'    l_prompt varchar2(32767);',
'    l_uses_vector_index number;',
'    l_cursor NUMBER := dbms_sql.open_cursor;',
'    --l_profile_temp varchar2(4000);',
'    --l_profile_name clob;',
'    l_summary varchar2(32767);',
'   l_profile_name user_cloud_ai_profiles.profile_name%type := lower(APEX_UTIL.GET_PREFERENCE(       ',
'         p_preference => ''CLOUD_AI_PROFILE'',',
'            p_user       => :APP_USER));',
'begin',
'',
'-- derive profile',
'/* l_profile_temp := ''There are five AI profiles.  They are: 1 - GRAPH_PROFILE.  This is used for graph queries.  2 - GENAI_GRAPH.  This is also used for graph queries. 3 - MEDICAL.  This is used for medical queries.  4 - OCI_LLAMA_INSTRUCT_NL2SQL.  '
||'This is used for queries about movies.  5 - OCI_LLAMA_INSTRUCT_SCHOOLS.  This is used for school queries.'';',
'',
'l_profile_name := dbms_cloud_ai.generate(',
'prompt => ''The following are AI profiles. ''||l_profile_temp||'' select and return ONLY the profile name based on how it matches to this prompt: ''||:P1_PROMPT,',
'action => ''chat'',',
'profile_name => ''OCI_LLAMA_INSTRUCT_NL2SQL''',
');',
'            ',
'l_profile_name :=rtrim(l_profile_name); */',
'',
'-- question about customer data',
'',
'-- generate the sql ',
'    l_sql := dbms_cloud_ai.generate(',
'        prompt => lower(:P1_PROMPT),',
'        action => ''showsql'',',
'        profile_name => l_profile_name,',
'        params => ''{"conversation_id":"''||:p1_conv_id||''"}''',
'                );',
'',
'if :P1_ASK_ADB = ''T'' then',
'            ',
'    -- check if SQL could be generated.',
'    -- if not, then return the response ',
'        BEGIN',
'        DBMS_SQL.PARSE (l_cursor, l_sql, DBMS_SQL.native);',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'        l_response := l_sql;',
'        END;',
'',
'        -- generate response',
'        l_response_save := dbms_cloud_ai.generate(',
'        prompt => lower(:P1_PROMPT),',
'        action => ''runsql'',',
'        profile_name => l_profile_name,',
'        params => ''{"conversation_id":"''||:p1_conv_id||''"}''',
'            );',
'',
'end if;   ',
'',
'if  :P1_ASK_ADB = ''C'' then    ',
'',
'    -- general chat',
'        l_response := dbms_cloud_ai.generate(',
'        prompt => lower(:P1_PROMPT),',
'        action => ''narrate'',',
'        profile_name => l_profile_name,',
'        params => ''{"conversation_id":"''||:p1_conv_id||''"}''',
'            );',
'       ',
'end if;',
'',
'insert into NL2SQL_PROMPTS (conv_id, prompt, response, tabular_response, asked_on, showsql,profile) ',
'values (:p1_conv_id, :p1_prompt, l_response, l_response_save, systimestamp, l_sql,l_profile_name);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12669582782205605
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(485130500224903648)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Conversation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_id varchar2(4000);',
'begin',
'SELECT DBMS_CLOUD_AI.CREATE_CONVERSATION into l_id;',
'INSERT INTO NL2SQL_CONVERSATIONS (ID, USERNAME, STARTED_ON) VALUES (l_id, :APP_USER, SYSTIMESTAMP);',
'insert into NL2SQL_PROMPTS (conv_id, prompt, response, asked_on) ',
'    values (l_id, ''Chat Interface Instructions'', ''<ul><li>step 1</li><li>step 2</li><li>step 3</li><li>change instructions pre-rending page 1</li></ul>'', systimestamp);',
':P1_CONV_ID := l_id;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P1_CONV_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>12253211335584107
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(568334830732349370)
,p_region_id=>wwv_flow_imp.id(675767945120140804)
,p_position_id=>wwv_flow_imp.id(675978032144483666)
,p_display_sequence=>30
,p_label=>'Feedback'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_ID:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(675769196721140817)
,p_region_id=>wwv_flow_imp.id(675767945120140804)
,p_position_id=>wwv_flow_imp.id(675978032144483666)
,p_display_sequence=>10
,p_label=>'Explore'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR,2:P2_CURRENT_ID:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'ITEM_IS_NOT_NULL'
,p_condition_expr1=>'SHOWSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(675769384892140818)
,p_region_id=>wwv_flow_imp.id(675767945120140804)
,p_position_id=>wwv_flow_imp.id(675978032144483666)
,p_display_sequence=>20
,p_label=>'Explain'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_CURRENT_ID:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'ITEM_IS_NOT_NULL'
,p_condition_expr1=>'SHOWSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp.component_end;
end;
/
