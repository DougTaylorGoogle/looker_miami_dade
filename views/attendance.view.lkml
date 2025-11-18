view: attendance {
  sql_table_name: `cloud-training-demos.k12_nwhs.attendance`
    ;;

  dimension: absences {
    type: number
    sql: ${TABLE}.Absences ;;
  }

  dimension: attendance_rate {
    type: number
    sql: ${TABLE}.AttendanceRate ;;
  }

  dimension: chronic_flag {
    type: number
    sql: ${TABLE}.ChronicFlag ;;
  }

  dimension: course_id {
    type: string
    sql: ${TABLE}.CourseID ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.CourseName ;;
  }

  dimension: grade_level {
    type: number
    sql: ${TABLE}.GradeLevel ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.SchoolYear ;;
  }

  dimension: section_id {
    type: string
    sql: ${TABLE}.SectionID ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.StudentID ;;
  }

  dimension: teacher_email {
    type: string
    sql: ${TABLE}.TeacherEmail ;;
  }

  dimension: teacher_id {
    type: string
    sql: ${TABLE}.TeacherID ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.Term ;;
  }

  dimension: total_days {
    type: number
    sql: ${TABLE}.TotalDays ;;
  }

  measure: count {
    type: count
    drill_fields: [course_name]
  }
}
