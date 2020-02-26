<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
	First Name: <form:input path="firstName" />
		<br>
		<br>
	Last Name: <form:input path="lastName" />
		<br>
		<br>		
	Country:	
		<form:select path="country">
			<%-- Spring will call student.getCountryOptions() method in the next line, "items" refers to the collection of data --%>
			<form:options items="${student.countryOptions}" />
			<%-- <form:option value="Brazil" label="Brazil" />
			<form:option value="France" label="France" />
			<form:option value="India" label="India" />
			<form:option value="Germany" label="Germany" /> --%>
		</form:select>
		<br>
		<br>
		Favorite Language:
		Java <form:radiobutton path="favoriteLanguage" value="Java" />
		<%-- On submit, Spring will call student.setFavoriteLanguage() method--%>
		C# <form:radiobutton path="favoriteLanguage" value="C#" />
		PHP <form:radiobutton path="favoriteLanguage" value="PHP" />
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />
		<br>
		<br>
		Operating Systems: 
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		<%-- On submit, Spring will call student.setOperatingSystems() method--%>
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />
		<br>
		<br>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>
