- dashboard: website_analytics_pageview_summary
  title: 'Website Analytics: Pageview Summary'
  layout: newspaper
  query_timezone: query_saved
  elements:
  - title: Total Pageviews
    name: Total Pageviews
    model: pages
    explore: event_facts
    type: single_value
    fields:
    - pages.count_pageviews
    - pages.count_distinct_pageviews
    - pages.avg_page_view_duration_minutes
    - pages.count_visitors
    sorts:
    - pages.count_pageviews desc
    limit: 500
    hidden_fields:
    - pages.count_distinct_pageviews
    - pages.avg_page_view_duration_minutes
    - pages.count_visitors
    custom_color_enabled: false
    show_single_value_title: true
    single_value_title: Total Pageviews
    show_comparison: false
    font_size: medium
    listen:
      Date: pages.received_date
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Distinct Pageviews
    name: Distinct Pageviews
    model: pages
    explore: event_facts
    type: single_value
    fields:
    - pages.count_pageviews
    - pages.count_distinct_pageviews
    - pages.avg_page_view_duration_minutes
    - pages.count_visitors
    sorts:
    - pages.count_distinct_pageviews desc
    limit: 500
    hidden_fields:
    - pages.count_pageviews
    - pages.avg_page_view_duration_minutes
    - pages.count_visitors
    custom_color_enabled: false
    show_single_value_title: true
    single_value_title: Distinct Pageviews
    show_comparison: false
    font_size: medium
    listen:
      Date: pages.received_date
    row: 0
    col: 6
    width: 6
    height: 4
  - title: User Count
    name: User Count
    model: pages
    explore: event_facts
    type: single_value
    fields:
    - pages.count_pageviews
    - pages.count_distinct_pageviews
    - pages.avg_page_view_duration_minutes
    - pages.count_visitors
    sorts:
    - pages.count_visitors desc
    limit: 500
    hidden_fields:
    - pages.count_pageviews
    - pages.count_distinct_pageviews
    - pages.avg_page_view_duration_minutes
    custom_color_enabled: false
    show_single_value_title: true
    single_value_title: User Count
    show_comparison: false
    font_size: medium
    listen:
      Date: pages.received_date
    row: 0
    col: 18
    width: 6
    height: 4
  - title: Average Pageview Minutes
    name: Average Pageview Minutes
    model: pages
    explore: event_facts
    type: single_value
    fields:
    - pages.count_pageviews
    - pages.count_distinct_pageviews
    - pages.avg_page_view_duration_minutes
    - pages.count_visitors
    sorts:
    - pages.avg_page_view_duration_minutes desc
    limit: 500
    hidden_fields:
    - pages.count_pageviews
    - pages.count_distinct_pageviews
    - pages.count_visitors
    custom_color_enabled: false
    show_single_value_title: true
    single_value_title: Average Pageview Minutes
    show_comparison: false
    font_size: medium
    listen:
      Date: pages.received_date
    row: 0
    col: 12
    width: 6
    height: 4
  - title: Daily Page Views
    name: Daily Page Views
    model: pages
    explore: event_facts
    type: looker_line
    fields:
    - pages.received_date
    - pages.count_pageviews
    - pages.count_distinct_pageviews
    sorts:
    - pages.received_date desc
    limit: 500
    stacking: ''
    colors:
    - "#446c80"
    - "#00b2d8"
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    listen:
      Date: pages.received_date
    row: 4
    col: 0
    width: 12
    height: 8
  - title: Page Views by Type
    name: Page Views by Type
    model: pages
    explore: event_facts
    type: looker_column
    fields:
    - pages.name
    - pages.count_pageviews
    filters:
      page_facts.is_last_page: 'Yes'
      pages.name: "-NULL"
    sorts:
    - pages.count_pageviews desc
    limit: 10
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
    colors:
    - 'palette: Default'
    value_labels: legend
    series_types: {}
    series_colors: {}
    listen:
      Date: pages.received_date
    row: 4
    col: 12
    width: 12
    height: 8
  - title: Page Stats
    name: Page Stats
    model: pages
    explore: event_facts
    type: table
    fields:
    - pages.avg_page_view_duration_minutes
    - pages.count_distinct_pageviews
    - pages.count_pageviews
    - pages.count_visitors
    - pages.name
    filters:
      pages.avg_page_view_duration_minutes: NOT NULL
      pages.name: ''
    sorts:
    - pages.count_distinct_pageviews desc
    limit: 500
    query_timezone: America/Chicago
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false
    listen:
      Date: pages.received_date
    row: 12
    col: 0
    width: 24
    height: 8
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
