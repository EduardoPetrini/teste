<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<table>
			<tr>
				<td>Name</td>
				<td>Age</td>
			</tr>
			<g:each in="${list }" var="person">
				<tr>
					<td>${person.lastName }, ${person.firstName }</td>
					<td>${person.age }</td>				
				</tr>
			</g:each>
		</table>
		<g:link controller="hello" action="displayForm">Display Form</g:link>
	</body>
</html>
