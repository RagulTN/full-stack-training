
//local storage , session storage and cookies in js

localStorage.setItem('name', 'ragul');
console.log(localStorage.getItem('name'));


sessionStorage.setItem('session-id','session1');
console.log(sessionStorage.getItem('session-id'));

//window.onload = sessionStorage.clear();
//var logoutTimer = setTimeout(function() { sessionStorage.clear(); },60000);

document.cookie = 'name=Ragul; expires=' + new Date (2023, 0, 1).toUTCString()
document.cookie = 'role=full stack dev; expires=' + new Date (2023, 0, 1).toUTCString()

console.log(document.cookie);
