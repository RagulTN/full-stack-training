import { Component } from '@angular/core';
import { EmployeeService } from '../employee.service';

@Component({
  selector: 'app-emp-list',
  templateUrl: './emp-list.component.html',
  styleUrls: ['./emp-list.component.css']
})
export class EmpListComponent {
  public employees : any[] = [];

  constructor(private _employeeService : EmployeeService){}

  ngOnInit(){
    this.employees = this._employeeService.getEmployees();
  }
}
