let video = document.querySelector('video');
    window.addEventListener ('scroll', function(){
        let value= 1 + window.scrollY/-600 ;
        video.style.opacity = value ;
    } )


const popup1 = document.querySelector(".popup1");
const popup2 = document.querySelector(".popup2");

function togglePopup1(e) {
  e.stopPropagation();
  popup1.classList.toggle("hide");
  
  // remove popup after 8 seconds
  setTimeout(() => {
    popup1.classList.toggle("hide");
  }, "2000");
}

function togglePopup2(e) {
  e.stopPropagation();
  popup2.classList.toggle("hide");
  
  setTimeout(() => {
    popup2.classList.toggle("hide");
  }, "2000");
}

function closePopup() {
  if (!popup1.classList.contains("hide")) {
    popup1.classList.toggle("hide");
  }
  if (!popup2.classList.contains("hide")) {
    popup2.classList.toggle("hide");
  }
}