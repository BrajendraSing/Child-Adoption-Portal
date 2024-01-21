<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Child Adoption Website</title>

</head>

<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                
                 <li><a href="availableChild.html">Available Children</a></li>
                <li><a href="contact.html">Contact Us</a></li>
      
                <%
                    if(session.getAttribute("username") != null){
                  %>
                  <!--<li><a href="detail.html">Adoption Process</a></li>-->
                       <li><a href="logout" style="color:red;">Logout</a></li>  
                   <% 
                    }else{
                    %>
                    
                    <li><a href="login.html">Already Registered</a></li>
                    <li><a href="signup.html">New Registering</a></li>
                    <%
                    }
                %>
                
               
            </ul>
        </nav>
    </header>
    <div class="slider-frame">
        <div class="slide-images">
                <div class="img-container">
                    <img src="./image/img1.jpg">
                </div>
                <div class="img-container">
                    <img src="./images/img2.jpg">
                </div>
                <div class="img-container">
                    <img src="./images/img3.jpg">
                </div>
                <div class="img-container">
                    <img src="./images/img4.jpg">
                </div>
                <div class="img-container">
                    <img src="./images/img5.jpg">
                </div>

        </div>
    </div>
<center>
 <div class="content" style="text-align: left">
    <h1>Visit to the Child Adoption Center</h1>
    <p>After completing the registration process for child adoption, a visit to the adoption center is an essential step. During this visit, several important aspects are typically covered:</p><br><br>
   
    <strong>Verification and Confirmation:</strong> This involves reviewing and verifying documentation, possibly including identification, proof of income, references, and other related paperwork.<br><br>
    <strong>Child Assessment and Interaction:</strong> The adopting family may interact with the child and undergo a home assessment to ensure a suitable environment for the child.<br><br>
     <strong>Counseling and Guidance:</strong> Counseling sessions may be offered to prepare adopting parents for their responsibilities and provide information on the adoption process.<br><br>
     <strong>Finalization:</strong> The decision-making process takes place based on interactions and assessments, often concluding with the formalization of the adoption process.<br><br>
  
    <p>The visit plays a crucial role in ensuring the well-being and suitability of both the child and the adopting family. It finalizes legalities, provides support, and helps prepare the family for the responsibilities of adopting a child.</p>
  </div>
</center> 
          <footer>
		<p>© 2023 Child Adoption Portal. All Rights Reserved.</p>
	</footer>      
</body>
</html>
