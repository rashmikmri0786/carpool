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
String carno=request.getParameter("CarNumber");
String model=request.getParameter("Model");
String source=request.getParameter("Source");
String seats=request.getParameter("Seats");
String destination=request.getParameter("Destination");
String dptime=request.getParameter("DepartureTime");
String rttime=request.getParameter("ReturnTime");
String userid=(String)session.getAttribute("userid");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("insert into carpool_usercardetails values(?,?,?,?,?,?,?,?)");
	pst.setInt(1,Integer.parseInt(userid));
	pst.setString(2,carno);
	pst.setString(3,model);
	pst.setString(4,seats);
	pst.setString(5,source);
	pst.setString(6,destination);
	pst.setString(7,dptime);
	pst.setString(8,rttime);
	pst.executeUpdate();
	con.close();
	response.sendRedirect("welcome_user.jsp?msg=Your Car is Registered");
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>