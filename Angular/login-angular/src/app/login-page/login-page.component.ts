import { Component, resolveForwardRef } from '@angular/core';
import { Router } from '@angular/router';
import { UserserviceService } from '../userservice.service';

@Component({
  selector: 'app-login-page',
  templateUrl: './login-page.component.html',
  styleUrls: ['./login-page.component.css']
})
export class LoginPageComponent {
  model : any = {}
  getData: boolean = false;
  constructor(private userservice:  UserserviceService, private router: Router){}

  ngOnit(){ }

  loginUser(){
    var uname = this.model.uname;
    var pwd = this.model.pwd;

    this.userservice.getUserData(uname,pwd)
    .subscribe((res:any)=>{
      this.getData = res;

      if(this.getData == true){
        this.router.navigate(["/home"]);
      } else {
        alert("Invalid users");
      }
    })
}
}