import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { User } from './user';

@Injectable({
  providedIn: 'root'
})
export class ApplicationService {

  _url = '';
  constructor(private _http:HttpClient) { }

  apply(user : User){
    return this._http.post<any>(this._url, user); //2 arguments -> url, user object
  }
}
