<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="header">
	<div class="row-1">
		<div class="fleft">
			<a href="index.html">Cinema <span>World</span></a>
		</div>
		<ul>
			<li><a href="#"><img src="<c:url value="/resources/fontend/images/icon1.gif" />" alt="" /></a></li>
			<li><a href="#"><img src="<c:url value="/resources/fontend/images/icon2.gif"/>" alt="" /></a></li>
			<li><a href="#"><img src="<c:url value="/resources/fontend/images/icon3.gif" />" alt="" /></a></li>
		</ul>
	</div>
	<div class="row-2">
		<ul>
			<li><a href="#" class="active">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Articles</a></li>
			<li><a href="#">Contacts</a></li>
			<li class="last"><a href="#">Sitemap</a></li>
		</ul>
	</div>
</div>