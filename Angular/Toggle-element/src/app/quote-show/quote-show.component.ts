import { Component, OnDestroy, OnInit } from '@angular/core';
import { QuoteService } from '../quote.service';


@Component({
  selector: 'app-quote-show',
  templateUrl: './quote-show.component.html',
  styleUrls: ['./quote-show.component.css']
})
export class QuoteShowComponent implements OnInit, OnDestroy {
  title = 'ngx-skeleton-loader-demo';

  public quotes : any[] = [];
  public errorMsg: any;

  filteredString:string = '';

  animation = 'pulse';
  contentLoaded = false;
  count = 2;
  widthHeightSizeInPixels = 50;
  intervalId: number | null = null;

  constructor(private _quoteService : QuoteService){}

  ngOnInit() {
    setTimeout(() => {
      this.contentLoaded = true;
    }, 2000);

    this._quoteService.getQuotes()
        .subscribe(data => this.quotes = data,
                   error => this.errorMsg = error);
  }

  ngOnDestroy() {
    if (this.intervalId) {
      clearInterval(this.intervalId);
    }
  }
}
