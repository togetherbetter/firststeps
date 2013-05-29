<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<title>View Info</title>
<jsp:include page="../layout/header.jsp"></jsp:include>
<body>
	<h1 id="head">Steal My Admin Template</h1>
	<ul id="navigation">
		<li><a href="<c:url value = "/account" />"><span class="active">Account</span></a></li>
		<li><a href="#">News</a></li>
		<li><a href="#">Users</a></li>
	</ul>
	<div id="content" class="container_16 clearfix">
		<h1>
			View Account
		</h1>
		<div class="span-12 last">	
			<form:form modelAttribute="account" action="${account.id}" method="post">
			  	<fieldset>		
					<legend>Account Fields</legend>
					<p>
						<form:label	for="name" path="name">Name</form:label><br/>
						<form:input path="name" readonly="true"/>		
					</p>
					<p>	
						<form:label for="balance" path="balance">Balance</form:label><br/>
						<form:input path="balance" readonly="true"/>
					</p>
					<p>
						<form:label for="equityAllocation" path="equityAllocation">Equity Allocation</form:label><br/>
						<form:input path="equityAllocation" readonly="true"/>
					</p>
					<p>	
						<form:label for="renewalDate" path="renewalDate">Renewal Date</form:label><br/>
						<form:input path="renewalDate" readonly="true"/>
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