import { Component, OnDestroy, OnInit } from '@angular/core';
import { count, interval, Subscription } from 'rxjs';
import { EmployeeService } from '../employee.service';

@Component({
  selector: 'app-employee-detail',
  templateUrl: './employee-detail.component.html',
  styleUrls: ['./employee-detail.component.css']
})
export class EmployeeDetailComponent implements OnInit, OnDestroy {
  public employees: any[] = [];
  public errorMsg: any;
  intsubscription: Subscription = new Subscription;


  constructor(private _employeeService: EmployeeService) { }

  // ngOnInit(){
  //   this.employees = this._employeeService.getEmployees();
  // }

  // ngOnInit(){
  //   this._employeeService.getEmployees()
  //       .subscribe(data => this.employees = data);
  // }

  ngOnInit() {
    this._employeeService.getEmployees()
      .subscribe(data => this.employees = data,
        error => this.errorMsg = error);

    this.intsubscription = interval(1000).subscribe(count => {
      // console.log(count);
    })
  }

  ngOnDestroy() {
    this.intsubscription.unsubscribe()
  }
}
