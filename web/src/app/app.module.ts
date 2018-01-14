import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';

import { AppComponent } from './app.component';
import { ReviewsComponent } from './reviews/reviews.component';

import {
  HeaderComponent,
  FooterComponent
} from './shared'

@NgModule({
  declarations: [
    AppComponent,
    ReviewsComponent,
    HeaderComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
