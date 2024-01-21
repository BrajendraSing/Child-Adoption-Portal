import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class processLogin extends HttpServlet {
    Connection con;
    Statement stmt;
    ResultSet rs;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if(!email.trim().isEmpty() && !password.trim().isEmpty()){
           try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adoption","root","1998");
                stmt = con.createStatement();
                String sql = "select * from user where email = '" + email + "' and password = '" + password + "';";
                out.println(sql);
        
                rs = stmt.executeQuery(sql);
                if(rs.next()){
                    String name = rs.getString("name");
                    String user_id = rs.getString("userid");
                    
                    session.setAttribute("username", name);
                    session.setAttribute("userid", user_id);
                    
                    response.sendRedirect("index.jsp");
           
                }else{
                    out.println("Invalid Credentials");
                }
        
            }catch(IOException | ClassNotFoundException | SQLException e){
                   out.println(e.getMessage());
            }
        }else{
             out.println("All fields are mandatory");
        }       
    }
}
