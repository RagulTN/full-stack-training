import { Component } from '@angular/core';

@Component({
  selector: 'app-date-time',
  templateUrl: './date-time.component.html',
  styleUrls: ['./date-time.component.css']
})
export class DateTimeComponent {

  date: Date | undefined;
  public res: Date | undefined

  ngOnInit() {
    this.date = new Date();
    this.date.setDate( this.date.getDate() + 3 );
  }

  dateChanged($event: { target: { value: any; }; }){
    this.res = $event.target.value    
    // console.log( this.res + 3);
  }
}

