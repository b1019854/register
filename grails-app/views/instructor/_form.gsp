<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="instructor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class='span12' name="name" cols="40" rows="5" maxlength="256" required="" value="${instructorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'staffId', 'error')} required">
	<label for="staffId">
		<g:message code="instructor.staffId.label" default="Staff Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class='span12' name="staffId" maxlength="20" required="" value="${instructorInstance?.staffId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message class='span12' code="instructor.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${instructorInstance?.classes?}" var="c">
    <li><g:link controller="class" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="class" action="create" params="['instructor.id': instructorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'class.label', default: 'Class')])}</g:link>
</li>
</ul>

</div>

