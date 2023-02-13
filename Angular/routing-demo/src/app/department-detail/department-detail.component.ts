import { Component } from '@angular/core';
import { ActivatedRoute, Router, ParamMap } from '@angular/router';

@Component({
  selector: 'app-department-detail',
  templateUrl: './department-detail.component.html',
  styleUrls: ['./department-detail.component.css']
})
export class DepartmentDetailComponent {
  public departmentId : any;
  constructor(private route: ActivatedRoute, private router: Router){}

  ngOnInit(){
    // let id = parseInt(this.route.snapshot.paramMap.get('id') as any);
    // this.departmentId = id;
    this.route.paramMap.subscribe((params: ParamMap) =>{
      let id = parseInt(params.get('id') as any);
      this.departmentId = id;
    })
  }

  goPrevious(){
    let previousId = this.departmentId - 1;
    this.router.navigate(['/departments', previousId]);
  }
  goNext(){
    let previousId = this.departmentId + 1;
    this.router.navigate(['/departments', previousId]);
  }
}

//you need activatedRoute for components thats being routed
//you need router for navigate data one to another
