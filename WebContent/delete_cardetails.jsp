<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="p.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String action=request.getParameter("btn");
String userid=(String)session.getAttribute("userid");

if(action.equals("yes"))
{
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("delete from carpool_usercardetails where user_id=?");
	pst.setInt(1,Integer.parseInt(userid));
	pst.executeUpdate();
	con.close();
	response.sendRedirect("welcome_user.jsp?msg=Your Car Details Are Deleted");
}
catch(Exception e)
{
System.out.println(e);
}
}
else
{
	response.sendRedirect("welcome_user.jsp");
}
%>
</body>
</html>