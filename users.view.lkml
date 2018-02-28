view: users {
  sql_table_name: javascript.users ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    tags: ["user_id"]
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
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


  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: chat_only {
    type: yesno
    sql: ${TABLE}.chat_only ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
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
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
    tags: ["email"]
  }


  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  #   - dimension: id
  #     type: string
  #     sql: ${TABLE}.id

  dimension_group: last_login {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_login_at ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.locale_id ;;
  }

  dimension: moderator {
    type: yesno
    sql: ${TABLE}.moderator ;;
  }

  dimension: only_private_comments {
    type: yesno
    sql: ${TABLE}.only_private_comments ;;
  }

  dimension: organization_id {
    type: number
    # hidden: true
    sql: ${TABLE}.organization_id ;;
  }

  dimension_group: received {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension: restricted_agent {
    type: yesno
    sql: ${TABLE}.restricted_agent ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: shared {
    type: yesno
    sql: ${TABLE}.shared ;;
  }

  dimension: shared_agent {
    type: yesno
    sql: ${TABLE}.shared_agent ;;
  }

  dimension: ticket_restriction {
    type: string
    sql: ${TABLE}.ticket_restriction ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: verified {
    type: yesno
    sql: ${TABLE}.verified ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      organizations.id,
      added_email.count,
      clicked_button.count,
      created_a_project.count,
      deleted_email.count,
      groups.count,
      identifies.count,
      invited_team_member.count,
      pages.count,
      signup.count,
      tracks.count
    ]
  }
}
