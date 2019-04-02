<%-- 
    Document   : Update
    Created on : Apr 2, 2019, 7:11:12 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Updation</h1>
        <form>
            <table>
                <tr>
                    <td><lable for="firstname">First Name:</lable></td> 
                    <td><input type="text" name="fname" id="firstname"></td>
                </tr>
                
                <tr>
                    <td><lable for="lastname">Last Name:</lable></td> 
                    <td><input type="text" name="lname" id="lastname"></td>
                </tr>
                
                <tr>
                    <td><lable for="email">Email:</lable></td> 
                    <td><input type="email" name="email" id="email"></td>
                </tr>
                
                <tr>
                    <td><lable for="password">Password:</lable></td> 
                    <td><input type="password" name="pwd" id="password"></td>
                </tr>
                
                <tr>
                    <td><lable for="contact">Contact:</lable></td> 
                    <td><input type="text" name="cont" id="contctno"></td>
                </tr>
                
                <tr>
                      <td><label for="gender">Gender:</label></td> 
                      <td><input type="radio" name="gender" value="Male"> Male
                        <input type="radio" name="gender" value="Female"> Female</td> 
                    </tr>
                    
                    <tr>
			<td><label for="dob">Date of Birth:</label></td>
			<td> 
                            <select id="dd" name="date">
                                <option value="dd">DD</option>
										
                                <script type="text/javascript">
                                    for(var i=1;i<32;i++)
                                    document.write("<option value='"+i+"'>" + i+"</option> ");
                                </script>
                            </select>
									
			<select id="mmm" name="date">
                                <option value="mmm">MMM</option>
				<option value="0">JAN</option>
				<option value="1">FEB</option>
				<option value="2">MAR </option>
				<option value="3">APR</option>
				<option value="4">MAY</option>
                                <option value="5">JUN</option>
				<option value="6">JUL</option>
				<option value="7">AUG</option>
				<option value="8">SEP</option>
				<option value="9">OCT</option>
				<option value="10">Nov</option>
                                <option value="11">DEC</option>
			</select>
								
                            <select id="yyyy" name="date">
			<option value="yyyy"selected>YYYY</option>
										
			<script type="text/javascript">
	var dt= new Date();
	for(var i=1979;i<=dt.getFullYear()+18;i++)
	document.write("<option value='"+i+"'>" + i+"</option> ");
	</script>
        
        <tr>
            <td><input type="submit" value="Update" /></a></td>
            <td><a href="view.jsp"> <input type="button" value="Back" /></a></td>
        </tr>
            </table>
        </form>
        
    </body>
</html>
