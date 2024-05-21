import java.io.IOException;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Cart")
public class Cart extends HttpServlet {
    private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        
        @SuppressWarnings("unchecked")
		Map<String, Double> cart = (Map<String, Double>) session.getAttribute("cart");
        
       
        request.setAttribute("cart", cart);
        
   
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }
}
