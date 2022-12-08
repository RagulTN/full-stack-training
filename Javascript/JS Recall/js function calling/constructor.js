
//Factory functions

function createPerson(name){   //camelCase
    return {
        name,
        greeting(){
            console.log(`My Name is ${this.name}`)
        }
    };
}

//Constructor Functions

function Person(name){            //Pascal
    this.name = name;
    this.greeting = function(){
        console.log(`My Name is ${this.name}`)
    }
}

let newperson = new Person("Ragul");