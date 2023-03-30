import { HttpClient, HttpClientModule, HttpErrorResponse } from '@angular/common/http';
import { Component, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import {MessageService} from 'primeng/api';
import { PrimeNGConfig } from 'primeng/api';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [MessageService]

})
export class AppComponent {
  title = 'bill-splitter';
  url = 'https://63f70208833c7c9c607b0d4a.mockapi.io/billsplit/bills121'
  res: any  = [];
  last: any  = [];
  contentLoaded = false;
  contentLoaded1= false;
  spinnerShow = false;
  n: any;
  errorMsg: any = '';
  splitAmt:any =[];

  persons1: number = 0;
  pers: number[] = [];
  displayBasic: boolean = false;

  showBasicDialog(){
    this.displayBasic = true;
  }

  ngOnInit() {
    this.primengConfig.ripple = true;
  }

  showSuccess() {
      this.messageService.add({severity:'success', summary: 'Success', detail: 'Data sent successfully'});
  }

  @ViewChild('userForm') form: NgForm;

  // generateDivs(data: any) {

  //   const n =data.amount/data.persons;
  //   data.splitamount = n;
  //   console.log(this.splitAmt);

  //   for(var i=0;i<data.persons;i++)
  //   {
  //   this.splitAmt.push(n)    
  //   }
  //   this.splitAmt = Array(this.persons1).fill(0).map((i) => i);

  // }



  constructor(private http: HttpClient,private messageService: MessageService, private primengConfig: PrimeNGConfig){}

  showSpinner(){
    this.spinnerShow = true;
  }

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
        this.showBasicDialog();
        this.contentLoaded = false;
      })
  }

  splitBill(data: any){
    
    const n =data.amount/data.persons;
    data.splitamount = n;
    console.log(this.splitAmt);

    this.showSpinner();

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
        this.spinnerShow = false;
        this.showSuccess();
        this.getLastTransaction();
        this.form.reset();
        return res.json();
      }
      else{
        this.showBasicDialog();
      }
    })
  }

}
