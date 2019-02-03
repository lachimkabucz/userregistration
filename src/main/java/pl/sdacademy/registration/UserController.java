package pl.sdacademy.registration;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

    @WebServlet(name = "UserController", value = "/users")
    public class UserController extends HttpServlet {

        @Inject
        private UserService userService;

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            request.setAttribute("users", userService.getUsers());

            request.getRequestDispatcher("WEB-INF/users.jsp").forward(request, response);
        }
    }

