package sag;

import java.io.*;
import jakarta.servlet.http.*;

public class StartServlet extends HttpServlet {

    private String message;

    public void init() {
        message = "Hello World from Servlet!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}
