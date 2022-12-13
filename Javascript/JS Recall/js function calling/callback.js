function mainFun(getCallFun){
    console.log("Main Function Executed")

    getCallFun();
}

function callBack(){
    console.log("Callback function executed");
}

mainFun(callBack);