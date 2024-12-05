package Bai14;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CarServlet",urlPatterns = "/cars")
public class CarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Car> cars = new ArrayList<>();
        cars.add(new Car("Toyota Camry", "Toyota", 700000000, "Còn hàng"));
        cars.add(new Car("Honda Civic", "Honda", 600000000, "Hết hàng"));
        cars.add(new Car("Mazda 3", "Mazda", 650000000, "Còn hàng"));
        cars.add(new Car("Ford Ranger", "Ford", 800000000, "Còn hàng"));

        request.setAttribute("cars",cars);
        request.getRequestDispatcher("cars.jsp").forward(request,response);
    }
}
