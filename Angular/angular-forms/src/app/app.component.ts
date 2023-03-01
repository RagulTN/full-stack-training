import { Component } from '@angular/core';
import { ApplicationService } from './application.service';
import { User } from './user';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'angular-forms';
  topics = ['full-stack', 'front-end', 'back-end'];
  topicHasError = true;
  submitted = false;
  errorMsg = '';
  shares: number = 0;

  constructor(private _applicationservice: ApplicationService){}

  validateTopic(value: any){
    if (value === 'default'){
      this.topicHasError = true;
    }
    else{
      this.topicHasError = false;
    }
  }

  onSubmit(userForm : any){
    console.log(userForm.value);
    console.log(this.userModel.phone)
    this.submitted = true;
    console.log(this.userModel);
    this._applicationservice.apply(this.userModel).subscribe(
      data => console.log("sucess!", data),
      error => this.errorMsg = error.statusText
    )

    this.shares = this.userModel.phone + this.userModel.phone1 + this.userModel.phone2
    console.log(this.shares);
    

  }

  userModel = new User('ragul', 'ragul@gmail1212.com', 12,12,12, '', 'morning', true );  //sending data to view
}

// #name="ngModel" -> name (template ref varible) is ngmodel for that input Element
// [class.is-invalid]="name.invalid" -> apply class is-invalid if name (in ngModel) has invalid property