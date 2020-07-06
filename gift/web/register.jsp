<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2020/6/14
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <link type="text/css" rel="stylesheet" href="css/register.css">
</head>
<body>
    <div class="box-top" style="background:url('image/2.jpg');background-size: 100%">
        <div id="login">
            <form action="user" method="post">
                <input type="hidden" name="method" value="register">
                <table>
                    <caption>注册页面</caption>
                    <tr>
                        <td><input type="text" class="name" id="username" name="username" placeholder="用户名"/></td>
                    </tr>
                    <tr>
                        <td><input type="password" class="name" id="txt0" name="password" placeholder="密码"/><img src="image/1-0.png" class="yj" id="yj" onclick="Transform()"></td>
                    </tr>
                    <tr>
                        <td><input type="password" class="name" id="txt1" name="passwords" placeholder="确认密码"/><img src="image/1-0.png" class="yj" id="yjs" onclick="Transforms()"></td>
                    </tr>
                    <tr>
                        <td><input type="text" class="name" id="email" name="email" placeholder="email"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" class="name" id="phone" name="phone" placeholder="手机"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" class="name" id="QQ" name="QQ" placeholder="QQ"/></td>
                    </tr>
                </table>
                <input type="button" class="submit1" id="submit" value="注册" onclick="register()"/>
            </form>
        </div>
    </div>
<%--    <div id="box-button">--%>
<%--        <p class="button-1">礼品网</p>--%>
<%--        <p class="button-2">-引领世界潮流</p>--%>
<%--    </div>--%>
    <script type="text/javascript" src="js/register.js"></script>
</body>
</html>
