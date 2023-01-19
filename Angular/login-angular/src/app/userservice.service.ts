import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UserserviceService {

  constructor(private http:HttpClient) { }

  getUserData(uname: string, pwd: string){
    return this.http.get('http://localhost:8080/user/'+uname+'/'+pwd)
  }
}
