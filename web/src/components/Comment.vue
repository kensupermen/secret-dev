<template>
  <div>
    <h3>Comment</h3>

  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'Comment',

  data() {
    comments: []
  },

  methods: {
    fetchComments() {
      axios.get('http://localhost:3000/api/v1/companies/1/comments')
        .then((response) => {
          this.comments = response.data
          console.log("comments = ", this.comments)
        })
      return this.comments;
    }
  },

  mounted () {
   // this.fetchComments()
  }
}
</script>
