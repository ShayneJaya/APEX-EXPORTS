prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Explore'
,p_alias=>'REPORT'
,p_step_title=>'Explore'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(691720273675489739)
,p_plug_name=>'Breadcrumb'
,p_region_sub_css_classes=>'u-textCenter'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50425901409080745626)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(50425385754904745578)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(50425963940780745653)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(723687239611481960)
,p_plug_name=>'REPORT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50425879212531745617)
,p_plug_display_sequence=>10
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P2_SQL IS NULL THEN',
'RETURN Q''[select',
'       C001,',
'       C002,',
'       C003,',
'       C004,',
'       C005,',
'       N001,',
'       N002,',
'       N003,',
'       N004,',
'       N005,',
'       D001,',
'       D002,',
'       D003,',
'       D004,',
'       D005',
'  from APEX_COLLECTIONS]'';',
'  ELSE RETURN :P2_SQL;',
'  END IF;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P2_VAR_COL_LABEL_1,P2_VAR_COL_LABEL_2,P2_VAR_COL_LABEL_3,P2_VAR_COL_LABEL_4,P2_VAR_COL_LABEL_5,P2_NUM_COL_LABEL_1,P2_NUM_COL_LABEL_2,P2_NUM_COL_LABEL_3,P2_NUM_COL_LABEL_4,P2_NUM_COL_LABEL_5,P2_DATE_COL_LABEL_1,P2_DATE_COL_LABEL_2,P2_DATE_COL_LABEL_3,'
||'P2_DATE_COL_LABEL_4,P2_DATE_COL_LABEL_5,P2_SQL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672488422995250296)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P2_VAR_COL_LABEL_1.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_VAR_COL_LABEL_1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672488589423250297)
,p_name=>'C002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C002'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P2_VAR_COL_LABEL_2.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_VAR_COL_LABEL_2'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672488609236250298)
,p_name=>'C003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C003'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P2_VAR_COL_LABEL_3.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_VAR_COL_LABEL_3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672488735719250299)
,p_name=>'C004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C004'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P2_VAR_COL_LABEL_4.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_VAR_COL_LABEL_4'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672488812507250300)
,p_name=>'C005'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C005'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P2_VAR_COL_LABEL_5.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_VAR_COL_LABEL_5'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672566358964362198)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'&P2_NUM_COL_LABEL_1.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>550
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_NUM_COL_LABEL_1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672566439373362199)
,p_name=>'N002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N002'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'&P2_NUM_COL_LABEL_2.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>560
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_NUM_COL_LABEL_2'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672566594094362200)
,p_name=>'N003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N003'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'&P2_NUM_COL_LABEL_3.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>570
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_NUM_COL_LABEL_3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672566689337362201)
,p_name=>'N004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N004'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'&P2_NUM_COL_LABEL_4.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>580
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_NUM_COL_LABEL_4'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672566789097362202)
,p_name=>'N005'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N005'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'&P2_NUM_COL_LABEL_5.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>590
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_NUM_COL_LABEL_5'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672566891704362203)
,p_name=>'D001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'D001'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'&P2_DATE_COL_LABEL_1.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>600
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_DATE_COL_LABEL_1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672566959658362204)
,p_name=>'D002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'D002'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'&P2_DATE_COL_LABEL_2.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>610
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_DATE_COL_LABEL_2'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672567085363362205)
,p_name=>'D003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'D003'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'&P2_DATE_COL_LABEL_3.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>620
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_DATE_COL_LABEL_3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672567174496362206)
,p_name=>'D004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'D004'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'&P2_DATE_COL_LABEL_4.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>630
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_DATE_COL_LABEL_4'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(672567245584362207)
,p_name=>'D005'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'D005'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'&P2_DATE_COL_LABEL_5.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>640
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P2_DATE_COL_LABEL_5'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(672488117473250293)
,p_internal_uid=>16663213184896630
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(672568822591364942)
,p_interactive_grid_id=>wwv_flow_imp.id(672488117473250293)
,p_static_id=>'167440'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(672569008816364942)
,p_report_id=>wwv_flow_imp.id(672568822591364942)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672571336493364954)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(672488422995250296)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672572277456364957)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(672488589423250297)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672573034091364960)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(672488609236250298)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672573920623364963)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(672488735719250299)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672574892878364966)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(672488812507250300)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672575777729364969)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(672566358964362198)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672576622516364972)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(672566439373362199)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672577515766364974)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(672566594094362200)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672578429374364976)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(672566689337362201)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672579349541364979)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(672566789097362202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672580217310364982)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(672566891704362203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672581178348364985)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(672566959658362204)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672582031102364987)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(672567085363362205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672582975212364990)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(672567174496362206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(672583839754365001)
,p_view_id=>wwv_flow_imp.id(672569008816364942)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(672567245584362207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(672320029179046142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(691720273675489739)
,p_button_name=>'CLOSE_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(50425961608434745652)
,p_button_image_alt=>'Close Report'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(672290570543023905)
,p_name=>'P2_CURRENT_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(672737615083056572)
,p_name=>'P2_SQL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705136793902075617)
,p_name=>'P2_NUM_COL_LABEL_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705136880578075618)
,p_name=>'P2_NUM_COL_LABEL_2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705136981909075619)
,p_name=>'P2_NUM_COL_LABEL_3'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705137081293075620)
,p_name=>'P2_NUM_COL_LABEL_4'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705137159219075621)
,p_name=>'P2_NUM_COL_LABEL_5'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705137269064075622)
,p_name=>'P2_DATE_COL_LABEL_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705137414064075623)
,p_name=>'P2_DATE_COL_LABEL_2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705137475405075624)
,p_name=>'P2_DATE_COL_LABEL_3'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705137558977075625)
,p_name=>'P2_DATE_COL_LABEL_4'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(705137730481075626)
,p_name=>'P2_DATE_COL_LABEL_5'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(726574828089915673)
,p_name=>'P2_COL_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(726873706306311791)
,p_name=>'P2_VAR_COL_LABEL_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(726873817463311792)
,p_name=>'P2_VAR_COL_LABEL_2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(726873916338311793)
,p_name=>'P2_VAR_COL_LABEL_3'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(726874038743311794)
,p_name=>'P2_VAR_COL_LABEL_4'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(726874059814311795)
,p_name=>'P2_VAR_COL_LABEL_5'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(723687239611481960)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(672488017981250292)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Init Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P2_VAR_COL_LABEL_1   := NULL;',
':P2_VAR_COL_LABEL_2   := null;  ',
':P2_VAR_COL_LABEL_3  := null;',
':P2_VAR_COL_LABEL_4  := null;',
':P2_VAR_COL_LABEL_5  := null;',
':P2_NUM_COL_LABEL_1  := null;',
':P2_NUM_COL_LABEL_2  := null;',
':P2_NUM_COL_LABEL_3  := null;',
':P2_NUM_COL_LABEL_4  := null;',
':P2_NUM_COL_LABEL_5  := null;',
':P2_DATE_COL_LABEL_1  := NULL; ',
':P2_DATE_COL_LABEL_2  := NULL; ',
':P2_DATE_COL_LABEL_3  := NULL; ',
':P2_DATE_COL_LABEL_4  := NULL; ',
':P2_DATE_COL_LABEL_5  := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16663113692896629
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(672336859890046156)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fill Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_sql VARCHAR2(4000);',
'    l_cursor_id INTEGER;',
'    l_desc_tab dbms_sql.desc_tab;',
'    l_col_cnt   INTEGER;',
'    l_char_columns varchar2(4000);',
'    l_date_columns varchar2(4000);',
'    l_num_columns varchar2(4000);',
'    l_char_counter number := 0;',
'    l_num_counter number := 0;',
'    l_date_counter number := 0;',
'begin',
'',
' ',
'',
'',
'  SELECT showsql into l_sql from NL2SQL_PROMPTS where id = :P2_CURRENT_ID;',
'',
'   APEX_DEBUG.INFO(''INIT l_sql - ''||l_sql || '' id - ''||:P2_CURRENT_ID);',
'   begin',
'      APEX_COLLECTION.DELETE_COLLECTION(',
'            p_collection_name => ''RESPONSE_REPORT_JARVIS'') ;',
'    exception',
'    when others then ',
'        null;',
'    end;',
'',
'  l_cursor_id := DBMS_SQL.OPEN_CURSOR;',
'  dbms_sql.parse(l_cursor_id, l_sql, dbms_sql.native);',
'  dbms_sql.describe_columns(l_cursor_id, l_col_cnt, l_desc_tab);',
'',
'  :P2_COL_COUNT := l_col_cnt;',
'',
'  FOR i IN 1..l_col_cnt LOOP',
'',
'  IF  l_desc_tab(i).col_type = 1 then -- VARCHAR2',
'    l_char_counter := l_char_counter + 1;',
'    if l_char_counter > 5 then',
'        CONTINUE;',
'    end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P2_VAR_COL_LABEL_''||l_char_counter, l_desc_tab(i).col_name, true); ',
'',
'    l_char_columns := l_char_columns || '',"''||l_desc_tab(i).col_name||''" AS C00''||l_char_counter;',
'',
'  ELSif l_desc_tab(i).col_type = 2 then -- NUMBER',
'    l_num_counter := l_num_counter + 1;',
'    if l_num_counter > 5 then',
'        CONTINUE;',
'    end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P2_NUM_COL_LABEL_''||l_num_counter, l_desc_tab(i).col_name, true); ',
'APEX_DEBUG.INFO(''P2_NUM_COL_LABEL_''||l_num_counter ||''- ''||APEX_UTIL.gET_SESSION_STATE(''P2_NUM_COL_LABEL_''||l_num_counter));',
'    l_num_columns := l_num_columns || '',"''||l_desc_tab(i).col_name ||''" AS N00''||l_num_counter;',
'   ELSif l_desc_tab(i).col_type = 12 then -- DATE',
'    l_date_counter := l_date_counter + 1;',
'     if l_date_counter > 5 then',
'        CONTINUE;',
'    end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P2_DATE_COL_LABEL_''||l_date_counter, l_desc_tab(i).col_name, true); ',
'',
'    l_date_columns := l_date_columns || '',"''||l_desc_tab(i).col_name||''" AS D00''||l_date_counter;',
'',
'  END IF;',
'',
'  ',
'',
'  ',
'  end loop;',
'',
'  ',
'',
'  if l_num_counter < 5 then ',
'    for i in l_num_counter +1..5 loop',
'        l_num_columns := l_num_columns ||'',null AS N00''||i;',
'    end loop;',
'  end if;',
'',
' if l_date_counter < 5 then ',
'    for i in l_date_counter+1..5 loop',
'        l_date_columns := l_date_columns ||'',null AS D00''||i;',
'    end loop;',
'  end if;',
'',
'',
'',
'  IF INSTR(l_CHAR_columns, '','') = 1 THEN ',
'    l_CHAR_columns := SUBSTR(l_CHAR_columns, 2);',
'  END IF;',
'',
'  IF INSTR(l_num_columns, '','') = 1 THEN ',
'    l_num_columns := SUBSTR(l_num_columns, 2);',
'  END IF;',
'',
' IF INSTR(l_date_columns, '','') = 1 THEN ',
'    l_date_columns := SUBSTR(l_date_columns, 2);',
'  END IF;',
'',
'',
'  APEX_DEBUG.INFO(''l_date_columns - ''||l_date_columns);',
'  APEX_DEBUG.INFO(''l_num_columns - ''||l_num_columns);',
'  APEX_DEBUG.INFO(''l_CHAR_columns - ''||l_CHAR_columns);',
'',
' ',
'  l_sql := ''SELECT '' || l_num_columns||',
'  (CASE WHEN l_date_columns is not null then '' , ''||l_date_columns',
'    else null end )||(CASE WHEN l_char_columns is not null then '' , ''||l_char_columns',
'    else null end ) ||'' FROM (''||l_sql||'' )'';',
'',
'  APEX_DEBUG.INFO(''l_sql - ''||l_sql);',
'',
'--   APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY2 (',
'--         p_collection_name => ''RESPONSE_REPORT_JARVIS'', ',
'--         p_query => l_sql,',
'--         p_generate_md5 => ''NO'');',
'',
':P2_SQL := l_sql;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16511955601692493
);
wwv_flow_imp.component_end;
end;
/
