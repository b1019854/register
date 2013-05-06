<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseCode', 'error')} ">
	<label for="courseCode">
		<g:message code="course.courseCode.label" default="Course Code" />
		
	</label>
	<g:textField class='span12' name="courseCode" maxlength="20" value="${courseInstance?.courseCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message class='span12' code="course.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.classes?}" var="c">
    <li><g:link controller="class" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="class" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'class.label', default: 'Class')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message class='span12' code="course.courseName.label" default="Course Name" />
		
	</label>
	<g:textField class='span12' name="courseName" value="${courseInstance?.courseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		
	</label>
	<g:textField class='span12' name="description" value="${courseInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'myIntProp', 'error')} required">
	<label for="myIntProp">
		<g:message code="course.myIntProp.label" default="My Int Prop" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class='span12' name="myIntProp" type="number" value="${courseInstance.myIntProp}" required=""/>
</div>

