package Bai3;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = "/students")

public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Student> students = new ArrayList<>();
        students.add(new Student("Nguyên Phương","SV023",6.9,"Đậu"));
        students.add(new Student("Ngọc Thơm","SV021",8.5,"Đậu"));
        students.add(new Student("Duy","SV022",4.0,"Rớt"));
        students.add(new Student("Văn Dân","SV025",8.0,"Đậu"));
        students.add(new Student("Chí Nhân","SV027",9.0,"Đậu"));

        request.setAttribute("students",students);
        request.getRequestDispatcher("students.jsp").forward(request,response);
    }
}
