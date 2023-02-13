import { Component } from '@angular/core';
import { Router, ActivatedRoute, ParamMap } from '@angular/router';

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
  public selectedId: any;

  constructor(private router: Router,private route: ActivatedRoute){}

  ngOnInit(){
    console.log(this.route);
    this.route.paramMap.subscribe((params: ParamMap) =>{
      let id = parseInt(params.get('id') as any);
      this.selectedId = id;
    })
  }

  onSelect(department :any){
    // this.router.navigate(['/departments',department.id])
    this.router.navigate([department.id], {relativeTo: this.route});
  }

  isSelected(department:any){
    return department.id === this.selectedId;
  }
}
