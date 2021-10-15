<%@ include file="header.html" %>
            <h1 style="text-align:center;font-size:50px;color:brown">Registration Form</h1>
            <center>
            <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %></center>
			        <form action="registertodb.jsp" method="post">
                         <table bgcolor="cyan" align="center" cellpadding="0px" cellspacing="10px">
			                        
								<tr>
									<td>Name</td><td><input type="text" name="name" /></td>
								
								</tr>
								<tr>
									<td>Desired Password</td><td><input type="password" name="pass" required="required"/></td>
								
								</tr>
								<tr>
										<td>Email Id</td><td><input type="email" name="email"/></td>
							 
								</tr>
							<tr>
									<td>Mobile No</td><td><input type="number" name="mobile"/></td>
							 
							</tr>
							<tr>
									<td>Age</td><td><input type="number" name="age"/></td>
							 
							</tr>
							
							<tr>
									<td>Gender</td><td><select name="gender"><option value="nothing">Select</option><option value="male">Male</option><option value="female">Female</option></select></td>
							 
							</tr>
							<tr>
									<td></td><td><input type="submit"/>&nbsp;&nbsp;<input type="reset" name="reset"/></td>
							 
							</tr>
						                        
                         </table>     
						 
	                </form> 
					
<%@include file="footer.html"%>