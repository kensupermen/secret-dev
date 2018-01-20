<template>
  <div class="footer">
    <i class="fa fa-github fa-2x" aria-hidden="true"></i>
    <i class="fa fa-facebook-official fa-2x" aria-hidden="true"></i>
  </div>
</template>

<script>

export default {
  name: 'Footer',
  data() {
    return {
      msg: 'Footer',
    };
  },
};
</script>

<style lang="scss">
  .footer {
    position: absolute;
    right: 0;
    bottom: 0;
    left: 0;
    padding: 5px;
    background-color: #efefef;
    text-align: center;
  }
</style>
