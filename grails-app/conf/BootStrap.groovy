import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

		println("Bootstrap::init");

		// Create initial instructors if they don't exits
		def matthew_instructor = Instructor.findByStaffId('62') ?: new Instructor(staffId: '62', name: 'Matthew Erwin').save();
		def john_instructor = Instructor.findByStaffId('67') ?: new Instructor(staffId: '67', name: 'John Smith').save();
		def ian_instructor = Instructor.findByStaffId('68') ?: new Instructor(staffId:'68', name:'Ian Ibbotson').save();
	
		// Create initial courses if they don't exits
		def web_arch_course =  Course.findByCourseCode('728') ?: new Course(courseCode: '728', courseName:'Web Architectures', description: 'Architectures of Web and Stuff').save();
	
		// Create initial classes if they don't exits
		def monday_pm_class = Class.findByCourseAndCode(web_arch_course, 'WebArchOne') ?: 
		              new Class(name:'Web Architectures Group One',
		                           code:'WebArchOne',
		                           instructor:ian_instructor, 
		                           course:web_arch_course).save();                          
	
		
		// Create initial student if they don't exits
		def student_a = Student.findByStudentNumber('A111') ?:
		              new Student(studentNumber:'A111', fullStudentName:'Student Fred', notes:'Student Fred Notes').save();

		// Enroll students if they aren't already
		// def student_a_web_arch = Enrollment.findOrCreateByStudentAndClass(student_a,monday_pm_class)
	
    }
    
    def destroy = {
    }
}
