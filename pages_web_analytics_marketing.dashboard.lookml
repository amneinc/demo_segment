- dashboard: website_analytics_marketing
  title: 'Website Analytics: Marketing'
  layout: newspaper
  elements:
  - title: Nr of page views landing /free-offer (4th mailer cmpg)
    name: Nr of page views landing /free-offer (4th mailer cmpg)
    model: pages
    explore: pages
    type: single_value
    fields:
    - pages.count
    - pages.url
    filters:
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-34.224.137.241,-104.178.173.209,-50.250.201.162,-24.155.225.98,-98.250.201.162,-71.78.12.90"
      pages.url: https://www.amne.co/free-offer
    sorts:
    - pages.count desc
    limit: 500
    column_limit: 50
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
      Date Requested: pages.received_date
    row: 0
    col: 0
    width: 9
    height: 6
  - title: Mailers Conversion Funnel
    name: Mailers Conversion Funnel
    model: pages
    explore: pages
    type: looker_column
    fields:
    - pages.Conversion_steps
    - pages.count
    filters:
      4th_mailer.address1: "-NULL"
      pages.Conversion_steps: "-NULL"
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-104.178.173.209,-50.250.201.162,-24.155.225.98,-34.224.137.241,-71.78.12.90"
    sorts:
    - pages.Conversion_steps
    limit: 500
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
    listen:
      Date Requested: pages.received_date
    row: 6
    col: 0
    width: 24
    height: 8
  - title: Nr of page views landing /get-offer (5th mailer cmpg)
    name: Nr of page views landing /get-offer (5th mailer cmpg)
    model: pages
    explore: pages
    type: single_value
    fields:
    - pages.count
    - pages.url
    filters:
      pages.context_ip: "-70.112.199.42,-71.78.45.242,-34.224.137.241,-104.178.173.209,-50.250.201.162,-24.155.225.98,-98.250.201.162,-71.78.12.90"
      pages.url: https://www.amne.co/get-offer
      pages.received_date: 7 days
    sorts:
    - pages.count desc
    limit: 500
    column_limit: 50
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
    row: 0
    col: 9
    width: 9
    height: 6
  filters:
  - name: Date Requested
    title: Date Requested
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
