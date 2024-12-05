package Bai16;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PatientServlet",urlPatterns = "/patients")

public class PatientServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Patient> patients = new ArrayList<>();
        patients.add(new Patient("Văn Nam",22,"Viêm Phế Quản","2024-10-30","Đã Xuất Viện"));
        patients.add(new Patient("Lan Anh",18,"Viêm Phổi","2024-12-04","Đang Điều Trị"));
        patients.add(new Patient("Bảo Ngọc",15,"Đau Mắt Đỏ","2024-12-01","Đã Xuất Viện"));
        patients.add(new Patient("Linh",12,"Cảm Cúm","2024-10-24","Đã Xuất Viện"));
        patients.add(new Patient("Phương Anh",25,"Đau Dạ Dày","2024-12-05","Đang Điều Trị"));

        request.setAttribute("patients",patients);
        request.getRequestDispatcher("patients.jsp").forward(request,response);
    }
}
