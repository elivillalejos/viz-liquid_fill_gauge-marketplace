connection: "bigquery"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: villalejos_liquid_fill_gauge_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: villalejos_liquid_fill_gauge_default_datagroup

explore: lr_r9_u031743521301505_test_view {}

explore: lr_r9_u031743521368587_test_view {}

explore: fatal_error_persist_for_five_seconds {}

explore: all_types {}

explore: billion_orders {
  join: orders {
    type: left_outer 
    sql_on: ${billion_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: billion_orders_wide {
  join: orders {
    type: left_outer 
    sql_on: ${billion_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: connection_reg_r3 {}

explore: cpi_base {}

explore: fiscal_2010_through_2012 {}

explore: hundred_million_orders {
  join: orders {
    type: left_outer 
    sql_on: ${hundred_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: hundred_million_orders_wide {
  join: orders {
    type: left_outer 
    sql_on: ${hundred_million_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: looker_scratch__tst_reg_963fdcc02655d76f67 {}

explore: looker_scratch__tst_reg_ebffc1deed5d25a581 {}

explore: fiscal_cal_2009 {}

explore: fake_scratch__connection_reg_r3 {}

explore: mat_view_base_1247 {}

explore: mat_view_base_3317 {}

explore: mat_view_base_3890 {}

explore: nested_and_repeated {
    join: nested_and_repeated__repeated_field {
      view_label: "Nested And Repeated: Repeated Field"
      sql: LEFT JOIN UNNEST(${nested_and_repeated.repeated_field}) as nested_and_repeated__repeated_field ;;
      relationship: one_to_many
    }
    join: nested_and_repeated__doubly_nested_and_repeated {
      view_label: "Nested And Repeated: Doubly Nested And Repeated"
      sql: LEFT JOIN UNNEST(${nested_and_repeated.doubly_nested_and_repeated}) as nested_and_repeated__doubly_nested_and_repeated ;;
      relationship: one_to_many
    }
    join: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {
      view_label: "Nested And Repeated: Doubly Nested And Repeated Inner Repeated"
      sql: LEFT JOIN UNNEST(${nested_and_repeated__doubly_nested_and_repeated.inner_repeated}) as nested_and_repeated__doubly_nested_and_repeated__inner_repeated ;;
      relationship: one_to_many
    }
}

explore: mat_view_base_4309 {}

explore: orders_454_calendar {}

explore: order_items {
  join: orders {
    type: left_outer 
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer 
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_base_copy {
  join: users {
    type: left_outer 
    sql_on: ${orders_base_copy.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string {
  join: users {
    type: left_outer 
    sql_on: ${orders_date_string.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: partition_on_col_test_4ddc {}

explore: orders_date_string_test2 {
  join: users {
    type: left_outer 
    sql_on: ${orders_date_string_test2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: partition_on_col_test_cb3f {}

explore: partition_table_a_5165 {}

explore: partition_on_col_test_7ec6 {}

explore: partition_on_col_test_5b63 {}

explore: partition_table_a_8d12 {}

explore: partition_table_a_cb9d {}

explore: partition_table_a_da97 {}

explore: partition_table_b_7e9e {}

explore: partition_table_a_e3aa {}

explore: partition_table_a_f18d {}

explore: partition_table_b_c481 {}

explore: partition_table_b_ab52 {}

explore: testing_table {}

explore: partitiontime_test_95be {}

explore: partition_table_b_d7b8 {}

explore: testing_table_one {}

explore: testme {}

explore: us_births {}

explore: users {}

explore: vijaya_order_test {
  join: users {
    type: left_outer 
    sql_on: ${vijaya_order_test.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

