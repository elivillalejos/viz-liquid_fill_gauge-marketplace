view: partition_on_col_test_5b63 {
  sql_table_name: `looker_test.partition_on_col_test_5b63` ;;

  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }
  measure: count {
    type: count
  }
}
