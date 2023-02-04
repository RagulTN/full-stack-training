import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, observable } from 'rxjs';
import { IEmployee } from './employee';

import { catchError } from 'rxjs/operators';
import { throwError } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  private _url: string = "/assets/data/employees.json"
  constructor(private http: HttpClient) { }

  // getEmployees(): Observable<IEmployee[]>{
  //   return this.http.get<IEmployee[]>(this._url)
  // }

  getEmployees(): Observable<IEmployee[]> {
    return this.http.get<IEmployee[]>(this._url).pipe(catchError(this.erroHandler));
  }

  erroHandler(error: HttpErrorResponse) {
    return throwError(error.message || 'server Error');
  }
} 

// return [
//   {"id":1,"name":"ragul","age":21},
//   {"id":2,"name":"gates","age":62},
//   {"id":3,"name":"mark","age":34},
//   {"id":4,"name":"elon","age":45},
// ]

//Observebles are http response
//its a sequence of items came synchrously over time
//single item per http call
//get method in http returns a observable
//observables needs to be casted into a type like array - for yu need a interface (employee.ts)

//steps for observables---
//make http get request from emp service
//we receive response and cast it into emp array
//subscribe the observable from emplist and emp detail
//assign emp arry for a local variable

//RxJs - reactive extensions of javascript
//external lib to work with observables
