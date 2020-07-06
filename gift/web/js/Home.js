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
