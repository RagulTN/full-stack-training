import { Component } from '@angular/core';

@Component({
  selector: 'app-test', //.app-test acts as class, use div to use in html
  templateUrl: './test.component.html',      //`<div> this can also be used</div>`
  styleUrls: ['./test.component.css']        //[`div{color:red}`]
})
export class TestComponent {
  public name = "Ragul"
  public siteUrl = window.location.href;


  greetUser(){
    return "Hello " + this.name;
  }

}
