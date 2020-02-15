<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Signup</title>
	
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

  <script>
    function checkPassword(form){
      passward1 = form.psw.value;
      passward2 = form.psw_repeat.value;

      if(passward1==passward2){
        return true;
      }
      else{
          alert("\npassword didnt matched !!!");
          return false;
      }
    }
  </script>

</head>
<body>
	
	<form action="Signup" method="post" onSubmit="return checkPassword(this)" style="border:1px solid #ccc">
	  <div class="container">
	    <h1>Sign Up</h1>
	    <p>Please fill in this form to create an account.</p>
	    <hr>
	
		<label for="name"><b>Name</b></label>
	    <input type="text" placeholder="Enter Name" name="name" required>
	    
	    <label for="email"><b>Email</b></label>
	    <input type="text" placeholder="Enter Email" name="email" required>
	
	    <label for="psw"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="psw" required>
	
	    <label for="psw_repeat"><b>Repeat Password</b></label>
	    <input type="password" placeholder="Repeat Password" name="psw_repeat" required>
	    
	    <label>
	      <input type="checkbox" name="remember" style="margin-bottom:25px"> Remember me
	    </label>
	    
	    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms and Privacy</a>.</p>
	
	    <div class="clearfix">
	      <button type="button" class="cancelbtn">Cancel</button>
	      <button type="submit" class="signupbtn">Sign Up</button>
	    </div>
	  </div>
	</form>
</body>
</html>