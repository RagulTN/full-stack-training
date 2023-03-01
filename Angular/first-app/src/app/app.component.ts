import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'first-app';
}

let isValid : boolean = false;
console.log(isValid);

let emplist : string[]
let deplist : Array<string>

enum Color {
    red,
    green,
    blue
}

let c: Color = Color.blue;
//Gets enum values by index value, here its 2