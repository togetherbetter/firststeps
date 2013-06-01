<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<c:url value="/resources/admin/css/960.css" />" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="<c:url value="/resources/admin/css/template.css" />" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="<c:url value="/resources/admin/css/colour.css" />" type="text/css" media="screen" charset="utf-8" />
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
