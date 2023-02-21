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

  constructor(private _applicationservice: ApplicationService){}

  validateTopic(value: any){
    if (value === 'default'){
      this.topicHasError = true;
    }
    else{
      this.topicHasError = false;
    }
  }

  onSubmit(){
    this.submitted = true;
    console.log(this.userModel);
    this._applicationservice.apply(this.userModel).subscribe(
      data => console.log("sucess!", data),
      error => this.errorMsg = error.statusText
    )
  }

  userModel = new User('ragul', 'ragul@gmail1212.com', 1234567890, '', 'morning', true );  //sending data to view
}

// #name="ngModel" -> name (template ref varible) is ngmodel for that input Element
// [class.is-invalid]="name.invalid" -> apply class is-invalid if name (in ngModel) has invalid property