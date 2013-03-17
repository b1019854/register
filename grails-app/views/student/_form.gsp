<%@ page import="uk.ac.shu.webarch.eregister.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${studentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentNumber', 'error')} ">
	<label for="studentNumber">
		<g:message code="student.studentNumber.label" default="Student Number" />
		
	</label>
	<g:textField name="studentNumber" value="${studentInstance?.studentNumber}"/>
</div>

