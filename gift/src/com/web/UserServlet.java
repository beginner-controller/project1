package com.web;

import com.model.User;
import com.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserServlet",urlPatterns = "/user")
public class UserServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");
        if ("login".equals(method)){
            login(request,response);
        }else if ("register".equals(method)){
            register(request,response);
        }
    }

    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //        保证传值不乱码
        request.setCharacterEncoding("utf-8");
//        将数据传到model层
        User user = new User();
//        获取数据
        user.setName(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
//        调用service逻辑层
        UserService userService = new UserService();
        boolean bool = false;
        try {
            bool = userService.login(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (bool == true){
            response.sendRedirect(request.getContextPath() + "/Home.jsp");
        }else {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("登录失败");
        }
    }

    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //        传进来的字符集不乱码
        request.setCharacterEncoding("utf-8");
//        将数据传到model层
        User user = new  User();
//        获取数据
        user.setName(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        user.setEmail(request.getParameter("email"));
        user.setPhone(request.getParameter("phone"));
        user.setQQ(request.getParameter("QQ"));

        UserService userService = new UserService();
        boolean register = userService.register(user);
        if (register) {
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("注册失败");
        }
    }

}
