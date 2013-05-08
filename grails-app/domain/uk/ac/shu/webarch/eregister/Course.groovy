package uk.ac.shu.webarch.eregister


class Course {
  
  String courseName
  String courseCode
  String description
  int myIntProp=1

  Set classes

  static constraints = {
    courseCode maxSize: 20
  }

  static hasMany = [classes: Class]
  static mappedBy = [classes: 'course']

  static mapping = {
    table 'course'
    courseName column: 'course_name'
    courseCode column: 'mapped_course_code'
    description column: 'course_desc', type:'text'
  }
}
