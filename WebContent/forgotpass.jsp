<%@ include file="header.html" %>
            <h1 style="text-align:center;font-size:30px;color:brown">UserId/Password Recovery Form</h1>
            <center>
            <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %></center>
			        <form action="passrecovery.jsp" method="post">
                         <table bgcolor="cyan" align="center" cellpadding="0px" cellspacing="10px">
			                        
								<tr>
										<td>Email Id</td><td><input type="email" name="email"/></td>
							 
								</tr>
							<tr>
									<td>Mobile No</td><td><input type="number" name="mobile"/></td>
							 
							</tr>
							<tr>
									<td></td><td><input type="submit"/>&nbsp;&nbsp;<input type="reset" name="reset"/></td>
							 
							</tr>
						                        
                         </table>     
						 
	                </form> 
					
<%@include file="footer.html"%>