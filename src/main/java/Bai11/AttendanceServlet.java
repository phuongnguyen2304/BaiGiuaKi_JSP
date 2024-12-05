package Bai11;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AttendanceServlet",urlPatterns = "/attendance")

public class AttendanceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Attendance> attendanceList = new ArrayList<>();
        attendanceList.add(new Attendance("Nguyên Phương","2024-12-05",10,"Đã Hoàn Tất"));
        attendanceList.add(new Attendance("Văn Nam","2024-12-01",6,"Thiếu"));
        attendanceList.add(new Attendance("Ngọc Thơm","2024-12-04",7,"Đã Hoàn Tất"));
        attendanceList.add(new Attendance("Văn Dân","2024-12-03",8,"Đã Hoàn Tất"));
        attendanceList.add(new Attendance("Linh","2024-10-30",5,"Thiếu"));
        attendanceList.add(new Attendance("Bảo Ngọc","2024-12-02",12,"Đã Hoàn Tất"));
        request.setAttribute("attendanceList",attendanceList);
        request.getRequestDispatcher("attendance.jsp").forward(request,response);
    }
}
