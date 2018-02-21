view: identifies {
  sql_table_name: javascript.identifies ;;

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: context_page_referrer {
    type: string
    sql: ${TABLE}.context_page_referrer ;;
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



  dimension: context_library_version {
    type: string
    sql: ${TABLE}.context_library_version ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}.context_library_name ;;
  }

  dimension: context_page_path {
    type: string
    sql: ${TABLE}.context_page_path ;;
  }

  dimension: context_page_url {
    type: string
    sql: ${TABLE}.context_page_url ;;
  }


  dimension_group: received {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension: user_id {
    type: string
    # hidden: true
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [users.id,address]
  }
}
