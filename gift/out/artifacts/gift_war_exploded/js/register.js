// 将id=txt的input输入框输入时的字体改变
onload = function(){
    txt0.onkeyup = function ()
    {
        this.style.fontSize = '14px';
    }
    txt1.onkeyup = function ()
    {
        this.style.fontSize = '14px';
    }
}
var txt0 = document.getElementById("txt0");
var txt1 = document.getElementById("txt1");
txt1.onblur = function () {
    if (txt1.value != txt0.value){
        alert("您两次输入的密码不一致，请重新输入！");
        txt1.value ='';
        return;
    }
}
function register() {
    var submit = document.getElementById("submit");
    var name = document.getElementById("username").value;
    var password = document.getElementById("txt0").value;
    var passwords = document.getElementById("txt1").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
    var QQ = document.getElementById("QQ").value;
    if(name == null || name == ""){
        alert("请输入用户名");
        return;
    }else if(password == null || password == ""){
        alert("请输入密码");
        return;
    }else if(passwords == null || passwords == ""){
        alert("请再次输入密码");
        return;
    } else if(password != passwords){
        alert("两次密码不一致");
        return;
    }else if(email == null || email == ""){
        alert("请输入email");
        return;
    }else if(phone == null || phone == ""){
        alert("请输入手机号");
        return;
    }else if(QQ == null || QQ == ""){
        alert("请输入QQ");
        return;
    }
    submit.type = 'submit';
}

function Transform() {
    var yj = document.getElementById("yj");
    var div = document.getElementById("txt0");
    var flag = 0;
    yj.onclick = function(){
        if(flag == 0){
            div.type = 'text';
            yj.src="image/0-2.png";
            flag = 1;
        }else{
            div.type = 'password';
            yj.src="image/1-0.png";
            flag = 0;
        }
    }
}
function Transforms() {
    var yj = document.getElementById("yjs");
    var div = document.getElementById("txt1");
    var flag = 0;
    yj.onclick = function(){
        if(flag == 0){
            div.type = 'text';
            yj.src="image/0-2.png";
            flag = 1;
        }else{
            div.type = 'password';
            yj.src="image/1-0.png";
            flag = 0;
        }
    }
}
