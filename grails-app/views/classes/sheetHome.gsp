<html>
	<head>
	<meta name="layout" content="main">
	</head>
  <body>
  	<div class='container'>
    <h3>${sheet.regClass.name} - ${sheet.shortcode} - <g:formatDate format="dd-MMM-yyyy HH:mm" date="${sheet.sheetDate}"/></h3>
    <hr/>

    <g:form mapping="sheetHome" params="${[courseCode:params.courseCode,classCode:params.classCode,sheetCode:params.sheetCode]}" method="POST">
      <input type="hidden" name="regAction" value="sign"/>
      Sign in student: <input type="text" name="studentNumber"/> 
      <input type="submit"/>
    </g:form>

    <br/>

    Signatories: 
    <table class='table table-striped'>
    <thead>
      <tr>
        <td>Student Number</td>
        <td>Student Name</td>
        <td>Timestamp</td>
      </tr>
     </thead>

      <g:each in="${sheet.signatories}" var="sig">
        <tr>
          <td>${sig.student.studentNumber}</td>
          <td>${sig.student.fullStudentName}</td>
          <td><g:formatDate format="dd-MMM-yyyy HH:mm" date="${new Date(sig.timestamp)}"/></td>
        </tr>
      </g:each>
    </table>
    </div>
  </body>
</html>
