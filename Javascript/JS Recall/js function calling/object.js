//Js objects creation

let person = {
    name: "Ragul",
    age: 21,
    isAlive: true,
    role: "full stack dev",
    sibilings:{
        brother: "elon",
        sister: "lemon"
    }
}

let person1 = {
    name: "Elon",
    age: 45,
    isAlive: true,
    role: "CEO",
    interests : ["trucks","tesla"],
    sibilings:{
        brother: "elon",
        sister: "lemon"
    },
    greeting: function(){
        let msg = `Hi I'm ${this.name}, i love ${this.interests}`;
        console.log(msg);
    }
}

console.log("---------Js objects--------");

console.log(person.age);
console.log(person['role']);
delete person.isAlive;
console.log(person.sibilings.brother);
person1.greeting();