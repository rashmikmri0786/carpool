<%@ include file="header1.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,p.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
           <a href="welcome_user.jsp">Back to Main Menu</a>
    </div>
    
    <div  style=" width:200px;font-size:20px;text-align:center;line-height:20px;color:green;margin-left:40%;">     
           <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %>
    </div>
			
			 <% 
    try
    {
    	String userid=(String)session.getAttribute("userid");
    	
    	Connection con=ConnectionProvider.getCon();
    	PreparedStatement pst=con.prepareStatement("select * from carpool_usercardetails where user_id=?");
    	pst.setString(1,userid);
    	ResultSet rs=pst.executeQuery();
    	if(rs.next())
    	{
   %><h1 style="text-align:center;font-size:20px;color:brown">Update Car Details</h1>
   		 <form action="updateusercartodb.jsp" method="post">
                         <table bgcolor="cyan" align="center" cellpadding="0px" cellspacing="10px">
			                        
								<tr>
									<td>Car No</td><td><input type="text" name="carno" value="<%=rs.getString(2)%>"/></td>
								
								</tr>
								<tr>
									<td>Car Model</td><td><input type="text" name="carmodel" value="<%=rs.getString(3)%>"/></td>
								
								</tr>
								<tr>
										<td>Seats</td><td><input type="text" name="seats" value="<%=rs.getString(4)%>"/></td>
							 
								</tr>
							<tr>
									<td>Source</td><td><input type="text" name="source" value="<%=rs.getString(5)%>"/></td>
							 
							</tr>
							<tr>
									<td>Destination</td><td><input type="text" name="destination" value="<%=rs.getString(6)%>"/></td>
							 
							</tr>
							
							<tr>
									<td>Departure Time</td><td><input type="text" name="outtime" value="<%=rs.getString(7)%>"/></td>
							 
							</tr>
							<tr>
									<td>Return time</td><td><input type="text" name="intime" value="<%=rs.getString(8)%>"/></td>
							 
							</tr>
							
							
							<tr>
									<td></td><td><input type="submit" value="update"/></td>
							 
							</tr>
						                        
                         </table>     
						 
	                </form> 
	
   <%
    	
    	
    	
    	con.close();
    	}
    	else
		 {
    		out.println("<h3><center>You Have Not Registered Your Car Yet!</center></h3><br><br>");
		 }
    }
    catch(Exception e)
    {
    System.out.println(e);
    }
			 
    %>
			
               </body>
</html>
<%@ include file="footer.html" %>