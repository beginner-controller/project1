<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2020/6/20
  Time: 3:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>支付页面</title>
    <link type="text/css" rel="stylesheet" href="css/pay.css">
</head>
<body>
    <div class="box-top">
        <img src="image/commodity-image/1.jpg" class="img-one">
        <span>特惠</span>
        <p class="Explanation">优惠仅限今天&nbsp;199元人生爆炸年终福利（仅限30份）</p>
        <h1>￥199.00</h1>
        <input type="button" id="add" value="+" onclick="add()">
        <input type="text" id="text" value="1">
        <input type="button" id="minub" value="-" onclick="minub()">
        <div class="fengexian-01"></div>
        <p class="select0">已选择商品</p><input type="text" class="number" id="number" value="1"><p class="select1">件,</p>
        <p class="adds">合计：</p><input type="text" class="numbers" id="numbers" value="199">
    </div>
    <div class="box-bottom">
        <input type="button" id="pays" value="马上下单">
    </div>
<script>

    function add() {
        var text = document.getElementById("text").value;
        var numbers = document.getElementById("numbers").value;
        document.getElementById("text").value = Number(text) + 1;
        document.getElementById("number").value = Number(text) + 1;
        document.getElementById("numbers").value = Number(numbers) + 199;
        return;
    }
    function minub() {
        var text = document.getElementById("text").value;
        var numbers = document.getElementById("numbers").value;
        if(text >= 2){
            document.getElementById("text").value = Number(text) - 1;
            document.getElementById("number").value = Number(text) - 1;
            document.getElementById("numbers").value = Number(numbers) - 199;
        }
        return;
    }
</script>
</body>
</html>
