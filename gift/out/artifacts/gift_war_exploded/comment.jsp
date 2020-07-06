<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2020/6/18
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言评论</title>
    <link rel="stylesheet" href="css/comment.css">
</head>
<body onload="showImage(0)">
    <div class="box-one">
        <p id="name">人生爆炸</p>
        <a href="Home.jsp" class="box-one-a">首页</a>
        <a href="commodity.jsp" class="box-one-a">礼物攻略</a>
        <a href="" class="box-one-a">一对一定制服务</a>
        <a href="Program.jsp" class="box-one-a">惊喜方案策划</a>
        <a href="comment.jsp" class="box-one-a">留言板</a>
    </div>
    <div class="red"></div>
    <span>首页 > 留言板</span>
    <div class="box-two">
        <div class = "box-two-box1">
            <div class="fengexian-01"></div>
<%--            <form action="comment" method="post">--%>
                <%--        头像和昵称--%>
                <div class="box-two-one">
<%--                    <input type="text" name="test" id="test">--%>
                    <%--            默认头像--%>
                    <div class="box-two-one-img" style="background-image:url(image/woman.jpg)"></div>
                    <p class="name-p">昵称:</p><input type="text" id="box-two-name" class="box-two-name" name="nicheng" placeholder="请输入您的昵称">
                </div>
                <textarea name="textarea" class="textarea" id="textarea" placeholder="不说几句再走嘛。。。"></textarea><br>
                <input type="button" id="button" class="button" value="我来评论" onclick="get()">
<%--            </form>--%>
            <h5 class="pinglun">评论</h5>
            <div class="fengexian0"></div>
<%--            <input type="button" id="button-test" value="刷新评论" onclick="get()">--%>
            <div id="comment" class="comment">
                <ul>
                </ul>
            </div>
        </div>
        <div class = "box-two-box2">
            <div class="fengexian-11"></div>
            <table>
                <tr>
                    <td><a class="td-a" href="#" style="background-color: #fff8dc;border: 1px solid #ffdead;">精品礼物</a></td>
                    <td><a class="td-a" href="#" style="background-color: #ccffff;border: 1px solid #66ffff;">定制服务</a></td>
                    <td><a class="td-a" href="#" style="background-color: #ffccff;opacity: 0.9;border: 1px solid #ff66ff;">惊喜策划</a></td>
                </tr>
                <tr>
                    <td><a class="td-a" href="#" style="background-color: #ffccff;opacity: 0.9;border: 1px solid #ff66ff;">网站首页</a></td>
                    <td><a class="td-a" href="#" style="background-color: #fff8dc;border: 1px solid #ffdead;">留言板</a></td>
                    <td><a class="td-a" href="#" style="background-color: #ccffff;border: 1px solid #66ffff;">惊喜礼物</a></td>
                </tr>
            </table>
            <div class="box-two-box2-div1">
                <P class="box-two-box2-p">最新礼品</P>
                <div class="fengexian101"></div>
                <div class="image-one">
                    <img id="pic1" src="image/img1.jpg" alt="">
                    <ul class="ul-1">
                        <li class="li-1" id="1" onmouseover="showImage(1)" onmouseout="showOut()"></li>
                        <li class="li-1" id="2" onmouseover="showImage(2)" onmouseout="showOut()"></li>
                        <li class="li-1" id="3" onmouseover="showImage(3)" onmouseout="showOut()"></li>
                        <li class="li-1" id="4" onmouseover="showImage(4)" onmouseout="showOut()"></li>
                        <li class="li-1" id="5" onmouseover="showImage(5)" onmouseout="showOut()"></li>
                    </ul>
                </div>
            </div>
            <div class="box-two-box2-div2">
                <P class="box-two-box2-p">友情链接</P>
                <div class="fengexian10"></div>
                <div class="lianjie">
                    <li><a href="#">baidu百度</a></li>
                    <li><a href="#">imooc慕课网</a></li>
                    <li><a href="#">zhihu知乎</a></li>
                    <li><a href="#">哔哩哔哩</a></li>
                    <li><a href="#">runoob菜鸟</a></li>
                </div>
            </div>
        </div>
    </div>
<%--    <%--%>
<%--        String s =(String)request.getAttribute("ValueA");--%>
<%--    %>--%>
<%--    <script>--%>
<%--        var test = document.getElementById("test");--%>
<%--        var name = "<%=s %>";--%>
<%--        test.value = name;--%>

<%--        // if(name != ""){--%>
<%--        // var li = document.createElement('li');--%>
<%--        // li.innerText = test1;--%>
<%--        // ul.appendChild(li);--%>
<%--        // }--%>
<%--    </script>--%>
<script type="text/javascript" src="js/comment.js"></script>
</body>
</html>
