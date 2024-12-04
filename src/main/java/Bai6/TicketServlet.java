package Bai6;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TicketServlet", urlPatterns = "/tickets")

public class TicketServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Ticket> tickets = new ArrayList<>();
        tickets.add(new Ticket("V06","Mèo Ma Bê Tha","9:00 AM",60000));
        tickets.add(new Ticket("V09","Chiến Địa Tử Thi","10:00 PM",90000));
        tickets.add(new Ticket("V86","Quỷ Treo Đầu","11:00 PM",120000));
        tickets.add(new Ticket("V05","Công Tử Bạc Liêu","10:00 AM", 80000));
        tickets.add(new Ticket("V04","Tết Âm Hồn","12:00 PM",150000));
        tickets.add(new Ticket("V03","Đời Nhạt","9:30 AM",100000));

        request.setAttribute("tickets",tickets);
        request.getRequestDispatcher("tickets.jsp").forward(request,response);



    }
}
