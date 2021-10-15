<%@ include file="header1.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
      
</head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style type="text/css">
.button-0 {
    position: relative;
    border-radius: 10px;
    font-family: 'Helvetica', cursive;
    text-decoration: none;  
    border-bottom: 5px solid #2980B9;
    
    /* Animation */
    transition: all 0.1s;
    -webkit-transition: all 0.1s;
}

.button-0:hover, 
.button-0:focus {
    text-decoration: none;
    color: #9BB5DE;
}

.button-0:active {
    transform: translate(0px,5px);
    -webkit-transform: translate(0px,5px);
    border-bottom: 1px solid;
}
</style>
</head>
<body>

    <div style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;">
            Welcome,<%=session.getAttribute("username")%>
    </div>
    
    <div  style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;margin-left:90%;">     
           <a href="finallogout.jsp">logout</a>
    </div>
           
    <div  style=" width:400px;font-size:20px;text-align:center;line-height:20px;color:green;margin-left:35%;">     
           <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %>
    </div>
           
 <div class="button-0" style=" width:400px;height:50px;display:block;border:1px solid #9BB5DE;font-size:15px;text-align:center;
                           line-height:50px;margin:auto;background-color:#E1E6F6;margin-top:10px;text-decoration: none;">
     <a href="car_registration.jsp">Get Your Car Registered!</a>
  </div>
 
  <div class="button-0" style=" width:400px;height:50px;display:block;border:1px solid #9BB5DE;font-size:15px;text-align:center;
                           line-height:50px;margin:auto;background-color:#E1E6F6;margin-top:10px;text-decoration: none;">
     <a href="updateuser.jsp">Update Your Details</a>
  </div>
 
 <div class="button-0" style=" width:400px;height:40px;display:block;border:1px solid #9BB5DE;font-size:15px;text-align:center;
                           line-height:50px;margin:auto;background-color:#E1E6F6;margin-top:10px;text-decoration: none;">
     <a href="updateuser_car.jsp">Update Your Car Details</a>
  </div>
 
 
 <div class="button-0" style=" width:400px;height:40px;display:block;border:1px solid #9BB5DE;font-size:15px;text-align:center;
                           line-height:50px;margin:auto;background-color:#E1E6F6;margin-top:10px;text-decoration: none;">
     <a href="deleteuser_car.jsp">Delete Your Car Details</a>
  </div>
 
 <div class="button-0" style=" width:400px;height:40px;display:block;border:1px solid #9BB5DE;font-size:15px;text-align:center;
                           line-height:50px;margin:auto;background-color:#E1E6F6;margin-top:10px;text-decoration: none;">
     <a href="deleteuser.jsp">Delete Your Account</a>
  </div>
 
                <div 
                class="button-0"
                style=" width:400px;
                           height:50px;
                           display:block;
                           border:1px solid #9BB5DE;
                           font-size:15px;
                           text-align:center;
                           line-height:50px;
                           margin:auto;
                            background-color:#E1E6F6;
                            margin-top:10px;
                          ">
                           <a href="search_pool.jsp"> Search For A Pool?</a>
                    
               </div>
</body>
</html>
<%@ include file="footer.html" %>