import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { TestComponent } from './test/test.component';
import { DateTimeComponent } from './date-time/date-time.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatNativeDateModule } from '@angular/material/core';
import { MatButtonModule } from '@angular/material/button';
import { FormsModule } from '@angular/forms';
import { DatePipe } from '@angular/common';

import { HttpClientModule } from '@angular/common/http';
import { EmpListComponent } from './emp-list/emp-list.component';
import { EmployeeDetailComponent } from './employee-detail/employee-detail.component';
import { EmployeeService } from './employee.service';
import { QuoteShowComponent } from './quote-show/quote-show.component';

import { NgxSkeletonLoaderModule } from 'ngx-skeleton-loader';
import { FilterPipe } from './Pipes/filter.pipe';

@NgModule({
  declarations: [
    AppComponent,
    TestComponent,
    DateTimeComponent,
    EmpListComponent,
    EmployeeDetailComponent,
    QuoteShowComponent,
    FilterPipe
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatDatepickerModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
    MatNativeDateModule,
    FormsModule,
    HttpClientModule,
    NgxSkeletonLoaderModule
  ],
  providers: [DatePipe, EmployeeService],
  bootstrap: [AppComponent]
})

export class AppModule { }
