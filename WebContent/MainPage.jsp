<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Welcome</title>
	
	
	 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script>document.getElementsByTagName("html")[0].className += " js";</script>
  
  <link rel="stylesheet" href="assets/css/style.css">
  
		<style>
		  .wrapper{
		      display:grid;
		      grid-template-columns:repeat(2, 1fr);
		      grid-gap:1em;
		      grid-auto-rows:325px;
		      margin: 50px 290px 50px 290px;
		      
		    }
		
		    .wrapper > div{
		      background:#eee;
		      padding:1em;
		    }
		    .wrapper > div:nth-child(odd){
		      background:#ddd;
		
		    }
		
		    .card {
		    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		    max-width: 200px;
		    max-height: 325px;
		    margin:auto ;
		    text-align: center;
		    font-family: arial;
		    }
		
		    .title {
		    color: grey;
		    font-size: 8px;
		    }
		
		    button {
		    border: none;
		    outline: 0;
		    display: inline-block;
		    padding: 8px;
		    color: white;
		    background-color: rgb(173, 134, 180);
		    text-align: center;
		    cursor: pointer;
		    width: 50%;
		    font-size: 12px;
		    }
		
		
		    button:hover, a:hover {
		    opacity: 0.7;
		    }
		</style>
			
</head>
<body>
		<%
			response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");  /// apn client ko response object pr hi  kisi webpage ka header send krte h
		
			response.setHeader("pragma","no-cache"); /// http 1.0
			
			response.setHeader("Expires","0");// proxies server ko cache karne se rokne ke liye
		
			if(session.getAttribute("email")==null){
				response.sendRedirect("Login.jsp");
			}
		%>
		
		
		<header class="cd-main-header js-cd-main-header">
	    <div class="cd-logo-wrapper">
	      <a href="#0" class="cd-logo"><img src="assets/img/cd-logo.svg" alt="Logo"></a>
	     
	    </div>
	    
	    <div class="cd-search js-cd-search">
	      <form >
	        <input class="reset" type="search" placeholder="Search...">
	        
	      </form>
	      
	    </div>
	
	   
	    <button class="reset cd-nav-trigger js-cd-nav-trigger" aria-label="Toggle menu"><span></span></button>
	  
	    <ul class="cd-nav__list js-cd-nav__list">
	      
	      <li class="cd-nav__item cd-nav__item--has-children cd-nav__item--account js-cd-item--has-children">
	        <a href="#0">
	          <img src="assets/img/hacker_img.jpg" alt="avatar">
	          <span>Account</span>
	        </a>
	    
	        <ul class="cd-nav__sub-list">
	          
			  
			  <li class="cd-nav__sub-item"><a href="#0">My Account</a></li>
              <li class="cd-nav__sub-item"><a href="#0">Edit Account</a></li>
			  
			   <li class="cd-nav__sub-item">
		          <form action="Logout" method="post" >
					    <input type="submit" value="Logout">
				  </form>
			  </li>
				
	          
	        </ul>
	      </li>
	    </ul>
	  </header> <!-- .cd-main-header -->
	  
	  <main class="cd-main-content">
	    <nav class="cd-side-nav js-cd-side-nav">
	        <ul class="cd-side__list js-cd-side__list">
	            <li class="cd-side__item cd-side__item--has-children cd-side__item--overview js-cd-item--has-children">
	            <a href="#0">About</a>
	            
	            
	            </li>
	
	            
	        
	            <li class="cd-side__item cd-side__item--has-children cd-side__item--comments js-cd-item--has-children">
	            <a href="GuideForm.jsp">Register As Guide</a>
	            
	            </li>
	        </ul>
	        
	        <ul class="cd-side__list js-cd-side__list">
	            <li class="cd-side__item cd-side__item--has-children cd-side__item--bookmarks js-cd-item--has-children">
	            <a href="#0">Popular</a>
	            </li>
	
	            <li class="cd-side__item cd-side__item--has-children cd-side__item--images js-cd-item--has-children">
	            <a href="#0">Images</a>
	            </li>
	        
	            <li class="cd-side__item cd-side__item--has-children cd-side__item--users js-cd-item--has-children">
	            <a href="#0">Things To Do</a>
	            </li>
	
	        </ul>
	        
	        </nav>
	    
	    <div class="cd-content-wrapper">
	      <div class="text-component text-center">
	
	        
	        <div class="wrapper">
	
	                <div class="wrapper">
	
	                        <!-- <?php
	                        $conn = new mysqli("localhost","root", "", "touristguidedb") or die($conn);
	                      
	                        $sql="select Name,City,Interests,Fee from guidedetails";
	                        $result=$conn->query($sql);
	                        if($result->num_rows >0){
	                            while($row=$result->fetch_object()){
	                                  echo "<div class='card'>
	                                  <img src='hacker_img.jpg' alt='John' style='width:100%'>
	                                  <h6>".$row->Name."</h6>
	                                  <p class='title'>".$row->City."</p>
	                                  <p class='title'>".$row->Interests."</p>
	                                  <p><button>Contact</button></p>
	                              </div>";
	                              }
	                        }
	                        else{
	                            echo "table is empty";
	                        }
	                        $conn->close();
	                        ?> -->
	                </div>
	
	
	            
	
	        </div>
	        
	      </div>
	    </div> <!-- .content-wrapper -->
	  </main> <!-- .cd-main-content -->
	  <script src="assets/js/util.js"></script> <!-- util functions included in the CodyHouse framework -->
	  <script src="assets/js/menu-aim.js"></script>
	  <script src="assets/js/main.js"></script>
</body>
</html>