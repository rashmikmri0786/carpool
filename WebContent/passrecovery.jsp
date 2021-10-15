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
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String userid,pass,msg;

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("select * from carpool_userdetails where user_email=? and user_mobile=?");
	pst.setString(1,email);
	pst.setString(2,mobile);
	
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		userid=rs.getString("user_id");
		pass=rs.getString("user_name");
		msg="User ID is:"+userid+"\n Password is:"+pass;
	}
	else
	{
		msg="Invalid Email Id or Mobile No.";
	}
	con.close();
	response.sendRedirect("forgotpass.jsp?msg="+msg);
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>