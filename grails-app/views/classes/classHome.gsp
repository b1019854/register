<html>
	<head>
	<meta name="layout" content="main">
	</head>
  <body>
  <div class='container'>
  	<div class="well well-large">
    Class Name : ${cls.name}<br/>
    Course : ${cls.course.courseName}<br/>
    Class code : ${cls.code}<br/>
    Taught By : ${cls.instructor?.name}<br/>
    Sheet Count To Date : ${sheetsSoFar}<br/>
    </div>
    Current Sheets
    <g:form mapping="classHome" params="${[courseCode:cls.course.courseCode,classCode:cls.code]}" method="POST" class='form-inline'>
      New Sheet Shortcode: <input type="text" name="shortcode"/> 
      <input type="submit" class='btn btn-primary' />
    </g:form>
    <br/>
    <table class='table table-striped'>
    <thead>
      <tr>
      	<th>Code</th>
      	<th>Date</th>
      	<th>Attendance</th>
      </tr>
     </thead>
      <g:each in="${cls.registrationSheets}" var="sheet">
        <tr>
          <td><g:link mapping="sheetHome" params="${[courseCode:cls.course.courseCode,classCode:cls.code,sheetCode:sheet.shortcode]}">${sheet.shortcode}</g:link></td>
          <td><g:link mapping="sheetHome" params="${[courseCode:cls.course.courseCode,classCode:cls.code,sheetCode:sheet.shortcode]}">${sheet.sheetDate}</g:link></td>
          <td>${sheet.signatories?.size()}</td>
        </tr>
      </g:each>    
    </table>
    
    <hr/>
    Students...
    <table class='table table-striped'>
    <thead>
      <tr> 
        <th>Student Number</th>
        <th>Name</th>
        <th>Classes Present</th>
        <th>Possible</th>
        <th>%</th>
      </tr>
      </thead>
      <g:each in="${studentStats}" var="student">
        <tr>
          <td>${student.student.studentNumber}</td>
          <td>${student.student.fullStudentName}</td>
          <td>${student.classesAttended}</td>
          <td>${sheetsSoFar}</td>
          <td>${student.attendance}</td>
        </tr>
      </g:each>    
    </table>
	</div>
    
  </body>
</html>
