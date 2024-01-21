<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  if(session.getAttribute("username") == null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/detail.css">
    <title>Online Registration Form</title>
</head>
<body>
    <form action="saveDetails" method="POST">
        <% String childid = request.getParameter("childid");%>
        <input type="hidden"  name="childid" value="<%= childid %>" />
        <h2>Online Registration Form</h2>
        <h3>Personal Information (Male)</h3>
        <label for="male-name">Name:</label>
        <input type="text" id="male-name" name="male-name" required>
        <label for="male-dob">Date of Birth:</label>
        <input type="date" id="male-dob" name="male-dob" required>
        <label for="male-nationality">Nationality:</label>
        <input type="text" id="male-nationality" name="male-nationality" required>
        <label for="male-annual-income">Annual Income:</label>
        <select id="male-annual-income" name="male-annual-income" required>
            <option value="0-50000">0 - 50,000</option>
            <option value="50001-100000">50,001 - 100,000</option>
            <option value="100001-150000">100,001 - 150,000</option>
        </select>
        <label for="male-aadhaar-no">Aadhaar Number:</label>
        <input type="text" id="male-aadhaar-no" name="male-aadhaar-no" required>
        <!-- Female Information -->
        <h3>Personal Information (Female)</h3>
        <label for="female-name">Name:</label>
        <input type="text" id="female-name" name="female-name" required>
        <label for="female-dob">Date of Birth:</label>
        <input type="date" id="female-dob" name="female-dob" required>
        <label for="female-nationality">Nationality:</label>
        <input type="text" id="female-nationality" name="female-nationality" required>
        <label for="female-annual-income">Annual Income:</label>
        <select id="female-annual-income" name="female-annual-income" required>
            <option value="0-50000">0 - 50,000</option>
            <option value="50001-100000">50,001 - 100,000</option>
            <option value="100001-150000">100,001 - 150,000</option>
        </select>
        <label for="female-aadhaar-no">Aadhaar Number:</label>
        <input type="text" id="female-aadhaar-no" name="female-aadhaar-no" required>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
