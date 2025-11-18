view: course_reference {
  sql_table_name: `cloud-training-demos.k12_nwhs.course_reference`
    ;;

  dimension: course_id {
    type: string
    sql: ${TABLE}.CourseID ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.CourseName ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}.Credits ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: grade_level {
    type: number
    sql: ${TABLE}.GradeLevel ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.SchoolYear ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.Term ;;
  }

  measure: count {
    type: count
    drill_fields: [course_name]
  }
}
