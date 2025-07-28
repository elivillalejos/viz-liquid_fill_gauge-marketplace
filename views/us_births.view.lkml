view: us_births {
  sql_table_name: `looker_test.us_births` ;;

  dimension: avg_weight {
    type: number
    sql: ${TABLE}.avg_weight ;;
  }
  dimension_group: birth {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.birth_date ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: total_births {
    type: number
    sql: ${TABLE}.total_births ;;
  }
  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }
  measure: count {
    type: count
  }
}
