function mainFun(hello){
    console.log("Main Function Executed")
    callBack();
}

function callBack(){
    console.log("Callback function executed");
}

mainFun("hello");

setTimeout(function() {
    console.log("Exceuting after 5 seconds");
}, 5000)


//-------------------------Notes------------------------
//asynchronous js scenario, dependency between create and payment functions
//inversion of hell
// The two problems that we  faced in callbacks are:-
// 1) Callback Hell: Asynchronous operations in JavaScript can be achieved through callbacks. Whenever there are multiple dependent Asynchronous operations it will result in a lot of nested callbacks. This will cause a 'pyramid of doom' like structure.
// 2) Inversion of control: When we give the control of callbacks being called to some other API, this may create a lot of issues. That API may be buggy,  may not call our callback and create order as in the above example, may call the payment callback twice etc.
//callback hell
//------------------------------------------------------

const cart = ["shoes", "shirts", "pants"]

api.createOrder(cart, function(){
    api.proceedToPayment(function(){
        api.showOrderSummary(function(){
            api.updateWallet()
        })
    })
}) 
