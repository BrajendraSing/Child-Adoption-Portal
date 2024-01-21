import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
public class saveDetails extends HttpServlet {
    Connection con;
    Statement stmt;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      HttpSession session = request.getSession();
      
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Data Saved</title>");            
        out.println("</head>");
        out.println("<body>");
        try{
            
            int childid = Integer.parseInt(request.getParameter("childid"));
            int userid = Integer.parseInt((String)session.getAttribute("userid"));
            String m_name = request.getParameter("male-name");
            String m_dob = request.getParameter("male-dob");
            String m_nationality = request.getParameter("male-nationality");
            String m_income = request.getParameter("male-annual-income");
            String m_aadhar = request.getParameter("male-aadhaar-no");
            String f_name = request.getParameter("female-name");
            String f_dob = request.getParameter("female-dob");
            String f_nationality = request.getParameter("female-nationality");
            String f_income = request.getParameter("female-annual-income");
            String f_aadhar = request.getParameter("female-aadhaar-no");
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adoption","root","");
            String sql = "insert into registration_details(m_name,m_dob,m_nationality,m_income,m_aadhar,f_name,f_dob,f_nationality,f_income,f_aadhar,userid,childid) values('" + m_name + "',' " + m_dob + "',' " + m_nationality + "',' "+m_income+"','"+m_aadhar+"','"+f_name+"','"+f_dob+"','"+f_nationality+"','"+f_income+"','"+f_aadhar+"',"+userid+","+childid+");";
            stmt = con.createStatement();
            
            int affected = stmt.executeUpdate(sql);
            if(affected > 0){
            out.println("<h1>Request Submitted successful<br>Please visit our center</h1>");
            out.println("<a href='index.jsp'>Home</a>");
            }else{
                out.println("<h1>Something went wrong</h1>");
            }
        }catch(Exception e){
            out.println(e.getMessage());
        }
        out.println("</body>");
        out.println("</html>");
    }
}
