package Bai13;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "VoteServlet",urlPatterns = "/votes")

public class VoteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Vote> votes = new ArrayList<>();
            votes.add(new Vote("Bạn thích mùa nào nhất?", new String[]{"Xuân", "Hạ", "Thu", "Đông"}, new int[]{150, 200, 100, 50}));
            votes.add(new Vote("Bạn thích món ăn nào nhất?", new String[]{"Phở", "Bún Chả", "Bánh Mì", "Nem"}, new int[]{300, 150, 200, 100}));

            request.setAttribute("votes",votes);
            request.getRequestDispatcher("votes.jsp").forward(request,response);

        }catch (Exception e){
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing your request.");
        }

    }
}
