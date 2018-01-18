import { Component, OnInit } from '@angular/core';
import { Http, Response } from '@angular/http'

@Component({
  selector: 'app-reviews',
  templateUrl: './reviews.component.html',
  styleUrls: ['./reviews.component.scss']
})

export class ReviewsComponent implements OnInit {
  comments = [];
  private apiUrl = 'http://localhost:3000/api/v1/companies/1/comments';

  constructor(private http: Http) {
    this.getComments()
  }

  getComments() {
    this.http.get(this.apiUrl).subscribe(res => {
      this.comments = res.json()
    })
  }

  ngOnInit() {
  }

}
