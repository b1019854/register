package uk.ac.shu.webarch.eregister

import grails.converters.*

class ClassesController {

    def index() {
    	def result = [:]
    	
    	result.classList = []
    	
    	Class.findAll().each { cls ->
      	result.classList.add([instructorName:cls.instructor.name,
                            courseCode:cls.course.courseCode, 
                            courseName:cls.course.courseName,
                            classCode:cls.code, 
                            className:cls.name])
    	}
    	
   withFormat {
      html result
      xml { render result as XML }
      json { render result as JSON }
    }
  }

  def courseHome() {
    println("ClassesController::courseHome ${params}");
    def result = [:]
    result.course = Course.findByCourseCode(params.courseCode)
    if ( result.course == null ) {
      response.sendError(404)
    }
  
    result
  }

  def classHome() {
    def result = [:]
    result.cls = Class.findByCode(params.classCode)
    if ( result.cls == null ) {
      response.sendError(404)   
    }

    result.sheetsSoFar = result.cls.registrationSheets.size();

    println("classHome - method was ${request.method} shortcode=${params.shortcode}");

    switch ( request.method ) {
      case 'POST':
        println("Create new sheet");
        def new_sheet = new RegSheet(regClass:result.cls,
                                              shortcode:params.shortcode,
                                              sheetDate:new Date()).save();
        redirect(mapping:'sheetHome', params:[courseCode:params.courseCode,classCode:params.classCode,sheetCode:params.shortcode])
        break;
      case 'GET':
        println("Create new sheet");
        break;
    }

    result.studentStats = generateStudentStats(result.cls, result.sheetsSoFar)
 
    result
  }

  def generateStudentStats(class_info, possible) {
    // Create a list containing each student and their attendance for this class
    def result = []
    class_info.enrolledStudents.each { es ->
    println("fucking work!");
      def student_info = [:]
      student_info.student = es.student;
      def student_attendance_query = RegEntry.where { student == es.student && regSheet.regClass == class_info };      
      student_info.classesAttended = student_attendance_query.list().size()
      println("classes attended: ${student_info.classesAttended} / ${possible}");
      if ( possible > 0 )
        student_info.attendance = student_info.classesAttended / possible * 100

      result.add(student_info)
    }
    return result;
  }

  def sheetHome() {
    def result = [:]
    result.sheet = RegSheet.findByShortcode(params.sheetCode)

    if ( result.sheet == null ) {
      response.sendError(404)   
    }

    println("sheetHome ${params.studentNumber}");

    switch ( request.method ) {
      case 'POST':
        if ( params.regAction=='sign' ) {
          println("Sign register for \"${params.studentNumber}\"");
          Student s = Student.findByStudentNumber(params.studentNumber)
          if ( s ) {
            RegEntry re = new RegEntry(regSheet:result.sheet,student:s,timestamp:System.currentTimeMillis()).save();
          }
          else {
            println("Unknown student");
            flash.message = "Unknown student";
          }
        }
        break;
      case 'GET':
        break;
    }

    result
  }
}
