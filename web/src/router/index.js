import Vue from 'vue';
import Router from 'vue-router';

// import HelloWorld from '@/components/HelloWorld';
import Review from '@/components/Review';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Review',
      component: Review,
    },
  ],
});
