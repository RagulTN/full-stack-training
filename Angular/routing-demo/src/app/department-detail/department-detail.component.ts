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
    console.log(this.route);
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
  gotoDepartments(){
    let selectedId = this.departmentId ? this.departmentId : null  //so selected id is current department id
    // this.router.navigate(['/departments', {id: selectedId , name: 'depname'}]);      //doesnt need a placeholder
    this.router.navigate(['../', {id: selectedId}],{relativeTo: this.route});
  }
  showOverview(){
    this.router.navigate(['overview'], {relativeTo:this.route});
  }
  showContact(){
    this.router.navigate(['contact'], {relativeTo:this.route});
  }
}

//you need activatedRoute for components thats being routed
//you need router for navigate data one to another

//topics covered
//1. routing and navigation
//2. wildcard navigation
//3. route parameters
//4. para
