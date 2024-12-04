package Bai4;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BookServlet",urlPatterns = "/books")

public class BookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Book> books = new ArrayList<>();
        books.add(new Book("Java Programming", "James Gosling", "Programming", 1996));
        books.add(new Book("Trốn Lên Mái Nhà Để Khóc", "Lam", "Tâm trạng", 2022));
        books.add(new Book("Clean Code", "Robert C. Martin", "Programming", 2008));
        books.add(new Book("Đừng Cố Giả Vờ Ổn", "Dae - Ho Choi", "Tâm trạng", 2023));

        request.setAttribute("books", books);
        request.getRequestDispatcher("books.jsp").forward(request, response);
    }



}
