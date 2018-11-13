- dashboard: website_analytics_tracks_overview
  title: 'Website Analytics: Tracks Overview'
  layout: newspaper
  query_timezone: query_saved
  elements:
  - title: Unique Users
    name: Unique Users
    model: tracks
    explore: track_facts
    type: single_value
    fields:
    - track_facts.count_visitors
    sorts:
    - track_facts.count_visitors desc
    limit: 500
    font_size: medium
    listen:
      Date: tracks.received_date
    row: 0
    col: 0
    width: 9
    height: 5
  - title: Total Tracks
    name: Total Tracks
    model: tracks
    explore: track_facts
    type: single_value
    fields:
    - tracks.count
    sorts:
    - tracks.count desc
    limit: 500
    font_size: medium
    listen:
      Date: tracks.received_date
    row: 0
    col: 9
    width: 9
    height: 5
  - title: Pages Count
    name: Pages Count
    model: pages
    explore: event_facts
    type: single_value
    fields:
    - pages.count_pageviews
    sorts:
    - pages.count_pageviews desc
    limit: 500
    font_size: medium
    listen:
      Date: pages.received_date
    row: 0
    col: 18
    width: 6
    height: 5
  - title: Daily Tracks Count
    name: Daily Tracks Count
    model: tracks
    explore: track_facts
    type: looker_line
    fields:
    - tracks.received_date
    - tracks.count
    sorts:
    - tracks.received_date desc
    limit: 500
    column_limit: 50
    show_null_points: true
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    reference_lines:
    - value:
      - max
      - mean
      label: Above Average
      color: lightslategray
      __FILE: segment/1_event_dashboard.dashboard.lookml
      __LINE_NUM: 150
    - value:
      - median
      label: Median
      color: lightslategray
      __FILE: segment/1_event_dashboard.dashboard.lookml
      __LINE_NUM: 153
    point_style: none
    interpolation: linear
    y_axis_orientation:
    - left
    - right
    hide_legend: false
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_reversed: true
    listen:
      Date: tracks.received_date
    row: 5
    col: 0
    width: 12
    height: 8
  - title: Top 25 Event Types by Track Count
    name: Top 25 Event Types by Track Count
    model: tracks
    explore: track_facts
    type: looker_column
    fields:
    - tracks.event
    - tracks.count
    sorts:
    - tracks.count desc
    limit: 25
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_gridlines: false
    x_axis_label_rotation: -50
    stacking: ''
    show_value_labels: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    listen:
      Date: tracks.received_date
    row: 5
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
