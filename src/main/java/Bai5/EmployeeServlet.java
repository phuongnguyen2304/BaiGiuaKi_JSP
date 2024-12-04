package Bai5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/employees")

public class EmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee("Nguyên Phương","Tester","Nhân Viên",10000000,"Đang làm"));
        employees.add(new Employee("Thanh Nga","Kế Toán","Kế Toán Trưởng",20000000,"Đang làm"));
        employees.add(new Employee("Đình Kiên","Phòng Kỹ Thuật","Kỹ Sư",17000000,"Nghỉ việc"));
        employees.add(new Employee("Kim Thuỷ","Lập trình","Nhân viên",15000000,"Đang làm"));
        employees.add(new Employee("Linh Trang","Phòng Nhân Sự","Trưởng Phòng",14000000,"Nghỉ việc"));

        request.setAttribute("employees",employees);
        request.getRequestDispatcher("employees.jsp").forward(request,response);


    }
}
