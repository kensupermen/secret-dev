<template>
  <div>
    <input type="text" class="form-control" placeholder="Tim lang cua tui"/>
    <div>
      <h2>Companies</h2>
      <ul>
        <li v-for="company in allCompanies">
          {{ company.name }}
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Review',

  computed: {
    allCompanies() {
      axios.get('http://localhost:3000/api/v1/companies')
        .then((response) => {
          this.$store.state.companies = response.data
        })
      return this.$store.state.companies
    }
  }
}
</script>
