<template>
  <div id="app">
    <app-header></app-header>
    <div class="container">
      <router-view/>
    </div>
    <app-footer></app-footer>
  </div>
</template>

<script>
import 'font-awesome/scss/font-awesome.scss'
import 'bootstrap/scss/bootstrap.scss'
import AppHeader from '@/components/AppHeader';
import AppFooter from '@/components/AppFooter';

export default {
  name: 'App',
  components: {
    AppHeader,
    AppFooter
  },
};
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
