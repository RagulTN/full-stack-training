import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Observable, observable } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { throwError } from 'rxjs';
import { IQuote } from './quote';


@Injectable({
  providedIn: 'root'
})
export class QuoteService {

  private _url: string = "https://type.fit/api/quotes"
  constructor(private http: HttpClient) { }

  getQuotes(): Observable<IQuote[]> {
    return this.http.get<IQuote[]>(this._url).pipe(catchError(this.erroHandler));
  }

  erroHandler(error: HttpErrorResponse) {
    return throwError(error.message || 'server Error');
  }
} 