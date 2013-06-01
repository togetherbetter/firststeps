<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
</head>
<body>
<h3>Fresh <span>Movies</span></h3>
<ul class="movies">
	<li>
		<h4>Toy Story 3</h4><img src="<c:url value = "/resources/fontend/images/1page-img2.jpg"/>" alt="" />
		<p>Check out Disney-Pixar's official Toy Story site, watch the <span>Toy Story 3</span> trailer, and meet new characters. Remember, no toy gets left behind!</p>
		<div class="wrapper"><a href="#" class="link2"><span><span>Read More</span></span></a></div>
	</li>
	<li>
		<h4>Prince of Percia: Sands of Time</h4><img src="<c:url value = "/resources/fontend/images/1page-img3.jpg"/>" alt="" />
		<p>A young fugitive prince and princess must stop a villain who unknowingly threatens to destroy the world with a special dagger.</p>
		<div class="wrapper"><a href="#" class="link2"><span><span>Read More</span></span></a></div>
	</li>
	<li class="last">
		<h4>The Twilight Saga: Eclipse</h4><img src="<c:url value = "/resources/fontend/images/1page-img4.jpg"/>" alt="" />
		<p>As a string of mysterious killings grips Bella is forced to choose between her love for vampire Edward and her friendship with werewolf Jacob.</p>
		<div class="wrapper"><a href="#" class="link2"><span><span>Read More</span></span></a></div>
	</li>
	<li class="clear">&nbsp;</li>
</ul>
</body>
</html>