import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

		println("Bootstrap::init");

		// Create initial instructors if they don't exits
		def matthew_instructor = Instructor.findByStaffId('62') ?: new Instructor(staffId: '62', name: 'Matthew Love').save();
		def john_instructor = Instructor.findByStaffId('67') ?: new Instructor(staffId: '67', name: 'John Smith').save();
		def ian_instructor = Instructor.findByStaffId('68') ?: new Instructor(staffId:'68', name:'Ian Ibbotson').save();
	
		// Create initial courses if they don't exits
		def web_arch_course =  Course.findByCourseCode('728') ?: new Course(courseCode: '728', courseName:'Web Architectures', description: 'Architectures of Web and Stuff').save();
		def eff_des_course =  Course.findByCourseCode('729') ?: new Course(courseCode: '729', courseName:'Effective Design for Multimedia', description: 'Designing effective multimedia applications.').save();
		def e_biz_course =  Course.findByCourseCode('730') ?: new Course(courseCode: '730', courseName:'eBusiness', description: 'eBusiness & eCommerce').save();
	
		// Create initial classes if they don't exits
		def mon_pm_class = Class.findByCourseAndCode(web_arch_course, 'WebArchOne') ?: 
		              new Class(name:'Web Architectures Group One',
		                           code:'WebArchOne',
		                           instructor:ian_instructor, 
		                           course:web_arch_course
		                           ).save();     
		                           
		def wed_am_class = Class.findByCourseAndCode(eff_des_course, 'EffDesOne') ?: 
		              new Class(name:'Effective Design Group One',
		                           code:'EffDesOne',
		                           instructor:matthew_instructor, 
		                           course:eff_des_course
		                           ).save();      
		                           
		def wed_pm_class = Class.findByCourseAndCode(eff_des_course, 'EffDesTwo') ?: 
		              new Class(name:'Effective Design Group Two',
		                           code:'EffDesTwo',
		                           instructor:matthew_instructor, 
		                           course:eff_des_course
		                           ).save();    
		                          
		def thurs_pm_class = Class.findByCourseAndCode(e_biz_course, 'EBizOne') ?: 
		              new Class(name:'eBusiness Group One',
		                           code:'EBizOne',
		                           instructor:matthew_instructor, 
		                           course:e_biz_course
		                           ).save();                  
	
		
		// Create initial student if they don't exits
		def student_a = Student.findByStudentNumber('A111') ?:
		              new Student(studentNumber:'A111', fullStudentName:'Student Fred', notes:'Student Fred Notes').save();
		              
		def student_b = Student.findByStudentNumber('B123') ?:
		              new Student(studentNumber:'B123', fullStudentName:'Matthew Erwin', notes:'Matthew Erwin Notes').save();
		              
		def student_c = Student.findByStudentNumber('B127') ?:
		              new Student(studentNumber:'B127', fullStudentName:'Bill Gates', notes:'Bill Gates Notes').save();
		              
		def student_d = Student.findByStudentNumber('S245') ?:
		              new Student(studentNumber:'S245', fullStudentName:'Steve Jobs', notes:'Steve Jobs Notes').save();        

		// Enroll students if they aren't already
		// Does not seem to enroll students onto course properly?
		def student_a_web_arch = Enrollment.findOrCreateByStudentAndRegClass(student_a,mon_pm_class)
	
    }
    
    def destroy = {
    }
}
