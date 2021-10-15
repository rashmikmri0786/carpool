<%@ include file="header1.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,p.*"%>

    <div style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;">
            Welcome,<%=session.getAttribute("username")%>
    </div>
    
    <div  style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;margin-left:90%;">     
           <a href="finallogout.jsp">logout</a>
    </div>
<div  style="width:150px;font-size:15px;text-align:center;line-height:20px;color: blue;">     
           <a href="welcome_user.jsp">Back to Main Menu</a>
    </div>
    
           
            <center>
            <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %>
            
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
            	out.println("<h3>You Have Already Registered Your Car!</h3><br><br>");
            	out.println("<a href=updateuser_car.jsp>Update Car Details</a>");
            	}
            	else
            	{
            	
            	%> 
            		</center>
            	<h1 style="text-align:center;font-size:30px;color:brown">Car Registration Form</h1>
            	 <form method="post" action="car_registertodb.jsp">
                         <table bgcolor="cyan" align="center" cellpadding="0px" cellspacing="10px">
			                       
								<tr>
									<td>Car No.</td><td><input type="text" name="CarNumber"/></td>
								
								</tr>
								<tr>
										<td>Car Model</td><td><input type="text" name="Model"/></td>
							 
								</tr>
							<tr>
									<td>Seats In Car</td><td><input type="text" name="Seats"/></td>
							 
							</tr>
							<tr>
									<td>Source</td><td><input type="text" name="Source"/></td>
							 
							</tr>
							
							<tr>
									<td>Destination</td><td><input type="text" name="Destination"/></td>
							 
							</tr>
								<tr>
									<td>Departure Time</td><td><input type="text" name="DepartureTime"/></td>
							 
							</tr>
							<tr>
									<td>Return Time</td><td><input type="text" name="ReturnTime"/></td>
							 
							</tr>
							<tr>
									<td></td><td><input type="submit"/>&nbsp;&nbsp;<input type="reset" name="reset"/></td>
							 
							</tr>
						                        
                         </table>     
						 
	                </form> 
					
            	
            	<% 
            	}
            	con.close();
            	
            }
            catch(Exception e)
            {
            System.out.println(e);
            }
            %>
			       <%@include file="footer.html"%>