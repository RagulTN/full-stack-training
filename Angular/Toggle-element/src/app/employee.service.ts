import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  constructor() { }

  getEmployees(){
    return [
      {"id":1,"name":"ragul","age":21},
      {"id":2,"name":"gates","age":62},
      {"id":3,"name":"mark","age":34},
      {"id":4,"name":"elon","age":45},
    ]
  }
}
