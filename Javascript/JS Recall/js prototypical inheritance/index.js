let arr = ["ragul","elon","musk"];
let catobj = {
    name:"miro",
    age:2,
    sayMeow : function(){
        console.log("Meow, I'm " +this.name);
    }
}

// arr.__proto__.length
// Array.prototype = arr.__proto__ => same
// Everything is a object -> every object has a prototype

// arr.__proto__.__proto__ = Object.prototype => same
// arr.__proto__.__proto__.__proto__ = 
// array -> arrays prototype -> array's object prototype -> Object prototypes

let anothercat = {
    name:"milo",
}

anothercat.__proto__ = catobj;


//setting new method for function prototype - it will set for all functions
Function.prototype.sayHello = function(){
    console.log("Hello from function");
}

function fun(){

}


// Runner.prototype.gameOver =()=>{}
// Runner.instance_.setSpeed(300)

//Example
function Hamster(){
    this.HasFur = true,
    this.Name = "Manii",
    this.HungrySound = function(){
        return "Grrrrrr from " + this.Name;
    }
}

function AfricanHamster(){
    this.Name = "Bruno"
}

function MexicanHamster(){
    this.Name = "Mars"
}


AfricanHamster.prototype = new Hamster();
let obj = new AfricanHamster();
console.log(obj.HungrySound());