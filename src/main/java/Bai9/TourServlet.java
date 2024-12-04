package Bai9;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TourServlet",urlPatterns = "/tours")

public class TourServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Tour> tours = new ArrayList<>();
        tours.add(new Tour("Tour Nha Trang","Nha Trang","2024-12-09",4500000,"Còn Chỗ"));
        tours.add(new Tour("Tour Huế","Huế","2024-12-24",7000000,"Hết Chỗ"));
        tours.add(new Tour("Tour Đà Lạt","Đà Lạt","2025-01-04",15000000,"Còn Chỗ"));
        tours.add(new Tour("Tour Hà Nội","Hà Nội","2025-02-10",8000000,"Còn Chỗ"));
        tours.add(new Tour("Tour Trung Quốc","Trung Quốc","2025-01-18",25000000,"Hết Chỗ"));
        request.setAttribute("tours",tours);
        request.getRequestDispatcher("tours.jsp").forward(request,response);

    }
}
