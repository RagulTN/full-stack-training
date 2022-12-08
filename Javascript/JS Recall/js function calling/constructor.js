
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

function Person(){            //Pascal
    

}