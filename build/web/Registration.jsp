<html >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
		
			*{
				margin : 5px;
				padding : 3px;
			}
			
			body{
				background-image : url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo4_QAMKOjGMr0_5VXoCgLLd6I1REGH_NphxYju23tEF7po66E);
				background-size : cover;
				background-attachment : fixed;
				font-family : Times New Roman;
			}
	
</style>
<!--validation-->
<script typ="text/javascript">

		var namepattern=/^[a-zA-Z]+$/
		var phonepattern = /^\d{10}$/
		var emailpattern =/^[a-zA-Z][a-zA-Z0-9_]*(\.[a-zA-Z0-9_]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.([a-zA-Z]{2,4})$/
		var emailpattern2 =/^[a-zA-Z][a-zA-Z0-9_]*(\.[a-zA-Z0-9_]+)*$/
		var idpattern=/^\d{6}$/;

		function fnm()
		{
			var firstnm=document.getElementById('firstname').value;
			if(firstnm == "")
			{
				document.getElementById('pointfn').innerHTML="Please enter first name.";
			}
			else
			{
				document.getElementById('pointfn').innerHTML="";
			}
		}
		
		function lnm()
		{
			var lastnm=document.getElementById('lastname').value;
			if(lastnm == "")
			{
				document.getElementById('pointln').innerHTML="Please enter last name.";
			}
			else
			{
				document.getElementById('pointln').innerHTML="";
			}
		}
		 
		function validateForm()
		{
			var x=document.forms["form1"]["firstname"];
			if (x.value=="")
			   {
			  
				  document.getElementById('pointfn').innerHTML="Please enter first name.";
					x.focus();
				  return false;
			   }
			 
			else if(x.value.length>20)
			   {
				  x.value="";
				  document.getElementById('pointfn').innerHTML="Please enter less than 20 characters.";
				  x.focus();
				  return false;
			   }
			else if ((!namepattern.test(x.value)))
			   {
				  document.getElementById('pointfn').innerHTML="Please enter only alphabets.";
				  x.value="";
				  x.focus();
				  return false;
			   }
				document.getElementById('pointfn').innerHTML='';

				
			x=document.forms["form1"]["lastname"];

			if(x.value=="")
				{
				  document.getElementById('pointln').innerHTML="Please enter Last name.";
				  x.focus();
				  return false;
				} 
			else if(x.value.length>20)
				{
				  x.value="";
				  document.getElementById('pointln').innerHTML="Please enter less than 20 characters.";
				  x.focus();
				  return false;
				}
			else if (!namepattern.test(x.value))
				{
				  x.value="";
				  document.getElementById('pointln').innerHTML="Please enter only alphabets.";
				  x.focus();
				  return false;
				}
				document.getElementById('pointln').innerHTML="";
			 
			x=document.form1.email;
			if(x.value=="")
				{
				  x.value="";
				  document.getElementById('pointemail').innerHTML="Please enter email id.";
				  x.focus();
				  return false;
				}
			else if(!emailpattern.test(x.value))
				{
				  x.value="";
				  document.getElementById('pointemail').innerHTML="Please enter a valid email address..";
				  x.focus();
				  return false;
				}
				document.getElementById('pointemail').innerHTML="";
                                
                          x=document.form1.password;
			if(x.value=="")
				{
				  x.value="";
				  document.getElementById('pointpassword').innerHTML="Plaese enter the password";
				  x.focus();
				  return false;
				}
                        else if(x.value.length!=8)
                        {
                            x.value="";
                            document.getElementById('pointpassword').innerHTML="Password length is too short!!"
                            x.focus();
                            return false;
                        }
                            document.getElementById('pointpassword').innerHTML="";
				
			x=document.form1.contctno;
			if(x.value=="")
				{
				  x.value="";
				  document.getElementById('pointcontct').innerHTML="Please enter contact number.";
				  x.focus();
				  return false;
				}
			else if(isNaN(x.value))
				{
				  x.value="";
				  document.getElementById('pointcontct').innerHTML="Please enter only digits.";
				  x.focus();
				  return false;
				}
			else if(x.value.length!=10)
				{
				  x.value="";
				  document.getElementById('pointcontct').innerHTML="Please enter only 10 digits.";
				  x.focus();
				  return false;
				}
			else if(!phonepattern.test(x.value))
				{
				  x.value="";
				  document.getElementById('pointcontct').innerHTML="Please enter a valid contact number.";
				  x.focus();
				  return false;
				}
				document.getElementById('pointcontct').innerHTML="";
			 
			if((document.form1.gender[0].checked==false)&&(document.form1.gender[1].checked==false))
				{
				  document.form1.gender[0].focus();
				  document.getElementById('pointgendr').innerHTML='Please select a gender.';
				  return false;
				}
				document.getElementById('pointgendr').innerHTML='';
			 
			 
			var dd=document.form1.dd.value;
			var mmm=document.form1.mmm.value;
			var yyyy=document.form1.yyyy.value;
			if(!validdate(dd,mmm,yyyy))
				{
				  document.getElementById('pointdob').innerHTML="Plaese select a valid date.";
				  return false;
				} 
			 document.getElementById('pointdob').innerHTML="";

			return confirm("Do you want to submit the form?");
			 
			}
					
		function validdate(dd,mm,yyyy)
			{
				var dateobj = new Date(yyyy, mm, dd);
				var datecurrent= new Date();
				if((dateobj.getMonth()!=mm)||(dateobj.getDate()!=dd)||(dateobj.getFullYear()!=yyyy)||(dateobj>datecurrent))
					{
					   return false;
					}
					   return true;
			}
				 
		function confirmreset()
			{
				if(confirm("Do you want to reset the form?"))
					{
						 document.getElementById('pointfn').innerHTML="";
						 document.getElementById('pointln').innerHTML="";
                                                 document.getElementById('pointemail').innerHTML="";
                                                 document.getElementById('pointpassword').innerHTML="";
                                                 document.getElementById('pointcontct').innerHTML="";
						 document.getElementById('pointgendr').innerHTML="";
						 document.getElementById('pointdob').innerHTML="";
						 
						 return true;
					}
					else
						return false;


</script>
     
</head>

<body>
  <div class="container">
    <div class="content">
	<center>
	  <form name="form1"  method="post" action="ActionForm">
            <fieldset>
              <legend>Registration From</legend>
		<h1>Become A Member</h1>
						
		  <table border='0'>
                    <tr>
                      <td><label for="firstname">First Name:<sup style="color:#F00">*</sup> </label></td>
                      <td><input type="text" id="firstname" onkeyup="fnm()" name="fname"></td><td width="200px"><i style="color:red;" id="pointfn"></i></td>
                    </tr>
                    
                    <tr>
                      <td><label for="lastname">Last Name:<sup style="color:#F00">*</sup> </label></td>
                      <td><input type="text" id="lastname" onkeyup="lnm()" name="lname"></td><td width="200px"><i style="color:red;" id="pointln"></i></td>
                    </tr>
							 
                    <tr>
                      <td><label for="email">Email:<sup style="color:red;">*</sup> </label></td>
                      <td><input type="text" id="email" name="email"></td><td width="200px"><i style="color:red;" id="pointemail"></i></td>
                    </tr>
                    
                    <tr>
                      <td><label for="password">Password:<sup style="color:red;">*</sup> </label></td>
                      <td><input type="password" id="password" name="pwd"></td><td width="200px"><i style="color:red;" id="pointpassword"></i></td>
                    </tr>
							
                    <tr>
                      <td><label for="contctno">Contact Number:<sup style="color:#F00">*</sup> </label></td>
                      <td><input type="text" id="contctno" name="cont"></td><td width="200px"><i style="color:red;" id="pointcontct"></i></td>
                    </tr>
							
                    <tr>
                      <td><label for="gender">Gender:<sup style="color:#F00">*</sup> </label></td> 
                      <td><input type="radio" name="gender" value="Male"> Male
                        <input type="radio" name="gender" value="Female"> Female</td><td width="200px"> 
                          <i style="color:red;" id="pointgendr"></i></td>
                    </tr>
							
			<tr>
			<td><label for="dob">Date of Birth:<sup style="color:#F00">*</sup> </label></td>
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
	</select>
		</td>
	<td width="200px"><i style="color:red;" id="pointdob"></i></td>
	</tr>
							
						
						
	<tr>
	  <td></td><td><br/><input type="submit" onClick="return validateForm()" value="Submit">
	  <input type="reset" onClick="return confirmreset()">
         
          </td>
	</tr>
						 
	<tr>
	<td></td>
	<td style="font-size:12px;text-align:right;"><br/>
            <i style="color:red;font-size:12px;align:right;" >* - Mandatory Fields</i></td>
	</tr>
</table>
</fieldset>
</form>
</center>
 </div>
</div>


</body>
</html>


