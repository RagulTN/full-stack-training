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
    
  }
}
