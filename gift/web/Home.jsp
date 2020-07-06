<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2020/6/15
  Time: 0:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
    <link type="text/css" rel="stylesheet" href="css/Home.css">
</head>
<body onload="showImage(0)">
    <div class="box-one">
        <div class="image">
            <div class="login">
                <p class="login-1">Upto 30% off on All styles , Click here for More details</p>
                <a href="commodity.jsp" class="login-2">Click</a><br>
                <p class="login-3">EXQUISITE GIFT</p>
            </div>
            <div class="Home">
                <a href="index.jsp">LOGIN</a>
                <a href="register.jsp">REGISTER</a>
                <a href="Home.jsp">HOME</a>
                <a href="">CONTACT</a>
            </div>
            <div class="image-one">
                <img id="pic1" src="image/img1.jpg" alt="">
                <ul>
                    <li id="1" onmouseover="showImage(1)" onmouseout="showOut()"></li>
                    <li id="2" onmouseover="showImage(2)" onmouseout="showOut()"></li>
                    <li id="3" onmouseover="showImage(3)" onmouseout="showOut()"></li>
                    <li id="4" onmouseover="showImage(4)" onmouseout="showOut()"></li>
                    <li id="5" onmouseover="showImage(5)" onmouseout="showOut()"></li>
                </ul>
            </div>
            <div class="image-two">
                <img id="pic2" src="image/image1.jpg">
            </div>
        </div>
        <div class="shopping">
            <div class="p">
                <p id="p1">Shop With Us</p>
                <p id="p2">Handpicked Favourites just for you</p>
            </div><br>
            <div class="shopping-s">
                <div class="shopping-1">
                    <img class="shopping1" src="image/shopping1.jpg"><br>
                    <p class="txt-1">Hand Bags</p>
                </div>
                <div class="shopping-2">
                    <img class="shopping2" src="image/shopping2.jpg"><br>
                    <p class="txt-1">Shoes</p>
                </div>
                <div class="shopping-3">
                    <img class="shopping3" src="image/shopping3.jpg"><br>
                    <p class="txt-1">Watches</p>
                </div>
                <div class="shopping-4">
                    <img class="shopping4" src="image/shopping4.jpg"><br>
                    <p class="txt-1">Suits</p>
                </div>
                <div class="shopping-5">
                    <img class="shopping5" src="image/shopping5.jpg"><br>
                    <p class="txt-1">Accessories</p>
                </div>
                <div class="shopping-6">
                    <img class="shopping6" src="image/shopping6.jpg"><br>
                    <p class="txt-1">Fragrances</p>
                </div>
            </div>
        </div><br><br>
        <div class="Exclusive">
            <div class="made">
                <p class="lre-txt">WE PROVIDE YOU WITH EXQUISITE <br>PERSONAL PLANNING</p><br>
                <p class="lre-txt1">Visit our shop to see amazing creations from our designers.</p>
                <input type="button" id="button" value="Contact now">
            </div>
            <img class="lre" src="image/lre2.jpeg">
        </div>
    </div>
    <script type="text/javascript" src="js/Home.js"></script>
</body>
</html>
