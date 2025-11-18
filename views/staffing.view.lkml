view: staffing {
  sql_table_name: `cloud-training-demos.k12_nwhs.staffing`
    ;;

  dimension: aggregated_eval_summary {
    type: string
    sql: ${TABLE}.AggregatedEvalSummary ;;
  }

  dimension: avg_growth_index {
    type: number
    sql: ${TABLE}.AvgGrowthIndex ;;
  }

  dimension: certification_area {
    type: string
    sql: ${TABLE}.CertificationArea ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.ContractType ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.District ;;
  }

  dimension: employment_status {
    type: string
    sql: ${TABLE}.EmploymentStatus ;;
  }

  dimension_group: hire {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.HireDate ;;
  }

  dimension: school {
    type: string
    sql: ${TABLE}.School ;;
  }

  dimension: students_served {
    type: number
    sql: ${TABLE}.StudentsServed ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  dimension: teacher_email {
    type: string
    sql: ${TABLE}.TeacherEmail ;;
  }

  dimension: teacher_id {
    type: string
    sql: ${TABLE}.TeacherID ;;
  }

  dimension: teacher_name {
    type: string
    sql: ${TABLE}.TeacherName ;;
  }

  dimension: years_experience {
    type: number
    sql: ${TABLE}.YearsExperience ;;
  }

  measure: count {
    type: count
    drill_fields: [teacher_name]
  }
}
