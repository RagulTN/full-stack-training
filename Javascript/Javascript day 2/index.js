function onLoad(){
  alert("This page is loading");
}

function makeImageLaugh(image) {
    image.src = "https://cdn-icons-png.flaticon.com/512/2742/2742687.png";
     document.body.style.backgroundColor = "yellow";
}

function makeImageSmile(image) {
    image.src = "https://cdn-icons-png.flaticon.com/512/3343/3343850.png";
       document.body.style.backgroundColor = "white";

}
function toggle_div(id) {
  var divelement = document.getElementById(id);
  if(divelement.style.display == 'none')
    divelement.style.display = 'block';
  else
    divelement.style.display = 'none';
}

//8th 
// function demoTimeout() {
//   document.write('<img src="https://cdn-icons-png.flaticon.com/512/2742/2742687.png">');
// }

// const timeoutObject = setTimeout(demoTimeout,2000);

const btn = document.querySelector('#new-tab');

//new tab open
btn.addEventListener( 'click' , new_tab_open );

function new_tab_open(){
	window.open('https://in.puma.com/in/en/mens/mens-shoes/mens-shoes-sneakers', '_blank');
};

//mouseout
function mouseOver() { document.getElementById("demo").style.color = "red";
}
function mouseOut() {
document.getElementById("demo").style.color = "black";
}

function bigImg(x) {
  x.style.height = "140px";
  x.style.width = "140px";
}

function normalImg(x) {
  x.style.height = "32px";
  x.style.width = "32px";
}

function resize(x){
  if(x.style.height == "32px"){
      x.style.height = "140px";
      x.style.width = "140px";
  }
  else{
      x.style.height = "32px";
      x.style.width = "32px";
  }
}

function prevent(){
  return false
}