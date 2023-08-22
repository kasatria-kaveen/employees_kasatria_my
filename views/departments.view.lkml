view: departments {
  sql_table_name: `employee_details.departments` ;;

  dimension: department {
    type: string
    primary_key: yes
    sql: ${TABLE}.department ;;
  }
  dimension: hod {
    type: string
    sql: ${TABLE}.hod ;;
  }
  measure: count {
    type: count
  }
}
