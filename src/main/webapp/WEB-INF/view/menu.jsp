<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<body style="font-family: arial">
	<h2 id="banner">Welcome to Spring Security MongoDB Demo</h2>

	<h2>Your user info</h2>
	<h6>
		<a href="j_spring_security_logout"><b>Click here to logout</b>
	</h2>
	</a>
	</h6>
	<sec:authorize access="isAuthenticated()">
		<b>Your Username: </b>
		<sec:authentication property="principal.username" />
		<b>Your Role: </b>
		<sec:authentication property="principal.authorities" />
	</sec:authorize>

	<h1 id="banner">MENU</h1>
	<p class="message"></p>
	<a href="/SpringSecurity-MongoDB-MVC/listUsers">Users</a>

	<p class="message"></p>
	<a href="/SpringSecurity-MongoDB-MVC/listCampaigns">Campaigns</a>


	<p class="message"></p>
	<a href="/SpringSecurity-MongoDB-MVC/logout">Log-out</a>
</body>
</html>