
var cols = ['Name', 'Birthplace', 'Age']

var data = [{
    id: 0,
    name: "Ragul",
    city: "Nagercoil",
    age: 21,
    isThief: true
}, {
    id: 1,
    name: "Sanjay",
    city: "chennai",
    age: 21,
    isThief: false
}, {
    id: 2,
    name: "john",
    city: "chennai",
    age: 21,
    isThief: false
}, {
    id: 3,
    name: "elon",
    city: "US",
    age: 28,
    isThief: false
}, {
    id: 4,
    name: "Musk",
    city: "Coimbatore",
    age: 25,
    isThief: false
}]

// Create Table and Header

var t = document.createElement('table');
t.classList.add('scooby-gang', 'listing');

t.appendChild(document.createElement('thead'));
t.querySelector('thead').appendChild(document.createElement('tr'));

for (var i = 0; i < cols.length; i++) {
    var heading = document.createElement('td');
    heading.textContent = cols[i];
    t.querySelector('thead tr').appendChild(heading);
}

document.getElementById('wrapper').appendChild(t);

// Create rows
for (var i = 0; i < data.length; i++) {
    var s = data[i];
    var r = document.createElement('tr');

    r.dataset.personId = s.id;
    r.id = s.name.toLowerCase() + "-row";

    var nameCell = document.createElement('td');
    nameCell.textContent = s.name;
    nameCell.classList.add('name');
    nameCell.dataset.personId = s.id;

    var cityCell = document.createElement('td');
    cityCell.textContent = s.city;
    cityCell.classList.add('city');
    cityCell.dataset.personId = s.id;

    var ageCell = document.createElement('td');
    ageCell.textContent = s.age;
    ageCell.classList.add('age');
    ageCell.dataset.personId = s.id;

    r.appendChild(nameCell);
    r.appendChild(cityCell);
    r.appendChild(ageCell);

    t.appendChild(r);
}

function getById(pid) {
    for (var i = 0; i < data.length; i++) {
        if (data[i].id === Number(pid)) {
            return data[i].name;
        }
    }

    return null;
}

function isPersonThief(pid) {
    for (var i = 0; i < data.length; i++) {
        if (data[i].id === Number(pid)) {
            if (data[i].isThief) {
                return data[i].name + " is a thief."
            } else {
                return data[i].name + " is not a thief."
            }
        }
    }

    return null;
}

function logInfo(actionNum, pid) {
    console.log(
        "Action " + actionNum + " Player: " + getById(pid) +
        " and " + isPersonThief(pid)
    );
}

function action1(e) {
    alert(
        "Action One Current Target: " + e.currentTarget.tagName +
        "\nTarget: " + e.target.tagName
    );
    if (e.currentTarget.tagName === 'TR') {
        console.log("THIS ONE IS A TR");
    }
    logInfo(1, e.target.dataset.personId);
}

function action2(e) {
    alert(
        "Action Two Current Target: " + e.currentTarget.tagName +
        "\nTarget: " + e.target.tagName
    );
    logInfo(2, e.target.dataset.personId);
}

function action3(e) {
    alert(
        "Action Three Current Target: " + e.currentTarget.tagName +
        "\nTarget: " + e.target.tagName
    );
    logInfo(3, e.target.dataset.personId);

}

function action4(e) {
    alert(
        "Action Four Current Target: " + e.currentTarget.tagName +
        "\nTarget: " + e.target.tagName
    );
    logInfo(4, e.target.dataset.personId);
}


var cells = document.querySelectorAll("td.name");

// Assign action 1 handler to name cells
for (var i = 0; i < cells.length; i++) {
    cells[i].addEventListener('click', action1);
}

// Assign action 2 handler to third row by element id
document.querySelector("#" + data[2].name.toLowerCase() + "-row").addEventListener('click', action2);

// Assign action 3 handler to table
document.querySelector("#wrapper table").addEventListener('click', action3);


// Assign action 4 handler to div that wraps table
document.querySelector("#wrapper").addEventListener('click', action4);