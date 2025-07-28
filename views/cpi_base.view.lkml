view: cpi_base {
  sql_table_name: `looker_test.cpi_base` ;;

  dimension: cpi {
    type: number
    sql: ${TABLE}.CPI ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  measure: count {
    type: count
  }
}
