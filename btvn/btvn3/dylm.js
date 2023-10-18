flag=1
function yes(){
    alert("Yes. You are right !!!")
}
function love(){
    if(flag==1){
        ans_no.style.top=90;
        ans_no.style.left=500;
        flag=2;
    }
    else if(flag==2){
        ans_no.style.top=333;
        ans_no.style.left=333;
        flag=3;
    }
    else if(flag==3){
        ans_no.style.top=111;
        ans_no.style.left=50;
        flag=1;
    }
}