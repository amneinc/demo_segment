view: pages {
  derived_table: {
    sql: select *, CASE WHEN name='Request Offer Address' THEN 'Request - step 0 Address'
     WHEN name='Request Offer Home' THEN 'Request - step 1 Home'
     WHEN name='Request Offer Sale' THEN 'Request - step 2 Sale'
     WHEN name='Request Offer You' THEN 'Request - step 3 You'
     WHEN name='Request Offer Confirmation' THEN 'Request - step 4 Confirmation'
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

  dimension: device {
    type: string
    sql: CASE WHEN ${TABLE}.context_user_agent LIKE '%Windows%' THEN 'Windows'
              WHEN ${TABLE}.context_user_agent LIKE '%Macintosh%' THEN 'Mac'
              WHEN ${TABLE}.context_user_agent LIKE '%iPhone%' THEN 'iPhone'
              WHEN ${TABLE}.context_user_agent LIKE '%iPad%' THEN 'iPad'
              WHEN ${TABLE}.context_user_agent LIKE '%Linux%' THEN 'Linux'
              WHEN ${TABLE}.context_user_agent LIKE '%Android%' THEN 'Android'
              ELSE 'Other'
        END ;;
  }

  dimension: browser {
    type: string
    sql: CASE WHEN ${TABLE}.context_user_agent LIKE '%Firefox%' THEN 'Firefox'
              WHEN ${TABLE}.context_user_agent LIKE '%Chrome%' THEN 'Chrome'
              WHEN ${TABLE}.context_user_agent LIKE '%Safari%' AND ${TABLE}.context_user_agent NOT LIKE '%Chrome%' THEN 'Safari'
              ELSE 'Other'
        END;;
  }

  dimension: conversion_steps_from_mailer_land_page {
    type: string
    sql: CASE WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' THEN 'step 0 - Mailer Land Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' THEN 'step 1 - Request Address Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' AND ${TABLE}.url = 'https://www.amne.co/request/home' THEN 'step 2 - Request Home Info Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' AND ${TABLE}.url = 'https://www.amne.co/request/home' AND ${TABLE}.url = 'https://www.amne.co/request/sale' THEN 'step 3 - Request Sale Info Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' AND ${TABLE}.url = 'https://www.amne.co/request/home' AND ${TABLE}.url = 'https://www.amne.co/request/sale' AND ${TABLE}.url = 'https://www.amne.co/request/you' THEN 'step 4 - Request You Info Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' AND ${TABLE}.url = 'https://www.amne.co/request/home' AND ${TABLE}.url = 'https://www.amne.co/request/sale' AND ${TABLE}.url = 'https://www.amne.co/request/you' AND ${TABLE}.url = 'https://www.amne.co/request/confirmation' THEN 'step 5 - Request Confirmation Page'
        END;;
  }

  dimension: conversion_steps_from_hpp {
    type: string
    sql: CASE WHEN ${TABLE}.url LIKE 'https://www.amne.co/homes/%' AND (NOT LIKE '%browse%') AND (NOT LIKE '%/homes/austin/%') THEN 'step 0 - HPP'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' THEN 'step 1 - Request Address Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' AND ${TABLE}.url = 'https://www.amne.co/request/home' THEN 'step 2 - Request Home Info Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' AND ${TABLE}.url = 'https://www.amne.co/request/home' AND ${TABLE}.url = 'https://www.amne.co/request/sale' THEN 'step 3 - Request Sale Info Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' AND ${TABLE}.url = 'https://www.amne.co/request/home' AND ${TABLE}.url = 'https://www.amne.co/request/sale' AND ${TABLE}.url = 'https://www.amne.co/request/you' THEN 'step 4 - Request You Info Page'
              WHEN ${TABLE}.url = 'https://www.amne.co/free-offer' AND ${TABLE}.url = 'https://www.amne.co/request/address' AND ${TABLE}.url = 'https://www.amne.co/request/home' AND ${TABLE}.url = 'https://www.amne.co/request/sale' AND ${TABLE}.url = 'https://www.amne.co/request/you' AND ${TABLE}.url = 'https://www.amne.co/request/confirmation' THEN 'step 5 - Request Confirmation Page'
        END;;
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
