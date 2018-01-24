<template>
  <div>
    <input type="text" class="form-control" placeholder="Tim lang cua tui"/>
    <div>
      <h2>Companies</h2>
      {{ companies }}
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Review',

  data() {
    return {
      companies: []
    }
  },

  mounted () {
    this.fetchCompanies()
  },
  methods: {
    fetchCompanies() {
      axios.get('http://localhost:3000/api/v1/companies')
        .then((response) => {
          // this.$store.state.companies = response.data
          this.companies = response.data
        })
    }
  }
}
</script>
