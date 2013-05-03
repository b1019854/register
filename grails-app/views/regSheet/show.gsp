
<%@ page import="uk.ac.shu.webarch.eregister.RegSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regSheet.label', default: 'RegSheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-regSheet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regSheet">
			
				<g:if test="${regSheetInstance?.regClass}">
				<li class="fieldcontain">
					<span id="regClass-label" class="property-label"><g:message code="regSheet.regClass.label" default="Reg Class" /></span>
					
						<span class="property-value" aria-labelledby="regClass-label"><g:link controller="class" action="show" id="${regSheetInstance?.regClass?.id}">${regSheetInstance?.regClass?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.shortcode}">
				<li class="fieldcontain">
					<span id="shortcode-label" class="property-label"><g:message code="regSheet.shortcode.label" default="Shortcode" /></span>
					
						<span class="property-value" aria-labelledby="shortcode-label"><g:fieldValue bean="${regSheetInstance}" field="shortcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.sheetDate}">
				<li class="fieldcontain">
					<span id="sheetDate-label" class="property-label"><g:message code="regSheet.sheetDate.label" default="Sheet Date" /></span>
					
						<span class="property-value" aria-labelledby="sheetDate-label"><g:formatDate date="${regSheetInstance?.sheetDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="regSheet.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${regSheetInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.signatories}">
				<li class="fieldcontain">
					<span id="signatories-label" class="property-label"><g:message code="regSheet.signatories.label" default="Signatories" /></span>
					
						<g:each in="${regSheetInstance.signatories}" var="s">
						<span class="property-value" aria-labelledby="signatories-label"><g:link controller="regEntry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${regSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${regSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
