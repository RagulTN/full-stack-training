// Default way
let tiffen = 60;
let lunch = 200;
let petrol = 99;

function sumExpense(){
    let result = tiffen + lunch + petrol;

    console.log(`Your total expense is ₹${result}`);
}

sumExpense();


//Using arguments
function sumExpense1(tiffen, lunch, petrol, icecream){
    return tiffen + lunch + petrol + icecream;
}

console.log(sumExpense1(60,200,99,50));


//Many arguments
function sumExpense2(tiffen, lunch, petrol){
    let total = 0;

    for( let value of arguments){
        total+=value;
    }

    return total;
}

console.log(sumExpense2(60,200,99,100,150,50));
