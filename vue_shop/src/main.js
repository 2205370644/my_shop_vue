import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//0.1:引入vuex库
import Vuex from "vuex";
// muit-ui
// import Mint from "mint-ui"
import 'mint-ui/lib/style.css'
// mui 
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'
// Vue.use(Mint)

// 
import axios from "axios"
axios.defaults.withCredentials = true
Vue.prototype.axios = axios


Vue.config.productionTip = false
// 引入组件
import { Header, Swipe, SwipeItem, Tabbar, Button, } from "mint-ui";


// 注册组件
Vue.component(Header.name, Header)
Vue.component(Tabbar.name, Tabbar)
Vue.component(Swipe.name, Swipe)
Vue.component(SwipeItem.name, SwipeItem)
Vue.component(Button.name, Button)



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')



// var Router = new VueRouter({
//   mode: 'history',
//   routes: []
// });

// new Vue({
//   router,
//   store,
//   render: h => h(App),
//   el: '#app',
//   mounteds: function () {
//     var name = this.$route.query.name;
//     console.log(name);
//   },
// });