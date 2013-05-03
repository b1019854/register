
<%@ page import="uk.ac.shu.webarch.eregister.RegEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regEntry.label', default: 'RegEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="timestamp" title="${message(code: 'regEntry.timestamp.label', default: 'Timestamp')}" />
					
						<th><g:message code="regEntry.regSheet.label" default="Reg Sheet" /></th>
					
						<th><g:message code="regEntry.student.label" default="Student" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regEntryInstanceList}" status="i" var="regEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regEntryInstance.id}">${fieldValue(bean: regEntryInstance, field: "timestamp")}</g:link></td>
					
						<td>${fieldValue(bean: regEntryInstance, field: "regSheet")}</td>
					
						<td>${fieldValue(bean: regEntryInstance, field: "student")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
