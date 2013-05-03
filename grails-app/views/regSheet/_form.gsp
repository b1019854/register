<%@ page import="uk.ac.shu.webarch.eregister.RegSheet" %>



<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'regClass', 'error')} required">
	<label for="regClass">
		<g:message code="regSheet.regClass.label" default="Reg Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regClass" name="regClass.id" from="${uk.ac.shu.webarch.eregister.Class.list()}" optionKey="id" required="" value="${regSheetInstance?.regClass?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'shortcode', 'error')} required">
	<label for="shortcode">
		<g:message code="regSheet.shortcode.label" default="Shortcode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortcode" required="" value="${regSheetInstance?.shortcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'sheetDate', 'error')} required">
	<label for="sheetDate">
		<g:message code="regSheet.sheetDate.label" default="Sheet Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="sheetDate" precision="day"  value="${regSheetInstance?.sheetDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="regSheet.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${regSheetInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'signatories', 'error')} ">
	<label for="signatories">
		<g:message code="regSheet.signatories.label" default="Signatories" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regSheetInstance?.signatories?}" var="s">
    <li><g:link controller="regEntry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regEntry" action="create" params="['regSheet.id': regSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regEntry.label', default: 'RegEntry')])}</g:link>
</li>
</ul>

</div>

