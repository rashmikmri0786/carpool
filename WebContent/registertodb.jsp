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
out.println(name+pass+email+mobile+age+gender);
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(user_id) from carpool_userdetails");
	int id=0;
	if(rs.next())
	{
		id=rs.getInt(1);
	}
	id++;
	System.out.println(id);
	PreparedStatement pst=con.prepareStatement("insert into carpool_userdetails values(?,?,?,?,?,?,?)");
	pst.setInt(2,id);
	pst.setString(1,name);
	pst.setString(3,pass);
	pst.setString(4,email);
	pst.setString(5,mobile);
	pst.setString(6,age);
	pst.setString(7,gender);
	
	System.out.println("111");
	
	pst.executeUpdate();

	System.out.println("22");
	con.close();
	response.sendRedirect("registration.jsp?msg=You are Successfully Registered and Your User Id is:"+id);
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>