import { Component } from '@angular/core';

@Component({
  selector: 'app-emp-list',
  templateUrl: './emp-list.component.html',
  styleUrls: ['./emp-list.component.css']
})
export class EmpListComponent {
  public employees = [
    {"id":1,"name":"ragul","age":21},
    {"id":2,"name":"gates","age":62},
    {"id":3,"name":"mark","age":34},
    {"id":4,"name":"elon","age":45},
  ]
}
