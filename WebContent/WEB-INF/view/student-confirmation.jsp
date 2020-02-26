<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- This refers to the JSTL tag library --%>
<!DOCTYPE html>
<html>
<head>
<title>Student Confirmation</title>
</head>
<body>
	The student is confirmed: ${student.firstName} ${student.lastName}
	<!-- This is JSP Expression Language -->
	<!-- With this line Spring will call student.getFirstName() and student.getLastName() on this form -->
	<br>
	<br> Country: ${student.country}
	<!-- This is JSP Expression Language -->
	<!-- With this line Spring will call student.getCountry() on this form -->
	<br>
	<br> Favorite Language: ${student.favoriteLanguage}
	<!-- This is JSP Expression Language -->
	<!-- With this line Spring will call student.getFavoriteLanguage() on this form -->
	<br>
	<br> Operating systems:
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
			<li>${temp}</li>
		</c:forEach>
	</ul>

</body>
</html>