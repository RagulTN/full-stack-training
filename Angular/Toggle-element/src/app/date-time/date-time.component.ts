import { DatePipe } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'app-date-time',
  templateUrl: './date-time.component.html',
  styleUrls: ['./date-time.component.css']
})
export class DateTimeComponent {

  date: Date | undefined;
  public res: Date | undefined
  public dateSelected :any;
  public finalDate :any;
  public dated:any;
  public datef:any;
  public days=0;
  myDate = new Date(Date.now());

  constructor(private datePipe: DatePipe){}

  ngOnInit(): void {
    this.date = new Date();
    this.date.setDate( this.date.getDate() + 3);
    //new
    this.dateSelected = this.datePipe.transform(this.myDate,'yyyy-MM-dd');
  }

  dateChanged($event: { target: { value: any; }; }){
    this.res = $event.target.value    
    console.log(this.res);
  }

  getDate(){
    console.log(this.dateSelected);
    
  }
  cal(){
    this.dated = new Date(this.dateSelected).getTime();

    this.datef = this.dated + (this.days *(86400000));

    this.finalDate = this.datePipe.transform(this.datef,'yyyy-MM-dd' );
  }
}

