<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="p.*,java.sql.*"%>

<% 
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();

String carpool_userdetails="CREATE TABLE CARPOOL_USERDETAILS(USER_NAME VARCHAR2(50),USER_ID NUMBER,USER_PASSWORD VARCHAR2(50),USER_EMAIL VARCHAR2(50),USER_MOBILE VARCHAR2(10),USER_AGE VARCHAR2(3),USER_GENDER VARCHAR2(10),CONSTRAINT CARPOOL_USERDETAILS_PK PRIMARY KEY (USER_ID) ENABLE)";
String carpool_usercardetails="CREATE TABLE CARPOOL_USERCARDETAILS(USER_ID NUMBER,USER_CARNO VARCHAR2(20),USER_CARMODEL VARCHAR2(20),USER_CARSEATS VARCHAR2(2),USER_SOURCE VARCHAR2(50),USER_DESTINATION VARCHAR2(50),USER_OUTTIME VARCHAR2(20),USER_INTIME VARCHAR2(20),CONSTRAINT CARPOOL_USERCARDETAILS_PK PRIMARY KEY (USER_CARNO) ENABLE)";

st.execute(carpool_userdetails);
st.execute(carpool_usercardetails);
con.close();
System.out.println("Tables Created");	

}
catch(Exception e)
{
System.out.println("Table exist! or any exception found\n"+e);	
}
%>


<%@ include file="header.html" %>  
	<div id="content">
                                  <div id="main-content">
								         <img src="images/car.png"style="width:610px;height:330px"/>
								  </div>
                                  <div id="right-content">
			<table width="auto"  cellpadding="10px" cellspacing="10px">
			
			                <tr>
							     <td>
	
								     <form action="login.jsp" method="post">
								     <center><font color="red">
            <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %></font></center>
	                                    <fieldset>
										
											<legend><img src="images/login.png"/></legend>
           								                       User Id &nbsp&nbsp&nbsp<input type="number" name="userid"><br><br><br>
 										                      Password<input type="password" name="pass"><br><br><br>
                                                             &nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="Login">
                                                              <a href="registration.jsp"style="text-decoration:none">&nbsp&nbsp&nbsp&nbsp&nbsp<input type="button" value="Register"></a><br><br><br>
															  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="forgotpass.jsp">Forgot UserId/Password</a>
                           															  
													
                                        </fieldset>
									</form>
								</td>
						  </tr>	
            </table>									
		</div>
 </div>		
<%@ include file="footer.html" %>