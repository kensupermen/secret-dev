<template>
  <div>
  <autocomplete
    url="http://localhost:3000/api/v1/companies/search"
    anchor="logo"
    label="name"
    placeholder="Tim lang cua toi"
    :classes="{ input: 'form-control', wrapper: 'input-wrapper'}"
    :onSelect="handleSelect"
    :on-select="getData">
  </autocomplete>
  <hr />
  <pre v-if="comments.size > 0" :style="preStyle">
    <b>Selected Data:</b>
    {{ comments }}
  </pre>
  </div>
</template>

<script>
import Autocomplete from 'vue2-autocomplete-js';
import axios from 'axios';

export default {
  name: 'Review',

  components: { Autocomplete },

  data() {
    return {
      companies: [],
      comments: [],
      preStyle: {
        background: "#f2f2f2",
        fontFamily: "monospace",
        fontSize: "1em",
        display: "inline-block",
        padding: "15px 7px",
      }
    }
  },

  mounted () {
    this.fetchCompanies()
  },
  methods: {
    fetchCompanies() {
      axios.get('http://localhost:3000/api/v1/companies')
        .then((response) => {
          this.companies = response.data
        })
    },

    getData(obj){
      console.log(obj);
    },

    handleSelect(data) {
      axios.get('http://localhost:3000/api/v1/companies/' + data.id + '/comments')
        .then((response) => {
          this.comments = response.data
        })
      console.log(this.comments)
    }
  }
}
</script>

<style lang="scss">
  @import "vue2-autocomplete-js/dist/style/vue2-autocomplete.css"
</style>
