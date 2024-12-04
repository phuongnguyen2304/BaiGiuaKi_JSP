package Bai1.JSP;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


    @WebServlet(name = "ProductServlet", urlPatterns = "/products")

    public class ProductServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
            List<Product> products = new ArrayList<>();
            products.add(new Product("Bánh",55000,"Bánh1","https://th.bing.com/th/id/OIP.NLRzBPRrXbPI1EzIUCWADwHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
            products.add(new Product("Sữa",35000,"Sữa TH", "https://th.bing.com/th/id/OIP.NLRzBPRrXbPI1EzIUCWADwHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
            products.add(new Product("Bim", 10000,"Bim Poca","https://th.bing.com/th/id/OIP.NLRzBPRrXbPI1EzIUCWADwHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
            products.add(new Product("Nước giải khát",15000,"Trà bí đao","https://th.bing.com/th/id/OIP.NLRzBPRrXbPI1EzIUCWADwHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));

            request.setAttribute("products",products);
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
    }


