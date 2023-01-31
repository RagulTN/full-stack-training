import { Component } from '@angular/core';

@Component({
  selector: 'app-test', //.app-test acts as class, use div to use in html
  templateUrl: './test.component.html',      //`<div> this can also be used</div>`
  styleUrls: ['./test.component.css']        //[`div{color:red}`]
})
export class TestComponent {
  public name = "Ragul"
  public siteUrl = window.location.href;
  public myId = "testId"; 
  public successClass = "text-sucess"
  public greeting = "";
  public name1 = "";
  public display= false;
  public color = "red";
  public colors = ['red', 'blue', 'orange']
  public pipe = "Hello";
  public person={
    "firstname" :"Ragul",
    "lastname" : "TN"
  }

  public date = new Date();
  

  greetUser(){
    return "Hello " + this.name;
  }
  onClick(event : any){
    console.log("Hello user"!!);
    console.log(event);
    this.greeting = "Hello user!"
    this.greeting = event.type;
  }

  logMessage(value:string){
    console.log(value);
  }
}
