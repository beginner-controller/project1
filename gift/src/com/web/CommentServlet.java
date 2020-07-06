package com.web;

import com.service.CommentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CommentServlet",urlPatterns = "/comment")
public class CommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("nicheng");
        String textarea = request.getParameter("textarea");

        CommentService commentService = new CommentService();

        boolean bool = false;
        try {
            bool = commentService.tetxarea(name,textarea);
            bool = commentService.name();
//            request.setAttribute("ValueA",names);
//            request.getRequestDispatcher("comment.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (bool == true){
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }else {
            response.sendRedirect(request.getContextPath() + "/register.jsp");
        }
    }
}
