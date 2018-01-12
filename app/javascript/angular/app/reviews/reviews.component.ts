import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-reviews',
  template: require('./reviews.component.html')
})

export class ReviewsComponent implements OnInit {

  constructor() { }

  name = "King";

  ngOnInit() {
  }

}
