package Bai15;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LeaveRequestServlet",urlPatterns = "/leaveRequests")
public class LeaveRequestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<LeaveRequest> leaveRequests = new ArrayList<>();
        leaveRequests.add(new LeaveRequest("Văn Nam","2024-12-3","2024-12-06","Chờ Duyệt"));
        leaveRequests.add(new LeaveRequest("Ngọc Thơm","2024-12-04","2024-12-07","Đã Duyệt"));
        leaveRequests.add(new LeaveRequest("Văn Dân","2024-12-06","2024-12-09","Đã Duyệt"));
        leaveRequests.add(new LeaveRequest("Tuấn Minh","2024-12-01","2024-12-10","Chờ Duyệt"));
        leaveRequests.add(new LeaveRequest("Nguyên Phương","2024-12-20","2024-12-22","Đã Duyệt"));
        request.setAttribute("leaveRequests",leaveRequests);
        request.getRequestDispatcher("leaveRequests.jsp").forward(request,response);
    }
}
