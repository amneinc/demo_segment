- dashboard: website_analytics_sessions_overview
  title: 'Website Analytics: Sessions Overview'
  layout: newspaper
  elements:
  - title: Total Sessions
    name: Total Sessions
    model: tracks
    explore: sessions_trk
    type: single_value
    fields:
    - sessions_trk.count
    sorts:
    - sessions_trk.count desc
    limit: 500
    listen:
      Date: sessions_trk.start_date
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Distinct Visitors
    name: Distinct Visitors
    model: tracks
    explore: sessions_trk
    type: single_value
    fields:
    - sessions_trk.count_visitors
    sorts:
    - sessions_trk.count_visitors desc
    limit: 500
    listen:
      Date: sessions_trk.start_date
    row: 0
    col: 6
    width: 6
    height: 4
  - title: Average Sessions Per User
    name: Average Sessions Per User
    model: tracks
    explore: sessions_trk
    type: single_value
    fields:
    - sessions_trk.avg_sessions_per_user
    sorts:
    - sessions_trk.avg_sessions_per_user desc
    limit: 500
    font_size: medium
    listen:
      Date: sessions_trk.start_date
    row: 0
    col: 12
    width: 6
    height: 4
  - title: Average Session Duration (min)
    name: Average Session Duration (min)
    model: tracks
    explore: sessions_trk
    type: single_value
    fields:
    - sessions_trk.avg_session_duration_minutes
    sorts:
    - sessions_trk.avg_session_duration_minutes desc
    limit: 500
    font_size: medium
    listen:
      Date: sessions_trk.start_date
    row: 0
    col: 18
    width: 6
    height: 4
  - title: Daily Session Count - Bounce Analysis
    name: Daily Session Count - Bounce Analysis
    model: tracks
    explore: sessions_trk
    type: looker_area
    fields:
    - session_trk_facts.is_bounced_session
    - sessions_trk.start_date
    - sessions_trk.count
    pivots:
    - session_trk_facts.is_bounced_session
    sorts:
    - sessions_trk.count desc 0
    - session_trk_facts.is_bounced_session
    limit: 500
    colors:
    - 'palette: Default'
    show_null_points: true
    stacking: normal
    show_value_labels: false
    show_view_names: true
    x_axis_scale: auto
    x_axis_label_rotation: -45
    point_style: none
    interpolation: linear
    series_colors: {}
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: sessions_trk.start_date
    row: 4
    col: 0
    width: 12
    height: 8
  - title: Bounced Session Percentage
    name: Bounced Session Percentage
    model: tracks
    explore: sessions_trk
    type: looker_pie
    fields:
    - session_trk_facts.is_bounced_session
    - sessions_trk.count
    sorts:
    - sessions_trk.count desc
    limit: 500
    colors: 'palette: Default'
    show_null_points: true
    stacking: normal
    series_colors:
      'Yes': "#005589"
      'No': "#99E9BD"
    series_labels:
      'Yes': 'Yes'
      'No': 'No'
    listen:
      Date: sessions_trk.start_date
    row: 4
    col: 12
    width: 12
    height: 8
  - title: Daily Sessions by New Users
    name: Daily Sessions by New Users
    model: tracks
    explore: sessions_trk
    type: looker_area
    fields:
    - sessions_trk.start_date
    - sessions_trk.is_first_session
    - sessions_trk.count
    pivots:
    - sessions_trk.is_first_session
    sorts:
    - sessions_trk.start_date desc
    - sessions_trk.is_first_session
    limit: 500
    colors:
    - 'palette: Default'
    show_null_points: true
    stacking: normal
    show_value_labels: false
    show_view_names: true
    x_axis_scale: auto
    x_axis_label_rotation: -45
    point_style: none
    interpolation: linear
    series_colors:
      First Session - sessions_trk.count: "#00D4D5"
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: sessions_trk.start_date
    row: 12
    col: 0
    width: 12
    height: 8
  - title: New User Session Percentage
    name: New User Session Percentage
    model: tracks
    explore: sessions_trk
    type: looker_pie
    fields:
    - sessions_trk.is_first_session
    - sessions_trk.count
    sorts:
    - sessions_trk.count desc
    limit: 500
    colors: 'palette: Mixed Pastels'
    show_null_points: true
    series_colors:
      First Session: "#DDF4F4"
    listen:
      Date: sessions_trk.start_date
    row: 12
    col: 12
    width: 12
    height: 8
  - title: Cohort - Sessions Layered by First Session Month
    name: Cohort - Sessions Layered by First Session Month
    model: tracks
    explore: sessions_trk
    type: looker_area
    fields:
    - user_session_facts.first_month
    - sessions_trk.start_date
    - sessions_trk.count
    pivots:
    - user_session_facts.first_month
    sorts:
    - sessions_trk.start_date desc
    - user_session_facts.first_month
    limit: 500
    colors:
    - "#99E9BD"
    - "#005589"
    - "#DDF4F4"
    - "#00D4D5"
    - "#A0A0A0"
    - "#FA7E16"
    - "#11E6A3"
    - "#11E6A3"
    show_null_points: true
    show_value_labels: false
    show_view_names: true
    stacking: normal
    x_axis_gridlines: false
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    x_axis_label_rotation: -45
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    point_style: none
    interpolation: linear
    series_colors:
      2017-09 - sessions_trk.count: "#FA7E16"
      2017-10 - sessions_trk.count: "#11E6A3"
      2017-11 - sessions_trk.count: "#005589"
    label_density: 25
    legend_position: center
    limit_displayed_rows: false
    y_axis_combined: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 20
    col: 0
    width: 12
    height: 8
  - title: Customer Cohorts
    name: Customer Cohorts
    model: tracks
    explore: sessions_trk
    type: table
    fields:
    - sessions_trk.start_date
    - user_session_facts.first_month
    - sessions_trk.count
    - sessions_trk.start_month
    pivots:
    - sessions_trk.start_month
    sorts:
    - user_sessions_trk_facts.first_month
    - sessions_trk.start_month desc
    - user_session_facts.first_month desc
    limit: 500
    row: 20
    col: 12
    width: 12
    height: 8
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
