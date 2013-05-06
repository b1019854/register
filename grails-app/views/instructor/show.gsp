
<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instructor.label', default: 'Instructor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class='container'>
		
				
				<g:link class="list btn btn-primary" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="create btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			
		<div id="show-instructor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			
				<g:if test="${instructorInstance?.name}">
				
					<h4><span id="name-label" class="property-label"><g:message code="instructor.name.label" default="Name" /></span></h4>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${instructorInstance}" field="name"/></span>
					
				
				</g:if>
			
				<g:if test="${instructorInstance?.staffId}">
			
					<h4><span id="staffId-label" class="property-label"><g:message code="instructor.staffId.label" default="Staff Id" /></span></h4>
					
						<span class="property-value" aria-labelledby="staffId-label"><g:fieldValue bean="${instructorInstance}" field="staffId"/></span>
					
				
				</g:if>
			
				<g:if test="${instructorInstance?.classes}">
		
					<span id="classes-label" class="property-label"><g:message code="instructor.classes.label" default="Classes" /></span>
					
						<g:each in="${instructorInstance.classes}" var="c">
						<span class="property-value" aria-labelledby="classes-label"><g:link controller="class" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				
				</g:if>
			
			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${instructorInstance?.id}" />
					<g:link class="edit btn btn-primary" action="edit" id="${instructorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
