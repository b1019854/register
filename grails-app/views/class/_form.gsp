<%@ page import="uk.ac.shu.webarch.eregister.Class" %>



<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="class.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${classInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="class.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${uk.ac.shu.webarch.eregister.Course.list()}" optionKey="id" required="" value="${classInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'enrolledStudents', 'error')} ">
	<label for="enrolledStudents">
		<g:message code="class.enrolledStudents.label" default="Enrolled Students" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${classInstance?.enrolledStudents?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['class.id': classInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'instructor', 'error')} required">
	<label for="instructor">
		<g:message code="class.instructor.label" default="Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="instructor" name="instructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${classInstance?.instructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="class.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${classInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'registrationSheets', 'error')} ">
	<label for="registrationSheets">
		<g:message code="class.registrationSheets.label" default="Registration Sheets" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${classInstance?.registrationSheets?}" var="r">
    <li><g:link controller="regSheet" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regSheet" action="create" params="['class.id': classInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regSheet.label', default: 'RegSheet')])}</g:link>
</li>
</ul>

</div>

