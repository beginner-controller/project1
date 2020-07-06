<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2020/6/14
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>用户登录</title>
    <link type="text/css" rel="stylesheet" href="css/index.css">
  </head>
  <body>
    <div class="box-top" style="background:url('image/2.jpg');background-size: 100%">
      <div id="login">
        <form action="user" method="post">
          <input type="hidden" name="method" value="login">
          <table>
            <caption>用户登录</caption>
            <tr>
              <td><input type="text" class="name" id="name"name="username" placeholder="用户名"/></td>
<%--              onfocus="this.value=''" onblur="this.value='用户名'"--%>
            </tr>
            <tr>
              <td><input type="password" class="password" id="password" name="password" placeholder="密码"/><img src="image/1-0.png" class="yj" id="yj" onclick="Transform()"></td>
<%--              onfocus="this.placeholder=''" onblur="this.placeholder='密码'"--%>
            </tr>
            <tr>
                <td><input type="checkbox" id="checkbox">记住用户名</td>
            </tr>
          </table>
          <input type="button" class="submit1" id="submit1" value="登录"  onclick="user()"/>
          <input type="button" class="submit2" value="注册" onclick="javascript:window.location.href='register.jsp'"/>
        </form>
      </div>
    </div>
  <script type="text/javascript" src="js/index.js"></script>
  </body>
</html>
