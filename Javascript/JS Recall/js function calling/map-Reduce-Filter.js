//Notes
//Map
//Map is used when whole transformation occurs, 
//Mapping each value, have mapping logic
//Filter
//filter is used when we want to filter the arrar to obtain required value.
//Reduce
//reduce is used when we want to reduce the array to single value eg (max, min, avg, sum, difference etc).
//reduce passes two arguments one function(which includes accumulator and initial value as argument itself) and another initial value of accumulator.
// use reduce when reducing values into a small amount

const arr = [2, 1, 5, 10];

//Double - [4, 2, 10, 20];

function double(x){
    return x*2;
}

// const output = arr.map((x) =>{ return x* 2 });
// const output = arr.map((x) => x* 2);

const output = arr.map(double);

console.log(output);


//Filter

const arr2 = [2, 3, 7, 10, 12];

const odd = arr2.filter((x) => x % 2);
const even = arr2.filter((x) => x % 2 === 0);
const greaterThan = arr2.filter((x) => x > 9);


console.log(odd);
console.log(even);
console.log(greaterThan);

//Reduce

const arr3 = [4, 2, 10, 20];

function findSum(arr){
    let sum = 0;
    for (let i = 0; i < arr3.length; i++) {
        sum += arr3[i];
    }
    return sum;
}

console.log(findSum(arr3));

const reduced = arr3.reduce(function (sum, curr){
    sum = sum + curr;
    return sum;
}, 0);

console.log(reduced);

function findMax(arr){
    let max = 0;
    for (let i = 0; i < arr3.length; i++) {
        if(arr3[i] > max) max = arr3[i];
    }
    return max;
}

console.log(findMax());

const output3 = arr3.reduce(function(max, curr){
    if(curr > max){
        max = curr;
    }
    return max;
}, 0);

console.log(output3);

//more examples - map, reduce, filter
const users = [
    {firstname: "Ragul", lastname:"Sid", age: 21},
    {firstname: "elon", lastname:"musk", age: 45},
    {firstname: "sundar", lastname:"pichai", age: 45},
    {firstname: "ratan", lastname:"tata", age: 71},
]

//how to get full name arrays ? ==> use maps
// x => first item in the array ==>  {firstname: "Ragul", lastname:"Sid", age: 21},
const fullnames = users.map( x => x.firstname + x.lastname);
console.log(fullnames);

//how to get all ages and no of users like {20 : 1, 45 : 2, ...}
const ages = users.reduce(function(user,curr){
    if(user[curr.age]){
        user[curr.age] += user[curr.age];
    }
    else{
        user[curr.age] = 1;
    }
    return user;
}, {})

console.log(ages);

//chaining
const age45 = users.filter((x) => x.age == 45).map((x) => x.firstname);
console.log(age45);