package uk.ac.shu.webarch.eregister

class Class {
	String name
	String code

	Instructor instructor;
	Course course

	Set enrolledStudents
	Set registrationSheets

	static hasMany = [
		enrolledStudents:Enrollment, registrationSheets:RegSheet
	]

	static mappedBy = [
		enrolledStudents:'regClass', registrationSheets:'regClass'
	]

    static constraints = {
   	}

	static mapping = {
		
		course column: 'course_fk'
	}
}
