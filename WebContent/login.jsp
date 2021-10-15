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
String userid=request.getParameter("userid");
String pass=request.getParameter("pass");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("select * from carpool_userdetails where user_id=? and user_password=?");
	pst.setString(1,userid);
	pst.setString(2,pass);
	
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("userid",userid);
		session.setAttribute("username",rs.getString("user_name"));
		response.sendRedirect("welcome_user.jsp");
	}
	else if("0".equals(userid) && "admin".equals(pass))
	{
		session.setAttribute("userid",userid);
		session.setAttribute("username","Admin");
		response.sendRedirect("welcome_admin.jsp");
	}
	else
	{
		response.sendRedirect("index.jsp?msg=Invalid User Id or Password");
	}
	con.close();
	
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>