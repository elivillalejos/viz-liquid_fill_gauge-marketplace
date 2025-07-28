view: fiscal_2010_through_2012 {
  sql_table_name: `looker_test.fiscal_2010_through_2012` ;;

  dimension: cust_period {
    type: string
    sql: ${TABLE}.CUST_Period ;;
  }
  dimension: cust_quarter {
    type: string
    sql: ${TABLE}.CUST_Quarter ;;
  }
  dimension: cust_week {
    type: string
    sql: ${TABLE}.CUST_Week ;;
  }
  dimension: cust_year {
    type: string
    sql: ${TABLE}.CUST_YEAR ;;
  }
  dimension: day_of_year_num {
    type: number
    sql: ${TABLE}.DAY_OF_YEAR_NUM ;;
  }
  dimension: p_num {
    type: number
    sql: ${TABLE}.P_NUM ;;
  }
  dimension: prev_d_num {
    type: number
    sql: ${TABLE}.PREV_D_NUM ;;
  }
  dimension: prev_wk_num {
    type: number
    sql: ${TABLE}.PREV_WK_NUM ;;
  }
  dimension: q_num {
    type: number
    sql: ${TABLE}.Q_NUM ;;
  }
  dimension_group: reference {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Reference_Date ;;
  }
  dimension: season_num {
    type: number
    sql: ${TABLE}.SEASON_NUM ;;
  }
  dimension: wk_num {
    type: number
    sql: ${TABLE}.WK_NUM ;;
  }
  dimension: year_num {
    type: number
    sql: ${TABLE}.YEAR_NUM ;;
  }
  measure: count {
    type: count
  }
}
