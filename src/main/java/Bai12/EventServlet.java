package Bai12;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EventServlet",urlPatterns = "/events")

public class EventServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Event> events = new ArrayList<>();
        events.add(new Event("Ngày Nhà Giáo Việt Nam 20/11","2024-11-19 5:30PM","Hà Nội",70));
        events.add(new Event("Hội Nghị Công Nghệ Thông Tin","2024-12-02 10:00 AM","Hà Nội",200));
        events.add(new Event("Triển Lãm Sách","2024-10-30 8:30 AM","Hà Nội",250));
        events.add(new Event("20 Năm Thành Lập Trường","2024-11-30 9:00 AM","Hà Nội",150));
        request.setAttribute("events",events);
        request.getRequestDispatcher("events.jsp").forward(request,response);
    }
}
