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
String carno=request.getParameter("carno");
String carmodel=request.getParameter("carmodel");
String seats=request.getParameter("seats");
String source=request.getParameter("source");
String dest=request.getParameter("destination");
String outtime=request.getParameter("outtime");
String intime=request.getParameter("intime");
String userid=(String)session.getAttribute("userid");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	PreparedStatement pst=con.prepareStatement("update carpool_usercardetails set user_carno=?,user_carmodel=?,user_carseats=?,user_source=?,user_destination=?,user_outtime=?,user_intime=? where user_id=?");
	pst.setString(8,userid);
	pst.setString(1,carno);
	pst.setString(2,carmodel);
	pst.setString(3,seats);
	pst.setString(4,source);
	pst.setString(5,dest);
	pst.setString(6,outtime);
	pst.setString(7,intime);
	pst.executeUpdate();
	con.close();
	response.sendRedirect("welcome_user.jsp?msg=Car Details Updated");
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>