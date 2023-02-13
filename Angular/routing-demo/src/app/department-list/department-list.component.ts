import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-department-list',
  templateUrl: './department-list.component.html',
  styleUrls: ['./department-list.component.css']
})
export class DepartmentListComponent {

  departments = [
    {"id":1, "name": "Full stack"},
    {"id":2, "name": "Front end"},
    {"id":3, "name": "Back end"},
    {"id":4, "name": "Marketing"},
    {"id":5, "name": "Scrum"},
  ]

  constructor(private router: Router){}

  onSelect(department :any){
    this.router.navigate(['/departments',department.id])
  }
}
