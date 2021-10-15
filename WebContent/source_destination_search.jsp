<%@ include file="header.html" %>
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
    
    <div  style=" width:150px;font-size:15px;text-align:center;line-height:20px;color: blue;">     
           <a href="welcome_user.jsp">Back to Main Menu</a>
    </div>
    
    <div  style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;margin-left:90%;">     
           <a href="finallogout.jsp">logout</a>
    </div>
           
    <div  style=" width:200px;font-size:20px;text-align:center;line-height:20px;color:green;margin-left:40%;">     
           <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %>
    </div>
           <div style="position: absolute;top:30%;left:30%;">
              <h1 style="text-align:center;font-size:20px;color:brown;">Search for a Pool</h1>
            
			        <form method="post" action="source_destination_search.jsp">
                         <table bgcolor="cyan" align="center" cellpadding="0px" cellspacing="10px">                    
								<tr>
									<td>Source</td><td><input type="text" name="source"/></td>
									<td>Destination</td><td><input type="text" name="destination"/></td>
							 		<td><input type="submit" value="search"/></td>
							</tr>                 
                         </table>      
	                </form> 
			 </div>
			
			
			<div style="position: absolute;top:50%;left:2%;width:100%;">
			<table border="1" border-color="black" width="90%">
			<th width="60">Name</th><th width="60">Mobile No</th><th width="60">Age</th><th width="60">Gender</th><th width="60">Source</th><th width="60">Destination</th><th width="60">Departure time</th><th width="60">Return Time</th><th width="60">Car Model</th>
			<% 
			try
			{
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				String source=request.getParameter("source");
				String dest=request.getParameter("destination");
				ResultSet rs;
				if(source==null||dest==null)
				{
					rs=st.executeQuery("select carpool_userdetails.user_name,carpool_userdetails.user_mobile,carpool_userdetails.user_age,carpool_userdetails.user_gender,carpool_usercardetails.user_source,carpool_usercardetails.user_destination,carpool_usercardetails.user_outtime,carpool_usercardetails.user_intime,carpool_usercardetails.user_carmodel from carpool_userdetails inner join carpool_usercardetails on carpool_userdetails.user_id=carpool_usercardetails.user_id");
				}
				else
				{
					
				}
				rs=st.executeQuery("select carpool_userdetails.user_name,carpool_userdetails.user_mobile,carpool_userdetails.user_age,carpool_userdetails.user_gender,carpool_usercardetails.user_source,carpool_usercardetails.user_destination,carpool_usercardetails.user_outtime,carpool_usercardetails.user_intime,carpool_usercardetails.user_carmodel from carpool_userdetails inner join carpool_usercardetails on carpool_userdetails.user_id=carpool_usercardetails.user_id where carpool_usercardetails.user_source='"+source+"' and carpool_usercardetails.user_destination='"+dest+"'");		
			
				while(rs.next())
				{
					out.println("<tr>");
					for(int i=1;i<=9;i++)
					{
						out.println("<td align=center>");
						out.println(rs.getString(i));
						out.println("</td>");
						
					}
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