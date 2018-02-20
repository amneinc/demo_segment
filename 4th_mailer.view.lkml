view: 4th_mailer {
  sql_table_name: public."4th_mailer" ;;

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: number
    sql: ${TABLE}.address2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first name" ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last name" ;;
  }

  dimension: merge1 {
    type: string
    sql: ${TABLE}.merge1 ;;
  }

  dimension: merge2 {
    type: string
    sql: ${TABLE}.merge2 ;;
  }

  dimension: merge3 {
    type: string
    sql: ${TABLE}.merge3 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: unnamed_0 {
    type: number
    sql: ${TABLE}."unnamed: 0"
      ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [name, first_name, last_name]
  }
}
