<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		
	</head>
	<body>
		<div class='container' style='text-align:center;'>
			<h3>eRegister</h3>
			<div class='row'>
				<div class='span3'>
					<g:link controller='Instructor'>
						<i class='icon-user icon-4x'></i><br>
						Mananage Instructors
					</g:link>
				</div>
				<div class='span3'>
					<g:link controller='Student'>
						<i class='icon-group icon-4x'></i><br>
						Mananage Students
					</g:link>
				</div>
				<div class='span3'>
					<g:link controller='Course'>
						<i class='icon-book icon-4x'></i><br>
						Mananage Courses
					</g:link>
				</div>
				<div class='span3'>
					<a href='classes'>
						<i class='icon-file-alt icon-4x'></i><br>
						Mananage Classes
					</a>
				</div>
			</div>
		</div>
	</body>
</html>
