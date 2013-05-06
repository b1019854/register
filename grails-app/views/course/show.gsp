
<%@ page import="uk.ac.shu.webarch.eregister.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class='container'>
		
				
				<g:link class="list btn btn-primary" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="create btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
	
		<div id="show-course" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			
				<g:if test="${courseInstance?.courseCode}">
				
					<h4><span id="courseCode-label" class="property-label"><g:message code="course.courseCode.label" default="Course Code" /></span></h4>
					
						<span class="property-value" aria-labelledby="courseCode-label"><g:fieldValue bean="${courseInstance}" field="courseCode"/></span>
					
				
				</g:if>
			
				<g:if test="${courseInstance?.classes}">
				
					<h4><span id="classes-label" class="property-label"><g:message code="course.classes.label" default="Classes" /></span></h4>
					
						<g:each in="${courseInstance.classes}" var="c">
						<span class="property-value" aria-labelledby="classes-label"><g:link controller="class" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				
				</g:if>
			
				<g:if test="${courseInstance?.courseName}">
				
					<h4><span id="courseName-label" class="property-label"><g:message code="course.courseName.label" default="Course Name" /></span></h4>
					
						<span class="property-value" aria-labelledby="courseName-label"><g:fieldValue bean="${courseInstance}" field="courseName"/></span>
					
				
				</g:if>
			
				<g:if test="${courseInstance?.description}">
				
					<h4><span id="description-label" class="property-label"><g:message code="course.description.label" default="Description" /></span></h4>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${courseInstance}" field="description"/></span>
					
				
				</g:if>
			
				<g:if test="${courseInstance?.myIntProp}">
				
					<h4><span id="myIntProp-label" class="property-label"><g:message code="course.myIntProp.label" default="My Int Prop" /></span>
					
						<span class="property-value" aria-labelledby="myIntProp-label"><g:fieldValue bean="${courseInstance}" field="myIntProp"/></span>
					
				
				</g:if>
			
			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${courseInstance?.id}" />
					<g:link class="edit btn btn-primary" action="edit" id="${courseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
