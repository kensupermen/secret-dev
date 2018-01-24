<template>
  <div>
  <autocomplete
    url="http://localhost:3000/api/v1/companies/search"
    anchor="logo"
    label="name"
    placeholder="Tim lang cua toi"
    :classes="{ input: 'form-control', wrapper: 'input-wrapper'}"
    :on-select="getData">
  </autocomplete>
  <hr />
  <pre v-if="preContent" :style="preStyle">
    <b>Selected Data:</b>
    {{ preContent }}
  </pre>

    <div>
      <h2>Companies</h2>
    </div>
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
      preContent: "",
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
    }
  }
}
</script>

<style lang="scss">
  @import "vue2-autocomplete-js/dist/style/vue2-autocomplete.css"
</style>
