<%@ include file="header1.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,p.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
      
</head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>

    <div style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;">
            Welcome,<%=session.getAttribute("username")%>
    </div>
    
    <div  style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;margin-left:90%;">     
           <a href="finallogout.jsp">logout</a>
    </div>
           
    <div  style="width:150px;font-size:15px;text-align:center;line-height:20px;color: blue;">     
           <a href="welcome_admin.jsp">Back to Main Menu</a>
    </div>
    
    <div  style=" width:200px;font-size:20px;text-align:center;line-height:20px;color:green;margin-left:40%;">     
           <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %>
    </div>
           <div style="position: absolute;top:42%;left:2%;width:90%;background-color: aqua;">
			<table border="1" border-color="black" width="100%">
			<th>User Name</th><th>User Id</th><th>Password</th><th>Email</th><th>Mobile  No</th><th>Age</th><th>Gender</th><th>Action</th>
			<% 
			try
			{
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from carpool_userdetails");		
			
				while(rs.next())
				{
					out.println("<tr>");
					for(int i=1;i<=7;i++)
					{
						out.println("<td align=center>");
						out.println(rs.getString(i));
						out.println("</td>");
						
					}
					out.println("<td align=center><a href=deleteuser.jsp?userid="+rs.getString(2)+">Delete</a></td>");
					out.println("</tr>");
					}
				
				con.close();
				
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			%>
			</table>
            </div>
			 
               </body>
</html>
<%@ include file="footer.html" %>