- dashboard: website_analytics_conversions
  title: 'Website Analytics: Conversions'
  layout: newspaper
  elements:
  - title: Offer Request Flow Conversion Rate
    name: Offer Request Flow Conversion Rate
    model: pages
    explore: pages
    type: single_value
    fields:
    - pages.count
    - pages.name
    filters:
      pages.name: Request Offer Address,Request Offer Home,Request Offer Sale,Request
        Offer You,Request Offer Confirmation
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-34.224.137.241,-104.178.173.209,-50.250.201.162,-24.155.225.98,-98.250.201.162,-71.78.12.90"
    sorts:
    - pages.count desc
    - pages.name desc
    limit: 500
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: offset(${pages.count},4)*100/offset(${pages.count},0)
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Chicago
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    x_axis_reversed: false
    y_axis_reversed: false
    hidden_fields:
    - pages.count
    - pages.name
    series_types: {}
    value_format: "#.0\\%"
    listen:
      Requested: pages.received_date
    row: 0
    col: 18
    width: 6
    height: 6
  - title: Offer Requests
    name: Offer Requests
    model: pages
    explore: pages
    type: single_value
    fields:
    - pages.count
    - pages.name
    filters:
      pages.name: Request Offer Confirmation
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-34.224.137.241,-104.178.173.209,-50.250.201.162,-24.155.225.98,-98.250.201.162,-71.78.12.90"
    sorts:
    - pages.count desc
    limit: 500
    query_timezone: America/Chicago
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    x_axis_reversed: false
    y_axis_reversed: false
    series_types: {}
    listen:
      Requested: pages.received_date
    row: 6
    col: 0
    width: 6
    height: 8
  - title: Offer Requests Info
    name: Offer Requests Info
    model: pages
    explore: pages
    type: table
    fields:
    - pages.received_date
    - users.address
    - pages.name
    - users.first_name
    - users.last_name
    - users.count
    - pages.device
    filters:
      pages.name: Request Offer Confirmation
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-34.224.137.241,-104.178.173.209,-50.250.201.162,-24.155.225.98,-98.250.201.162,-71.78.12.90"
    sorts:
    - pages.name
    limit: 500
    query_timezone: America/Chicago
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    x_axis_reversed: false
    y_axis_reversed: false
    series_types: {}
    hidden_fields:
    - pages.name
    listen:
      Requested: pages.received_date
    row: 6
    col: 6
    width: 18
    height: 8
  - title: Offer Request Flow Conversions
    name: Offer Request Flow Conversions
    model: pages
    explore: pages
    type: looker_column
    fields:
    - pages.count
    - pages.Conversion_steps
    pivots:
    - pages.Conversion_steps
    filters:
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-34.224.137.241,-104.178.173.209,-50.250.201.162,-24.155.225.98,-98.250.201.162,-71.78.12.90"
      pages.Conversion_steps: "-NULL"
    sorts:
    - pages.count desc 0
    - pages.Conversion_steps
    limit: 500
    column_limit: 50
    query_timezone: America/Chicago
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Requested: pages.received_date
    row: 0
    col: 0
    width: 18
    height: 6
  - title: Requested offers User Device
    name: Requested offers User Device
    model: pages
    explore: pages
    type: looker_pie
    fields:
    - pages.count
    - pages.name
    - pages.device
    filters:
      pages.name: Request Offer Confirmation
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-34.224.137.241,-104.178.173.209,-50.250.201.162,-24.155.225.98,-98.250.201.162,-71.78.12.90"
    sorts:
    - pages.count desc
    limit: 500
    column_limit: 50
    query_timezone: America/Chicago
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    x_axis_reversed: false
    y_axis_reversed: false
    series_types: {}
    hidden_fields:
    - pages.name
    listen:
      Requested: pages.received_date
    row: 14
    col: 0
    width: 12
    height: 6
  - title: Offer Requests User Browser
    name: Offer Requests User Browser
    model: pages
    explore: pages
    type: looker_pie
    fields:
    - pages.count
    - pages.name
    - pages.browser
    filters:
      pages.name: Request Offer Confirmation
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-34.224.137.241,-104.178.173.209,-50.250.201.162,-24.155.225.98,-98.250.201.162,-71.78.12.90"
    sorts:
    - pages.count desc
    limit: 500
    column_limit: 50
    query_timezone: America/Chicago
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_dropoff: true
    x_axis_reversed: false
    y_axis_reversed: false
    series_types: {}
    hidden_fields:
    - pages.name
    series_colors:
      Chrome: "#FA7E16"
      Firefox: "#00D4D5"
    listen:
      Requested: pages.received_date
    row: 14
    col: 12
    width: 12
    height: 6
  filters:
  - name: Requested
    title: Requested
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
