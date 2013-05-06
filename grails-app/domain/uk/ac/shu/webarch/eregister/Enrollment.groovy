package uk.ac.shu.webarch.eregister

class Enrollment {

  Student student
  Class regClass

  static constraints = {
  }

  static mapping = {
    table 'course_student'
    student column: 'student_fk'
    regClass column: 'reg_class_fk'
  }
}
