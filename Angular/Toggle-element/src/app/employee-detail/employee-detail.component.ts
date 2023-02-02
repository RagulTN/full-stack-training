import { Component } from '@angular/core';
import { Subscription } from 'rxjs';
import { EmployeeService } from '../employee.service';

@Component({
  selector: 'app-employee-detail',
  templateUrl: './employee-detail.component.html',
  styleUrls: ['./employee-detail.component.css']
})
export class EmployeeDetailComponent {
  public employees : any[] = [];
  public errorMsg: any;
  subscription: Subscription = new Subscription; 


  constructor(private _employeeService : EmployeeService){}

  // ngOnInit(){
  //   this.employees = this._employeeService.getEmployees();
  // }

  // ngOnInit(){
  //   this._employeeService.getEmployees()
  //       .subscribe(data => this.employees = data);
  // }

  ngOnInit(){
    this._employeeService.getEmployees()
        .subscribe(data => this.employees = data,
                   error => this.errorMsg = error);

    this.subscription =  this._employeeService.getEmployees().subscribe(x => console.log(x));
  }

  ngOnDestroy() {
    this.subscription.unsubscribe()
  }
}
