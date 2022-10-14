
//parent 1
var parent1 = document.createElement("div");
parent1.setAttribute('id','par1');
document.body.appendChild(parent1);

var logo = document.createElement("img");
logo.src = "brimma-logo.png" || "logo";
logo.classList.add('logo');
document.getElementById('par1').appendChild(logo);

var title = document.createElement("p");
title.classList.add('title');
title.innerText = "Brimma";
document.getElementById('par1').appendChild(title); 

var subtitle=document.createElement("sub");
subtitle.classList.add('subtitle');
subtitle.innerText='INNOVATION CENTER';
document.getElementById('par1').appendChild(subtitle);

//yellow part
var yellowbox = document.createElement("div");
yellowbox.setAttribute('id','yel-box');
document.body.appendChild(yellowbox);

//parent 2
var parent2 = document.createElement("div");
parent2.setAttribute('id','par2');
document.getElementById('yel-box').appendChild(parent2);

var address1 = document.createElement("add1")
address1.classList.add('address1');
address1.innerHTML= '<b>Brimma Tech Inc. </b><br>' +
      '7605 Carrick Hill CT, <br>' +
      ' Wake Forest,<br> NC 27587, USA.';
document.getElementById('par2').appendChild(address1);  

//parent 3
var parent3 = document.createElement("div");
parent3.setAttribute('id','par3');
document.getElementById('yel-box').appendChild(parent3);

var address2 = document.createElement("add2")
address2.classList.add('address2');
address2.innerHTML= '<b>Brimma Tech Pvt. Ltd.</b><br>'+'Olympia Technology Park,<br>'+
      'Level 2, 3rd floor, Altius Block,<br>'+
      'No 1 SIDCO Industrial Estate,<br>'+
      'Guindy, Chennai - 600 032.';
document.getElementById('par3').appendChild(address2); 

       
