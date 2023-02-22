import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { FormBuilder, Validators } from '@angular/forms';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'reactive-forms';

  constructor(private fb: FormBuilder){}

  registrationForm = this.fb.group({
    userName: ['', Validators.required],
    password: [''],
    confirmPassword: [''],
    address: this.fb.group({
      city: [''],
      state: [''],
      postalCode: ['']
    })
  })

  // registrationForm = new FormGroup({
  //   userName: new FormControl(''),
  //   password: new FormControl(''),
  //   confirmPassword : new FormControl(''),
  //   address: new FormGroup({
  //     city: new FormControl(''),
  //     state: new FormControl(''),
  //     postalCode: new FormControl('')
  //   })
  // })

  loadApiData(){
    this.registrationForm.setValue({
      userName:'elon',
      password:'musk',
      confirmPassword:'musk',
      address:{
        city:"texas",
        state:"seattle",
        postalCode:'12331'
      }
    })

    // this.registrationForm.patchValue({
    //   userName:'elon',
    //   password:'musk',
    //   address:{
    //     state:"seattle",
    //   }
    // })
  }


}

//steps - reactive forms
//1. define component form in html
//2. define form model in component class
//3. use the model associate with a view

//steps - form validation
//1. apply validation rule to form control
//2. provide visual feedback to user
//3. display apprx error message

