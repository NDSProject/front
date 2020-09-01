import { createApp } from 'vue';
import BootstrapVue from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';

import App from './App.vue';
import './registerServiceWorker';
import router from './router';
import store from './store';

createApp(App)
  .use(BootstrapVue)
  .use(store)
  .use(router)
  .mount('#app');
