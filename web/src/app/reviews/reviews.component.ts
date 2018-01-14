import { Component, OnInit } from '@angular/core';
import { Http, Response } from '@angular/http'

@Component({
  selector: 'app-reviews',
  templateUrl: './reviews.component.html',
  styleUrls: ['./reviews.component.scss']
})

export class ReviewsComponent implements OnInit {
  data = [];
  private apiUrl = 'http://localhost:3000/api/v1/companies';

  constructor(private http: Http) {
    this.getData()
  }

  getData() {
    this.http.get(this.apiUrl).subscribe(res => {
      console.log(res.json())
      this.data = res.json()
    })
  }

  ngOnInit() {
  }

}
