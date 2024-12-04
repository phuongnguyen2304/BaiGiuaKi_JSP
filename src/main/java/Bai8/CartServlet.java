package Bai8;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartServlet",urlPatterns = "/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CartItem> cartItems = new ArrayList<>();
        cartItems.add(new CartItem("Bánh",53000,7));
        cartItems.add(new CartItem("Trà Quất",15000,8));
        cartItems.add(new CartItem("Sữa",35000,3));
        cartItems.add(new CartItem("Mì Tômg",8000,15));

        request.setAttribute("cartItems", cartItems);
        double total = 0;
        for (CartItem item : cartItems) {
            total += item.getQuantity() * item.getPrice();
        }
        request.setAttribute("total", total);
       request.getRequestDispatcher("cart.jsp").forward(request,response);
    }
}
