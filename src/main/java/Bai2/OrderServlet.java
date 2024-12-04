package Bai2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "OrderServlet", urlPatterns = "/orders")

public class OrderServlet extends HttpServlet {
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Order> orders = new ArrayList<>();
        orders.add(new Order(1,"2024-12-04","Nguyên Phương","Chưa giao"));
        orders.add(new Order(2,"2024-11-30","Ngọc Thơm","Đã giao"));
        orders.add(new Order(3,"2024-07-23","Phương","Đã giao"));
        orders.add(new Order(4,"2024-12-01","Linh","Đã giao"));

        request.setAttribute("orders",orders);
        request.getRequestDispatcher("orders.jsp").forward(request,response);
    }
}
