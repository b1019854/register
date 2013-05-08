package uk.ac.shu.webarch.eregister

class RegEntry {

  Student student

  RegSheet regSheet

  Long timestamp

  static constraints = {
    timestamp(nullable:false, blank:false);
  }

  static mapping = {
    table 'student_register_entry'
    student column: 'student_fk'
  }
}
