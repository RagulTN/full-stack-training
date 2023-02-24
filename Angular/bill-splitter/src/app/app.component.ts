import { HttpClient, HttpClientModule, HttpErrorResponse } from '@angular/common/http';
import { Component } from '@angular/core';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'bill-splitter';
  url = 'https://63f70208833c7c9c607b0d4a.mockapi.io/billsplit/bills'
  res: any  = [];
  last: any  = [];
  contentLoaded = false;
  contentLoaded1= false;
  n: any;
  errorMsg: any = '';
  splitAmt:any =[];

  persons1: number = 0;
  pers: number[] = [];

  generateDivs(data: any) {

    const n =data.amount/data.persons;
    data.splitamount = n;
    console.log(this.splitAmt);

    for(var i=0;i<data.persons;i++)
    {
    this.splitAmt.push(n)    
    }
    this.splitAmt = Array(this.persons1).fill(0).map((i) => i);

  }



  constructor(private http: HttpClient){}

  getSplits(){
      
    setTimeout(() => {
      this.contentLoaded = true;
    }, 1000);
    this.http.get(this.url)
      .subscribe((res) => {
        this.res = res;
      },(error:any)=>{
        this.errorMsg = "Aww...404 Url Not Found :(";
        this.contentLoaded = false;
      })
    
  }

  getLastTransaction(){
    
    setTimeout(() => {
      this.contentLoaded1 = true;
    }, 1000);
    this.http.get(this.url)
      .subscribe((last) => {
        this.last = last;
      },(error:any)=>{
        this.errorMsg = "Aww...404 Url Not Found :(";
        this.contentLoaded = false;
      })
  }

  splitBill(data: any){
    
    const n =data.amount/data.persons;
    data.splitamount = n;
    console.log(this.splitAmt);

    for(var i=0;i<data.persons;i++)
    {
    this.splitAmt.push(n)  
    this.pers.push(this.splitAmt);
    console.log(this.pers);
    }
    
    fetch(this.url, {
      method: 'POST',
      headers: { 'content-type': 'application/json' },
      body: JSON.stringify(data)
    }).then(res => {
      if (res.ok) {
        alert("Data sent successfully");
        return res.json();
      }
      else{
        alert("Oops...Data not Sent");
      }
    })}
}
