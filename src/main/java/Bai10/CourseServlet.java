package Bai10;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CourseServlet", urlPatterns = "/courses")

public class CourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Course> courses = new ArrayList<>();
        courses.add(new Course("Cơ Sở Dữ Liệu Nâng Cao","Lê Hồng Duy",48,3000000));
        courses.add(new Course("Lập Trình Phân Tán","Cấn Tuấn Anh",50,3000000));
        courses.add(new Course("Tiếng Anh Giao Tiếp","Hồng Nhung",60,4000000));
        courses.add(new Course("Phát Triển Ứng Dụng Web","Cấn Tuấn Anh",40,3000000));
        courses.add(new Course("Cơ Sở Dữ Liệu","Phí Tú",45,3000000));

        request.setAttribute("courses",courses);
        request.getRequestDispatcher("courses.jsp").forward(request,response);

    }
}
