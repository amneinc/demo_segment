view: pages {
  derived_table: {
    sql: select *, CASE WHEN name='Request Offer Address' THEN 'Request - step 0 Address'
     WHEN name='Request Offer Home' THEN 'Request - step 1 Home'
     WHEN name='Request Offer Sale' THEN 'Request - step 2 Sale'
     WHEN name='Request Offer You' THEN 'Request - step 3 You'
     WHEN name='Request Offer Confirmation' THEN 'Request - step 4 Confirmation'
     WHEN name='Home Profiles' THEN 'Home Profile Page'
END AS Conversion_steps
from javascript.pages
 ;;
  }

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: Conversion_steps {
    type: string
    sql: ${TABLE}.Conversion_steps ;;
  }

  dimension: event_id {
    type: string
    sql: CONCAT(${received_raw}, ${id}) ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: context_campaign_content {
    type: string
    sql: ${TABLE}.context_campaign_content ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: context_campaign_name {
    type: string
    sql: ${TABLE}.context_campaign_name ;;
  }

  dimension: context_ip {
    type: string
    sql: ${TABLE}.context_ip ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  #  order_by_field: count
  }

  dimension_group: received {
    type: time
    timeframes: [raw, time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user_id {
    type: string
    # hidden: true
    sql: ${TABLE}.user_id ;;
  }

  dimension: uuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, context_campaign_name, name, users.id]
  }

  measure: count_visitors {
    type: count_distinct
    sql: ${page_facts.looker_visitor_id} ;;
  }

  measure: count_pageviews {
    type: count
    drill_fields: [context_campaign_name]
  }

  measure: avg_page_view_duration_minutes {
    type: average
    value_format_name: decimal_1
    sql: ${page_facts.duration_page_view_seconds}/60.0 ;;
  }

  measure: count_distinct_pageviews {
    type: number
    sql: COUNT(DISTINCT CONCAT(${page_facts.looker_visitor_id}, ${url})) ;;
  }

  measure: count_request_address {
    type: number
    sql: COUNT() ;;
  }
}
