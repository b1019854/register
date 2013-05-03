import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

	println("Bootstrap::init");

	def matthew_instructor = Instructor.findByStaffId('62') ?: new Instructor(staffId: '62', name: 'Matthew Erwin').save();
	def john_instructor = Instructor.findByStaffId('67') ?: new Instructor(staffId: '67', name: 'John Smith').save();
	
	def web_arch_course =  Course.findByCourseCode('728') ?: new Course(courseCode: '728', courseName:'Web Architectures', description: 'Architectures of Web and Stuff').save();

    }
    def destroy = {
    }
}
