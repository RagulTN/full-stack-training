import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import { SkeletonModule } from "primeng/skeleton";

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';

import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { CardModule } from 'primeng/card';

import { DialogModule } from 'primeng/dialog';
import { ButtonModule } from 'primeng/button';

import {ProgressSpinnerModule} from 'primeng/progressspinner';



@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    SkeletonModule,
    BrowserAnimationsModule,
    CardModule,
    DialogModule,
    ButtonModule,
    ProgressSpinnerModule
    
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
