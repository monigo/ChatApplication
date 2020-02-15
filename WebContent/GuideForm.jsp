<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Guide Form</title>
	<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		* {box-sizing: border-box}
		
		/* Full-width input fields */
		input[type=text], input[type=password] {
		  width: 100%;
		  padding: 15px;
		  margin: 5px 0 25px 0;
		  display: inline-block;
		  border: none;
		  background: #f2f1f1;
		}
		
		input[type=text]:focus, input[type=password]:focus {
		  background-color: #ddd;
		  outline: none;
		}
		
		hr {
		  border: 1px solid #f1f1f1;
		  margin-bottom: 25px;
		}
		
		/* Set a style for all buttons */
		button {
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		  opacity: 0.9;
		}
		
		button:hover {
		  opacity:.3;
		}
		
		/* Extra styles for the cancel button */
		.cancelbtn {
		  padding: 14px 20px;
		  background-color: #555555;
		}
		
		/* Float cancel and signup buttons and add an equal width */
		.cancelbtn, .signupbtn {
		  float: left;
		  width: 25%;
		}
		
		/* Add padding to container elements */
		.container {
		  padding: 50px;
		}
		
		/* Clear floats */
		.clearfix::after {
		  content: "";
		  clear: both;
		  display: table;
		}
		
		/* Change styles for cancel button and signup button on extra small screens */
		@media screen and (max-width: 300px) {
		  .cancelbtn, .signupbtn {
		    width: 100%;
		  }
		}

	</style>
</head>
<body>
	<%
		if(session.getAttribute("email")==null){
			response.sendRedirect("Login.jsp");
		}
	%>
<form action="GuideForm" method="post"  style="border:1px solid #ccc" class="try">
	  <div class="container">
	    <h1>Guide Information</h1>
	    <p>Please fill in this form to register as Guide.</p>
	    <hr>
	
	    <label for="name"><b>Name</b></label>
	    <input type="text" placeholder="Enter Name" name="name" required>
	    <br>
	
	    <label for="email"><b>Email</b></label>
	    <input type="text" placeholder="Enter Email" name="email" required> <br>
	
	    <label for="iamge"><b>Image</b></label>
	    <input type="text" placeholder="Insert Image" name="image" required> <br>
	
	    <label for="phone_no"><b>Contact No.</b></label>
	    <input type="text" placeholder="Enter Phone No" name="phone_no" required>
	
	    <label for="city"><b>Tour City</b></label>
	    <input type="text" placeholder="Enter Tour City" name="city" required> <br>
	
	    <label for="hobby"><b>Hobbies/Interests</b></label>
	    <input type="text" placeholder="Enter Hobbies or Interests" name="hobby" required> <br>
	
	
	    <label for="places"><b>Visiting Places</b></label>
	    <input type="text" placeholder="Enter Places You have been" name="places" required> <br>
	
	    <label for="about_tour"><b>About Tour</b></label>
	    <input type="text" placeholder="Tour Info" name="about_tour" required> <br>
	
	    <label for="fee"><b>Charges</b></label>
	    <input type="text" placeholder="Enter charge per hour" name="fee" required> <br>
	
	
	    <label for="languages"><b>Languages Known</b></label>
	    <input type="text" placeholder="Enter languages you can guide" name="languages" required> <br>
	
	    <div class="clearfix">
	      <button type="button" class="cancelbtn">Cancel</button>
	      <button type="submit" class="signupbtn">Register  </button>
	    </div>
	  </div>
  
</form>

</body>
</body>
</html>