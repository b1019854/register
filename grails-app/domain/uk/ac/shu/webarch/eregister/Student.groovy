package uk.ac.shu.webarch.eregister

class Student {

  String fullStudentName
  String studentNumber
  String notes

  /* The courses this student is enrolled on */
  Set courses

  /* The set of classes this student has attended */
  Set classAtts

  /* This demonstrates why the hasMany structure is a list.. in this case we have a
     domain class with many set objects, so the hasMany metadata needs to specify several
     different sets */
  static hasMany = [
    courses: Enrollment,
    classAtts: RegEntry
  ]

  static mappedBy = [
    courses:'student',
    classAtts:'student'
  ]
  
  static mapping = {
  	notes column: 'student_notes', type: 'text';
  	fullStudentName defaultValue: 'Default';
  }

  /**
   * TODO:
   * Make the notes field use the "text" type, and name the column "student_notes" in the database
   */
  static constraints = {
    fullStudentName(nullable:false, blank:false,maxSize:256);
    studentNumber(nullable:false, blank:false,maxSize:256);
  }
}
