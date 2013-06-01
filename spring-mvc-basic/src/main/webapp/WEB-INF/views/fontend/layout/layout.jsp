<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
	<tiles:insertAttribute name="head" />
</head>
<body id="page2">
	<div class="tail-top">
		<div class="tail-bottom">
			<div id="main">
				<div id="header">
					<div class="row-1">
						<tiles:insertAttribute name="header" />
					</div>
					<div class="row-2">
						<tiles:insertAttribute name="menu" />
					</div>
				</div>
				<div id="content">
					<tiles:insertAttribute name="advertising" />
				</div>
				<div class="content">
					<tiles:insertAttribute name="body" />
				</div>
				<tiles:insertAttribute name="footer" />
			</div>
		</div>
	</div>
<script type="text/javascript"> Cufon.now(); </script>		
</body>
</html>
