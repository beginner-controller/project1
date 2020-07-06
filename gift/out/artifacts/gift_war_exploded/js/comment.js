var index = 1;
var timer = setInterval("showImage()",2000);

function showImage(k){                                        //当showImage不为0时，自动播放
    if(k > 0){
        clearInterval(timer);
        index = k;
    }

    var image = document.getElementById("pic1");     //调用图片
    image.src = "image/img" + index + ".jpg";

    for(var i = 1;i < 6;i++){                                 //按钮
        var li = document.getElementById("" + i);
        if(i == index){
            li.style.backgroundColor = "#b3ffff";
        }else{
            li.style.backgroundColor = "#fff";
        }
    }
    index++;
    if(index > 5){                                            //循环图片
        index = 1;
    }
}
function showOut(){
    timer = setInterval("showImage()",2000);
}

function get() {
    var text = document.querySelector('textarea');
    var nicheng = document.querySelector("#box-two-name");
    var comment = document.getElementById("comment");
    var ul = document.querySelector('ul');

    if (text.value == ""){
        alert("您没有输入评论!");
        return false;
    }
    if (nicheng.value == ""){
        alert("您还未输入昵称！")
        return false;
    }else {
        // 1.创建元素
        var div = document.createElement('div');
        var li = document.createElement('li');
        var hr = document.createElement('hr');
        var h4 = document.createElement('h4');
        //先有li才能赋值
        li.innerText = text.value;
        h4.innerText = nicheng.value;
        text.value = '';
        nicheng.value = '';
        // 2.添加元素
        ul.appendChild(div);
        ul.appendChild(h4);
        ul.appendChild(li);
        ul.appendChild(hr);
    }
}
// function get() {
//     // var text = document.querySelector('textarea');
//     // var nicheng = document.querySelector("#box-two-name");
//     // var comment = document.getElementById("comment");
//     var ul = document.querySelector('ul');
//     var test1 = document.getElementById("test").value;
//
//     // if (text.value == ""){
//     //     alert("您没有输入评论!");
//     //     return false;
//     // }
//     // if (nicheng.value == ""){
//     //     alert("您还未输入昵称！")
//     //     return false;
//     // }else {
//         // 1.创建元素
//         // var div = document.createElement('div');
//         for(var i = 0;i < 12;i++){
//             var li = document.createElement('li');
//             var hr = document.createElement('hr');
//             var h5 = document.createElement('h5');
//             //先有li才能赋值
//             // li.innerText = text.value;
//             h5.innerText = test1;
//             // text.value = '';
//             // nicheng.value = '';
//             // 2.添加元素
//             // ul.appendChild(div);
//             ul.appendChild(h5);
//             ul.appendChild(li);
//             ul.appendChild(hr);
//         }
//
//     // }
// }