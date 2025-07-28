view: fiscal_cal_2009 {
  sql_table_name: `looker_test.fiscal_cal_2009` ;;

  dimension: fisc_day_of_mo_period {
    type: number
    sql: ${TABLE}.FISC_DAY_OF_MO_PERIOD ;;
  }
  dimension: fisc_day_of_year {
    type: number
    sql: ${TABLE}.FISC_DAY_OF_YEAR ;;
  }
  dimension: fisc_mo_period {
    type: number
    sql: ${TABLE}.FISC_MO_PERIOD ;;
  }
  dimension: fisc_mo_period_ly {
    type: number
    sql: ${TABLE}.FISC_MO_PERIOD_LY ;;
  }
  dimension: fisc_month_no {
    type: number
    sql: ${TABLE}.FISC_MONTH_NO ;;
  }
  dimension: fisc_quarter {
    type: string
    sql: ${TABLE}.FISC_QUARTER ;;
  }
  dimension: fisc_quarter_no {
    type: number
    sql: ${TABLE}.FISC_QUARTER_NO ;;
  }
  dimension: fisc_week_no {
    type: number
    sql: ${TABLE}.FISC_WEEK_NO ;;
  }
  dimension_group: fisc_week_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FISC_WEEK_START_DATE ;;
  }
  dimension: fisc_year {
    type: number
    sql: ${TABLE}.FISC_YEAR ;;
  }
  dimension: prev_day_of_year {
    type: number
    sql: ${TABLE}.PREV_DAY_OF_YEAR ;;
  }
  dimension: prev_fisc_day_of_mo_period {
    type: number
    sql: ${TABLE}.PREV_FISC_DAY_OF_MO_PERIOD ;;
  }
  dimension: prev_fisc_mo_period {
    type: number
    sql: ${TABLE}.PREV_FISC_MO_PERIOD ;;
  }
  dimension: prev_fisc_month_no {
    type: number
    sql: ${TABLE}.PREV_FISC_MONTH_NO ;;
  }
  dimension: prev_fisc_week_no {
    type: number
    sql: ${TABLE}.PREV_FISC_WEEK_NO ;;
  }
  dimension: prev_fisc_year {
    type: number
    sql: ${TABLE}.PREV_FISC_YEAR ;;
  }
  dimension_group: ref {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.REF_DATE ;;
  }
  measure: count {
    type: count
  }
}
