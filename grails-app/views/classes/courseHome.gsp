<html>
	<head>
	<meta name="layout" content="main">
	</head>
  <body>
  <div class='container'>
    <h3>${course.courseName}</h3>
    <p>${course.description}</p>
    <hr/>
    Classes for this course: 
    <table class='table table-striped'>
    <thead>
      <tr>
        <td>Class Name</td>
        <td>Short Code</td>
        <td>Instructor</td>
      </tr>
      </thead>

      <g:each in="${course.classes}" var="cls">
        <tr>
          <td>${cls.name}</td>
          <td><g:link mapping="classHome"
                        params="${[courseCode:cls.course.courseCode,classCode:cls.code]}">${cls.code}</g:link>
</td>
          <td>${cls.instructor.name}</td>
        </tr>
      </g:each>
    </table>
    </div>
  </body>
</html>
