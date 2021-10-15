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
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String userid=(String)session.getAttribute("userid");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	PreparedStatement pst=con.prepareStatement("update carpool_userdetails set user_name=?,user_password=?,user_email=?,user_mobile=?,user_age=?,user_gender=? where user_id=?");
	pst.setString(7,userid);
	pst.setString(1,name);
	pst.setString(2,pass);
	pst.setString(3,email);
	pst.setString(4,mobile);
	pst.setString(5,age);
	pst.setString(6,gender);
	pst.executeUpdate();
	con.close();
	response.sendRedirect("welcome_user.jsp?msg=Details Updated");
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>