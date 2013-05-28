<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Create account</title>
	
	<link rel="stylesheet" href="<c:url value="/resources/admin/css/960.css" />" type="text/css" media="screen" charset="utf-8" />
	<link rel="stylesheet" href="<c:url value="/resources/admin/css/template.css" />" type="text/css" media="screen" charset="utf-8" />
	<link rel="stylesheet" href="<c:url value="/resources/admin/css/colour.css" />" type="text/css" media="screen" charset="utf-8" />
	<!--[if IE]><![if gte IE 6]><![endif]-->
	<script src="<c:url value="/resources/admin/js/glow/1.7.0/core/core.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/admin/js/glow/1.7.0/widgets/widgets.js" />" type="text/javascript"></script>
	<link href="<c:url value="/resources/admin/js/glow/1.7.0/widgets/widgets.css" />" type="text/css" rel="stylesheet" />
	<script type="text/javascript">
		glow.ready(function(){
			new glow.widgets.Sortable(
				'#content .grid_5, #content .grid_6',
				{
					draggableOptions : {
						handle : 'h2'
					}
				}
			);
		});
	</script>
</head>	
<body>
	<h1 id="head">Steal My Admin Template</h1>
	<ul id="navigation">
		<li><a href="account"><span class="active">Account</span></a></li>
		<li><a href="#">News</a></li>
		<li><a href="#">Users</a></li>
	</ul>
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
</body>
</html>