import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { User } from './user';
import { catchError } from 'rxjs';
import { throwError } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ApplicationService {

  _url = 'http://localhost:3000/apply';
  constructor(private _http:HttpClient) { }

  apply(user : User){
    return this._http.post<any>(this._url, user)                              //2 arguments -> url, user object
          .pipe(catchError(this.errorHandler))                                      
  }

  errorHandler(error: HttpErrorResponse){
    return throwError(error);
  }
}
