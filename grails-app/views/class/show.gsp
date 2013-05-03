
<%@ page import="uk.ac.shu.webarch.eregister.Class" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'class.label', default: 'Class')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-class" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-class" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list class">
			
				<g:if test="${classInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="class.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${classInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="class.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${classInstance?.course?.id}">${classInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.enrolledStudents}">
				<li class="fieldcontain">
					<span id="enrolledStudents-label" class="property-label"><g:message code="class.enrolledStudents.label" default="Enrolled Students" /></span>
					
						<g:each in="${classInstance.enrolledStudents}" var="e">
						<span class="property-value" aria-labelledby="enrolledStudents-label"><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.instructor}">
				<li class="fieldcontain">
					<span id="instructor-label" class="property-label"><g:message code="class.instructor.label" default="Instructor" /></span>
					
						<span class="property-value" aria-labelledby="instructor-label"><g:link controller="instructor" action="show" id="${classInstance?.instructor?.id}">${classInstance?.instructor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="class.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${classInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.registrationSheets}">
				<li class="fieldcontain">
					<span id="registrationSheets-label" class="property-label"><g:message code="class.registrationSheets.label" default="Registration Sheets" /></span>
					
						<g:each in="${classInstance.registrationSheets}" var="r">
						<span class="property-value" aria-labelledby="registrationSheets-label"><g:link controller="regSheet" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${classInstance?.id}" />
					<g:link class="edit" action="edit" id="${classInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
