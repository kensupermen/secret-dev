<template>
  <div>
    <div class="col-sm-4">
      <autocomplete
        url="http://localhost:3000/api/v1/companies/search"
        anchor="logo"
        label="name"
        placeholder="Tim lang cua toi"
        :classes="{ input: 'form-control', wrapper: 'input-wrapper'}"
        :onSelect="handleSelect"
        :on-select="getData">
      </autocomplete>
    </div>
    <div class=""></div>
  <hr />
  <pre v-if="comments.size > 0" :style="preStyle">
    <b>Selected Data:</b>
    {{ comments }}
  </pre>

  <comment></comment>

  </div>
</template>

<script>
import Autocomplete from 'vue2-autocomplete-js';
import axios from 'axios';
import Comment from './Comment';

export default {
  name: 'Review',

  components: {
    Autocomplete,
    Comment
  },

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

    handleSelect(company) {
      // TODO: Tranfer company to comment component
      axios.get('http://localhost:3000/api/v1/companies/' + company.id + '/comments')
        .then((response) => {
          this.comments = response.data
        })
    }
  }
}
</script>

<style lang="scss">
  @import "vue2-autocomplete-js/dist/style/vue2-autocomplete.css"
</style>
