connection: "employee_details_test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: kasatria_employees_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kasatria_employees_default_datagroup

explore: departments {}

explore: employees {
  join: departments{
    type: left_outer
    foreign_key: employees.department
    relationship: one_to_one
  }
}
