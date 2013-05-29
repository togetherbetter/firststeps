<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<title>Create account</title>
<jsp:include page="../layout/header.jsp"></jsp:include>
<body>
	<jsp:include page="../layout/menu.jsp"></jsp:include>
	<div id="content" class="container_16 clearfix">
		<h1>
			Create Account
		</h1>
		<div class="span-12 last">	
			<form:form modelAttribute="account" action="account" method="post">
			  	<fieldset>		
					<legend>Account Fields</legend>
					<p>
						<form:label	for="name" path="name" cssErrorClass="error">Name</form:label><br/>
						<form:input path="name" /> <form:errors path="name" />			
					</p>
					<p>	
						<form:label for="balance" path="balance" cssErrorClass="error">Balance</form:label><br/>
						<form:input path="balance" /> <form:errors path="balance" />
					</p>
					<p>
						<form:label for="equityAllocation" path="equityAllocation" cssErrorClass="error">Equity Allocation</form:label><br/>
						<form:input path="equityAllocation" /> <form:errors path="equityAllocation" />
					</p>
					<p>	
						<form:label for="renewalDate" path="renewalDate" cssErrorClass="error">Renewal Date</form:label><br/>
						<form:input path="renewalDate" /> <form:errors path="renewalDate" />
					</p>
					<p>	
						<input type="submit" />
					</p>
				</fieldset>
			</form:form>
		</div>
		<hr>	
		<ul>
			<li> <a href="?locale=en_us">us</a> |  <a href="?locale=en_gb">gb</a> | <a href="?locale=es_es">es</a> | <a href="?locale=de_de">de</a> </li>
		</ul>	
	</div>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>