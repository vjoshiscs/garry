<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h1>Access is denied</h1>
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

</body>
</html>