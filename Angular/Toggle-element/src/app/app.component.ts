import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  // btndata: any = {}
  showMe:boolean=false;
//   res = [
//     {
//       btn:"btn1",
//       expand:false
//     },
//     {
//       btn:"btn2",
//       expand:false
//     }

// ]



  toggleTag(){
    this.showMe=!this.showMe
  }


  title: string ="Birth Date of respective member in the family" ;  
    bdays: BDay[] =[  
        {name:'James Cruise',bDate:'July 14, 1970'},  
        {name:'Maria Cruise',bDate:'April 18, 1975'},  
        {name:'Katherine Cruise',bDate:'March 25, 1991'},  
    ]   
}
class BDay {  
  name : string | undefined;  
  bDate: string | undefined;  
}
