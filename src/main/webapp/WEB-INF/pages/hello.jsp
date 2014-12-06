<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<<<<<<< HEAD
<style>
#header{
width: 100%;
height: 50px;
border: solid;
background-color: #CBB6FC;
color: #6950a1;
}
#content{
    width: 100%;
    height: 80%;
}
#footer{
    width: 100%;
height: 50px;
border: solid;
background-color: #CBB6FC;
color: #6950a1;

}
.left-span{
margin: 6px 24px;
float: right;
font-size: 15px;}
</style>
<body>

<div id="header">
<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<c:url value="/logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm" class="left-span">
=======
<body>
	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>

	<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<c:url value="/logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
>>>>>>> 60cf97f96a8deff7169e66e9682c1006b0eb7bd2
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

		<c:if test="${pageContext.request.userPrincipal.name != null}">
<<<<<<< HEAD
			
				User : ${pageContext.request.userPrincipal.name} | <a
					href="javascript:formSubmit()"> Logout</a>
			
		</c:if>
		
		


	</sec:authorize>
</div>

<div id="content">
	Title : ${title}</br>
Message : ${message}</br>
</br>
Click here if you are an Admin -><a href="http://localhost:8080/GarryProject/admin">Click Here</a>
</div>
	<div id="footer">footer</div>
</body>
</html>

=======
			<h2>
				User : ${pageContext.request.userPrincipal.name} | <a
					href="javascript:formSubmit()"> Logout</a>
			</h2>
		</c:if>
		
		If you are an admin please -><a href="http://localhost:8080/GarryProject/admin"> Click Here </a>


	</sec:authorize>
</body>
</html>
>>>>>>> 60cf97f96a8deff7169e66e9682c1006b0eb7bd2
