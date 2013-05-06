
<%@ page import="uk.ac.shu.webarch.eregister.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		
		
		
				<g:link class="create" action="create"><button class='btn btn-primary'><g:message code="default.new.label" args="[entityName]" /></button></g:link>
			
		<div id="list-student" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class='table table-striped'>
				<thead>
					<tr>
					
						<g:sortableColumn property="fullStudentName" title="${message(code: 'student.fullStudentName.label', default: 'Full Student Name')}" />
					
						<g:sortableColumn property="studentNumber" title="${message(code: 'student.studentNumber.label', default: 'Student Number')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'student.notes.label', default: 'Notes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentInstanceList}" status="i" var="studentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "fullStudentName")}</g:link></td>
					
						<td>${fieldValue(bean: studentInstance, field: "studentNumber")}</td>
					
						<td>${fieldValue(bean: studentInstance, field: "notes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentInstanceTotal}" />
			</div>
		</div>
		</div>
	</body>
</html>
