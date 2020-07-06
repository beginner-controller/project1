function Transform() {
    var yj = document.getElementById("yj");
    var div = document.getElementById("password");
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
var submit1 = document.getElementById("submit1");

function user() {
    var names = document.getElementById("name").value;
    var passwords = document.getElementById("password").value;
    if(names == null || names == ""){
        alert("请输入用户名！");
        return;
    }else if(passwords == null || passwords == ""){
        alert("请输入密码！");
        return;
    }
    submit1.type = 'submit';
}