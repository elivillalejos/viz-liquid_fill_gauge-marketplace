view: orders_454_calendar {
  sql_table_name: `looker_test.orders_454_calendar` ;;

  dimension_group: date {
    type: time
    description: "Gregorian date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
  dimension: day_of_year {
    type: number
    description: "Day number within the NRF fiscal year (1-364 or 1-371)"
    sql: ${TABLE}.DayOfYear ;;
  }
  dimension: month_index {
    type: number
    description: "Month number within the NRF fiscal year (1-12)"
    sql: ${TABLE}.MonthIndex ;;
  }
  dimension: quarter_index {
    type: number
    description: "Quarter number within the NRF fiscal year (1-4)"
    sql: ${TABLE}.QuarterIndex ;;
  }
  dimension: week_index {
    type: number
    description: "Week number within the NRF fiscal year (1-52 or 1-53)"
    sql: ${TABLE}.WeekIndex ;;
  }
  dimension: year {
    type: number
    description: "NRF Fiscal Year"
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
  }
}
