import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class availableChild extends HttpServlet {
    Connection con;
    Statement stmt;
    ResultSet rs;
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
         PrintWriter out = response.getWriter();
          out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet availableChild</title>");            
                out.println("</head>");
                out.println("<body>");
        HttpSession session = request.getSession();
         try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adoption","root","1998");
            stmt = con.createStatement();
            String sql = "select * from available_child;";

            rs = stmt.executeQuery(sql);
            out.println("<center>");
            out.println("<table border='1' width='70%' style='border-collapse: collapse;'>");
            out.println("<thead>");
            out.println("<td>Child Id </td>");
            out.println("<td>Child Name </td>");
            out.println("<td>Child Age </td>");
            out.println("<td>Gender </td>");
            out.println("<td>Availability </td>");
            out.println("<td>Image </td>");
            out.println("<td>Process </td>");
            out.println("</thead>");
            out.println("<tbody>");
            
            while(rs.next()){
                out.println("<tr>");
                out.println("<td> " + rs.getString("childid") + " </td>");
                out.println("<td> " + rs.getString("name") + " </td>");
                out.println("<td> " + rs.getString("age") + " </td>");
                out.println("<td> " + rs.getString("gender") + " </td>");
                out.println("<td> " + rs.getString("status") + " </td>");
                out.println("<td> <img src='images/" + rs.getString("image") + "' width='150px' height='150px' /> </td>");
                out.println("<td><a href='detail.jsp?childid=" + Integer.parseInt(rs.getString("childid")) + "'>Adopt</a></td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("</center>");
        }catch(ClassNotFoundException | SQLException e){
            out.println(e.getMessage());
        }
        out.println("</body>");
        out.println("</html>");
    }
}
