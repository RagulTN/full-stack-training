import { Component } from '@angular/core';
import { EmployeeService } from '../employee.service';

@Component({
  selector: 'app-emp-list',
  templateUrl: './emp-list.component.html',
  styleUrls: ['./emp-list.component.css']
})
export class EmpListComponent {
  public employees : any[] = [];
  public errorMsg: any;

  constructor(private _employeeService : EmployeeService){}

  ngOnInit(){
    this._employeeService.getEmployees()
        .subscribe(data => this.employees = data,
                   error => this.errorMsg = error);
  }
}


// 1. we first create instance employeeservice (inside constructor)
// 2. that method returns a observable
// 3. to receive data we need subscribe to it
// 4. once we subscribe the employee data recieved asynchorusly
// 5. we assign that date to our class property (this.employee) using arrow syntax
