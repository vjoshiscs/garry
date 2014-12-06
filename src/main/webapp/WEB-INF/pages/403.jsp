<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
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
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			
				User : ${pageContext.request.userPrincipal.name} | <a
					href="javascript:formSubmit()"> Logout</a>
			
		</c:if>
		
		


	</sec:authorize>
</div>
<div id="content">

	Access is denied
	<c:choose>
		<c:when test="${empty username}">
			<h2>You do not have permission to access this page!</h2>
		</c:when>
		<c:otherwise>
			<h2>Dear : ${username} <br/>You do not have permission to access this page!</h2>
		</c:otherwise>
	</c:choose>
	
	<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<c:url value="/logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				<a
					href="javascript:formSubmit()"> Logout</a>
			</h2>
		</c:if>
		


	</sec:authorize>
</div>
<div id="footer">footer</div>

</body>
</html>