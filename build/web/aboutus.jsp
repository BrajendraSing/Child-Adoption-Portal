<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/aboutus.css">
	<title>About Us</title>
            <link rel="stylesheet" href="css/style.css">   
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
                       <li><a href="logout" style="color:red;">Logout</a></li>  
                   <% 
                    }else{
                    %>
                    <li><a href="login.html">Already Registered</a></li>
                    <li><a href="signup.html">New Registering</a></li>
                    <% } %>
            </ul>
        </nav>
    </header>
	<section class="about">
	<h1>About Us</h1>
	<div class="about-info">
        <div class="about-img">
            <img src="images/about.jpeg" alt="about image">
        </div>
<div class="container">
    <p>At our Child Adoption Portal, we stand committed to creating brighter futures for children and loving families through the gift of adoption. Our mission is rooted in providing a safe, supportive, and nurturing environment for every child seeking a loving home.</p>
    <p>We believe that every child deserves stability, care, and the opportunity to thrive in a secure family setting. Our dedicated team works tirelessly to facilitate the adoption process, guiding families with compassion and expertise at every step.</p>
    <p>With a focus on transparency, integrity, and ethical practices, we aim to connect prospective parents with children in need, fostering meaningful relationships built on trust and understanding. Our portal serves as a bridge, bringing together individuals and families, fostering a sense of belonging and unity.</p>
    <p>At the heart of our endeavor lies the belief that every adoption journey is unique, and we are here to provide unwavering support, guidance, and resources to make this transformative experience a fulfilling and joyous one for both children and their adoptive families.</p>
    <p>Join us in creating new beginnings, spreading love, and making lifelong connections through the life-changing gift of adoption.</p>
  </div></div>
	</section>
	<section class="team">
        <h1>Meet Our Team</h1>
        <div class="team-cards">
        <!-- Card 1 -->
        <div class="card">
        <div class="card-img">
                <img src="images/aman.jpeg" alt="User 1">
        </div>
        <div class="card-info">
        <h2 class="card-name">Aman Pandey</h2>
        <p class="card-role">23MCA0146</p>
        <p class="card-email">aman.pandey2023@vitstudent.ac.in</p>
        <p><button class="button">Contact</button></p>
        </div>
        </div>

        <!-- Card 2 -->
        <div class="card">
        <div class="card-img">
        <img src="images/brajendra.jpg" alt="User 2">
        </div>
        <div class="card-info">
        <h2 class="card-name">Brajendra Singh</h2>
        <p class="card-role">23MCA144</p>
        <p class="card-email">brajendra.singh2023@vitstudent.ac.in</p>
        <p><button class="button">Contact</button></p>
        </div>
        </div>
        <!-- Card 3 -->
        <div class="card">
        <div class="card-img">
        <img src="images/yash.jpeg" alt="User 3">
        </div>
        <div class="card-info">
        <h2 class="card-name">Yash Kushwaha</h2>
        <p class="card-role">23MCA0155</p>
        <p class="card-email">yash.kushwaha2023@vitstudent.ac.in</p>
        <p><button class="button">Contact</button></p>
        </div>
        </div>
        </div>
	</section>
	<footer>
        <p>© 2023 Child Adoption Portal. All Rights Reserved.</p>
	</footer>
</body>
</html>
