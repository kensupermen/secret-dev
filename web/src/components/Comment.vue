<template>
  <div class="comments">
    <div class="comment box" v-for="comment in comments">
      <div class="avatar">
        <img src="../assets/avatar.png" alt="">
      </div>
      <div class="meta">
        {{ comment.created_at }}
      </div>
      <div class="message">
        {{ comment.message }}
      </div>
      <div class="social">
        <i class="fa fa-thumbs-o-up"></i> 100 Like
        <i class="fa fa-comment-o"></i> 500
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'Comment',

  data() {
    return {
      comments: []
    }
  },

  methods: {
    fetchComments() {
      axios.get('http://localhost:3000/api/v1/companies/1/comments')
        .then((response) => {
          this.comments = response.data
        })
    }
  },

  mounted () {
    this.fetchComments()
  }
}
</script>

<style lang="scss">
  .avatar {
    img {
      width: 32px;
      height: 32px;
    }
    margin: 10px;
  }
  .box {
    border: 1px solid #dddfe2;
    background: #fff;
  }
  .comment {
    margin-bottom: 10px;
    padding: 15px 15px;
  }

  .meta {
    color: #90949c;
    font-size: 12px;
    margin-bottom: 8px;
  }
  .message {
    margin-bottom: 10px;
  }
  .social {
    font-family: Menlo, Roboto, Arial, sans-serif;
    color: #6a737d;
    font-weight: 500;
  }
</style>
