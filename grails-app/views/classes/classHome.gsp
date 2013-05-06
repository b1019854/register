<html>
	<head>
	<meta name="layout" content="main">
	</head>
  <body>
    This is classes::classHome.gsp<br/>

    Class Name : ${cls.name}<br/>
    Course : ${cls.course.courseName}<br/>
    Class code : ${cls.code}<br/>
    Taught By : ${cls.instructor?.name}<br/>
    Sheet Count To Date : ${sheetsSoFar}<br/>
    <hr/>
    Current Sheets
    <g:form mapping="classHome" params="${[courseCode:cls.course.courseCode,classCode:cls.code]}" method="POST">
      New Sheet Shortcode: <input type="text" name="shortcode"/> 
      <input type="submit"/>
    </g:form>
    <br/>
    <table>
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
    <table>
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

    
  </body>
</html>
