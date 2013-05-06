
<%@ page import="uk.ac.shu.webarch.eregister.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class='container'>
		
				<g:link class="list" action="list"><button class='btn btn-primary'><g:message code="default.list.label" args="[entityName]" /></button></g:link>
				<g:link class="create" action="create"><button class='btn btn-primary'><g:message code="default.new.label" args="[entityName]" /></button></g:link>
		
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			
				<g:if test="${studentInstance?.fullStudentName}">
					<h4><span id="fullStudentName-label" class="property-label"><g:message code="student.fullStudentName.label" default="Full Student Name" /></span></h4>
					
						<span class="property-value" aria-labelledby="fullStudentName-label"><g:fieldValue bean="${studentInstance}" field="fullStudentName"/></span>
					
		
				</g:if>
			
				<g:if test="${studentInstance?.studentNumber}">

					<h4><span id="studentNumber-label" class="property-label"><g:message code="student.studentNumber.label" default="Student Number" /></span></h4>
					
						<span class="property-value" aria-labelledby="studentNumber-label"><g:fieldValue bean="${studentInstance}" field="studentNumber"/></span>
					

				</g:if>
			
				<g:if test="${studentInstance?.classAtts}">
	
					<h4><span id="classAtts-label" class="property-label"><g:message code="student.classAtts.label" default="Class Atts" /></span></h4>
					
						<g:each in="${studentInstance.classAtts}" var="c">
						<span class="property-value" aria-labelledby="classAtts-label"><g:link controller="regEntry" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
		
				</g:if>
			
				<g:if test="${studentInstance?.courses}">
				
					<h4><span id="courses-label" class="property-label"><g:message code="student.courses.label" default="Courses" /></span></h4>
					
						<g:each in="${studentInstance.courses}" var="c">
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="enrollment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
		
				</g:if>
			
				<g:if test="${studentInstance?.notes}">
				
					<h4><span id="notes-label" class="property-label"><g:message code="student.notes.label" default="Notes" /></span></h4>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${studentInstance}" field="notes"/></span>
					
				
				</g:if>
			
			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${studentInstance?.id}" />
					<g:link class="edit" action="edit" id="${studentInstance?.id}" class='btn btn-primary'><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
