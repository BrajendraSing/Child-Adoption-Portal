import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class signup extends HttpServlet {
Connection con;
Statement stmt;
ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet signup</title>");            
        out.println("</head>");
        out.println("<body>");
            
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("contact");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmPassword");
        
        if(!name.trim().isEmpty() && !email.trim().isEmpty() && !mobile.trim().isEmpty() && !address.trim().isEmpty() && !password.trim().isEmpty() && !confirmpassword.trim().isEmpty()){
           if(password.equals(confirmpassword)){
                try{
                Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adoption","root","1998");
                stmt = con.createStatement();
                String sql = "insert into user(name,email,mobile,address,password) values('"+name+"','"+email+"','"+mobile+"','"+address+"','"+password+"');";
                stmt.executeUpdate(sql);
                out.println("<h1>Data Inserted successfully</h1>");
                out.println("<h1>Go to Home page</h1>");
                out.println("<a href='index.jsp'>Home</a>");
            }catch(Exception e){
                out.println(e.getMessage());
            }
           }else{
               out.println("<h1>Password and confirm password are not same</h1>");
           }
        }else{
            out.println("<h1>All fields are mandatory</h1>");
        }
            out.println("</body>");
            out.println("</html>");
    }
}
