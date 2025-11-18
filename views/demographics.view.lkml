view: demographics {
  sql_table_name: `cloud-training-demos.k12_nwhs.demographics`
    ;;

  dimension: district {
    type: string
    sql: ${TABLE}.District ;;
  }

  dimension: econ_disadv {
    type: yesno
    sql: ${TABLE}.EconDisadv ;;
  }

  dimension: el_level {
    type: number
    sql: ${TABLE}.EL_Level ;;
  }

  dimension: ell_flag {
    type: yesno
    sql: ${TABLE}.ELL_Flag ;;
  }

  dimension: ese_flag {
    type: yesno
    sql: ${TABLE}.ESE_Flag ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: gain_flag {
    type: number
    sql: ${TABLE}.GainFlag ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: home_language {
    type: string
    sql: ${TABLE}.HomeLanguage ;;
  }

  dimension: school {
    type: string
    sql: ${TABLE}.School ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.SchoolYear ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.StudentID ;;
  }

  dimension: subgroup {
    type: string
    sql: ${TABLE}.Subgroup ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
