view: employees {
  sql_table_name: `employee_details.employees` ;;

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }
  dimension_group: dob {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dob ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    primary_key: yes
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
