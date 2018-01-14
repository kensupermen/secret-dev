import { Component } from '@angular/core';
import { Http, Response } from '@angular/http'

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'app';
  private apiUrl = 'http://localhost:3000/api/v1/companies';
  data = [];

  constructor(private http: Http) {
    console.log('Hello dev!!!!!!')
    this.getData()
  }

  getData() {
    this.http.get(this.apiUrl).subscribe(res => {
      console.log(res.json())
      this.data = res.json()
    })
  }

}
