<html>
<head>
<script type="text/javaScript">
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
</head>
<body onload="disableBackButton()">

<%@ include file="header1.html"%>
<div style="position:absolute;top:40%;left:45%;">
<a href="index.jsp?msg=You are successfully Logged out!">Confirm logout</a>
</div>
</body>
</html>