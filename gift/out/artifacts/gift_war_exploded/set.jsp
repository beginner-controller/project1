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
    <title>Title</title>
    <style type="text/css">
        /* CSS Document */
        body,ul,ol,li,p,h1,h2,h3,h4,h5,h6,form,table,td,img,div,dl,dt,dd,input{margin:0;padding:0; box-sizing: border-box}
        body{font-size:12px;}
        img{border:none;}
        li{list-style:none;}
        input,select,textarea{outline:none;}
        textarea{resize:none;}
        a{text-decoration:none;}
        /*清浮动*/
        .clearfix:after{content:"";display:block;clear:both;}
        .clearfix{zoom:1;}

        /* 取消a标签点击后的虚线框 */
        a {outline: none;}
        a:active {star:expression(this.onFocus=this.blur());}
        input[type="text"]{
            outline: none;
        }
        /*付款方式*/
        .payWrap{
            width:950px;
            min-height: 560px;
            background: #FFFFFF;
            margin: 0 auto;
        }
        .payHeader{
            height: 56px;
            line-height: 56px;
            border-bottom: 1px solid #CCCCCC;
            padding: 0 40px;
        }

        .payWrap .fontsize{
            color:#d81e06 ;
            font-size: 18px;
            margin:0 5px;
        }
        .payContent{
            padding:10px 20px;
        }
        .unionpayList{
            width: 100%;
            height: 40px;
            line-height: 40px;
            margin: 5px 0;
            position: relative;
            border: 2px solid #FFFFFF;
        }
        .unionpayList:hover{
            cursor: pointer;
            background: #f1f4fa;
        }
        .unionPrice{
            position: absolute;
            top: 0;
            right: 20px;
        }
        .unionpay1{
            padding: 0 20px 0 62px;
            /*background: url("images/unionpay1.png") 20px center no-repeat;*/
            background: url("image/1.jpg") 20px center no-repeat;
        }
        .unionpay2{
            padding: 0 20px 0 62px;
            /*background: url("images/unionpay2.png") 20px center no-repeat;*/
            background: url("image/2.jpg") 20px center no-repeat;
        }
        .activeBtn{
            width: 100%;
            height: 40px;
            line-height: 40px;
            border: 2px solid #7a97cc;
        }
        .payBorder{
            width: 100%;
            border-top: 1px solid #f2f2f2;
            margin-top: 30px;
        }
        .payBut{
            display: block;
            width: 150px;
            height: 32px;
            line-height: 32px;
            text-align: center;
            background: #0169c6!important;
            color: #FFFFFF!important;
            float: left!important;
            margin: 20px 0;
        }
        .wait{
            display:block;
            width:300px;
            height: 32px;
            margin: 30px 0 0 160px;
            text-decoration: underline!important;
        }
    </style>
</head>
<body>
<%--    <form action="test" method="post">--%>
<%--        <input type="text" name="username" placeholder="用户名">--%>
<%--        <input type="submit" value="确定">--%>
<%--    </form>--%>
<%--<%--%>
<%--    String s=(String)request.getAttribute("ValueA");--%>
<%--%>--%>
<%--<script>--%>
<%--        var name = "<%=s %>";--%>
<%--        if(name != ""){--%>
<%--            alert(name);--%>
<%--        }--%>
<%--</script>--%>
<div class="payWrap">
    <div class="payHeader clearfix">
        <strong class="fl">订单编号：aaaaaaaaaa</strong>
        <span class="fr"><strong class="fontsize">60.000</strong>元</span>
    </div>
    <section class="payContent">
        <div class="unionpayList activeBtn ">
            <span class=" unionpay1">支付方式一</span>
            <span class=" unionPrice">支付<strong class="fontsize">60.00</strong>元</span>
        </div>
        <div class="unionpayList  ">
            <span class="  unionpay2">支付方式二</span>
            <span class="unionPrice ">支付<strong class="fontsize">60.00</strong>元</span>
        </div>
        <div class="payBorder clearfix">
            <a href="#" class="fl payBut ">确认支付</a>
            <a href="#" class="fl wait">稍后支付...</a>
        </div>

    </section>
</div>
<script src="http://code.jquery.com/jquery-1.4.1.js"></script>
<script>
    $(".unionpayList").click(function(){
        $(".unionpayList").removeClass("activeBtn");
        $(this).addClass("activeBtn")
    })
</script>
</body>
</html>
