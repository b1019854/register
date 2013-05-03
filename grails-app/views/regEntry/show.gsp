
<%@ page import="uk.ac.shu.webarch.eregister.RegEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regEntry.label', default: 'RegEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-regEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regEntry">
			
				<g:if test="${regEntryInstance?.timestamp}">
				<li class="fieldcontain">
					<span id="timestamp-label" class="property-label"><g:message code="regEntry.timestamp.label" default="Timestamp" /></span>
					
						<span class="property-value" aria-labelledby="timestamp-label"><g:fieldValue bean="${regEntryInstance}" field="timestamp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regEntryInstance?.regSheet}">
				<li class="fieldcontain">
					<span id="regSheet-label" class="property-label"><g:message code="regEntry.regSheet.label" default="Reg Sheet" /></span>
					
						<span class="property-value" aria-labelledby="regSheet-label"><g:link controller="regSheet" action="show" id="${regEntryInstance?.regSheet?.id}">${regEntryInstance?.regSheet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regEntryInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="regEntry.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${regEntryInstance?.student?.id}">${regEntryInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${regEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${regEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
