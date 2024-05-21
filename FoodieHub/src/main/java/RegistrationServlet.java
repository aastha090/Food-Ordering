import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.tomcat.jakartaee.bcel.classfile.ClassFormatException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends jakarta.servlet.http.HttpServlet {
    private static final long serialVersionUID = 1L;
    private Connection conn;
    
    public RegistrationServlet() {
        super();
    }
    
    @Override
    public void init() throws ClassFormatException, ServletException {
        super.init();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodiehub", "root", "Work@09time");
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Database connection error", e);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        try {
            PreparedStatement ps = conn.prepareStatement("INSERT INTO users (name, address, email, password) VALUES (?, ?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            throw new ServletException("Database error", e);
        } finally {
            response.sendRedirect("login.jsp");
        }
    }
    
    @Override
    public void destroy() {
        super.destroy();
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
