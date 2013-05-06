
<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instructor.label', default: 'Instructor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class='container'>


				<g:link class="create btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
	
		<div id="list-instructor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class='table table-striped'>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'instructor.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="staffId" title="${message(code: 'instructor.staffId.label', default: 'Staff Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${instructorInstanceList}" status="i" var="instructorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${instructorInstance.id}">${fieldValue(bean: instructorInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: instructorInstance, field: "staffId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${instructorInstanceTotal}" />
			</div>
		</div>
		</div>
	</body>
</html>
