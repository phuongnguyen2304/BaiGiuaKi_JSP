package Bai7;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AccountServlet",urlPatterns = "/accounts")

public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Account> accounts = new ArrayList<>();
        accounts.add(new Account("9022999","Bảo Thiên",50000,"Đóng"));
        accounts.add(new Account("83339922","Khương Thảo",8000000,"Hoạt động"));
        accounts.add(new Account("578995554","Thanh Nga",30000000,"Hoạt động"));
        accounts.add(new Account("29997733","Văn Nam",100000,"Đóng"));
        accounts.add(new Account("72299911","Nguyên Phương",2000000,"Hoạt động"));

        request.setAttribute("accounts",accounts);
        request.getRequestDispatcher("accounts.jsp").forward(request, response);

    }
}
