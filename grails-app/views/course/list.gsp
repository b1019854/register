
<%@ page import="uk.ac.shu.webarch.eregister.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class='container'>
			
				<g:link class="create btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				
		<div id="list-course" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class='table table-striped'>
				<thead>
					<tr>
					
						<g:sortableColumn property="courseCode" title="${message(code: 'course.courseCode.label', default: 'Course Code')}" />
					
						<g:sortableColumn property="courseName" title="${message(code: 'course.courseName.label', default: 'Course Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'course.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="myIntProp" title="${message(code: 'course.myIntProp.label', default: 'My Int Prop')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "courseCode")}</g:link></td>
					
						<td>${fieldValue(bean: courseInstance, field: "courseName")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "myIntProp")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${courseInstanceTotal}" />
			</div>
		</div>
		</div>
	</body>
</html>
