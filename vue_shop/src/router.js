import Vue from 'vue'
import Router from 'vue-router'
Vue.use(Router)
import 'mint-ui/lib/style.css'
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'

// 组件
import Home from './components/tabbar/Home.vue'
import Login from './components/tabbar/Login.vue'
import Register from './components/tabbar/Register.vue'
import My from './components/sub/My.vue'
import Order from './components/sub/Order.vue'
import Mall from './components/nav/Mall.vue'
import Life from './components/sub/Life.vue'
import Cate from './components/nav/Cate.vue'
import Fun from './components/nav/Fun.vue'
import Son from './components/nav/Son.vue'
import Ktv from './components/nav/Ktv.vue'
import Ticket from './components/nav/Ticket.vue'
import Photograph from './components/nav/Photograph.vue'
import All from './components/nav/All.vue'
import Notfound from './components/sub/Notfound.vue'

// 关于商品页面
import Details from './components/products/Details.vue'


export default new Router({
  routes: [
    { path: "/", name: "Home", component: Home },//通常大写T
    { path: "/Login", name: "Login", component: Login },//通常大写T
    { path: "/Register", name: "Register", component: Register },//通常大写T
    { path: "/My", name: "My", component: My },//通常大写T
    { path: "/Life", name: "Life", component: Life },//通常大写T
    { path: "/Mall", name: "Mall", component: Mall },//通常大写T
    { path: "/Cate", name: "Cate", component: Cate },//通常大写T
    { path: "/Fun", name: "Fun", component: Fun },//通常大写T
    { path: "/Son", name: "Son", component: Son },//通常大写T
    { path: "/Ktv", name: "Ktv", component: Ktv },//通常大写T
    { path: "/Photograph", name: "Photograph", component: Photograph },//通常大写T
    { path: "/Ticket", name: "Ticket", component: Ticket },//通常大写T
    { path: "/All", name: "All", component: All },//通常大写T
    { path: "/Notfound", name: "Notfound", component: Notfound },//通常大写T
    { path: "/Order", name: "Order", component: Order },//通常大写T
    // 商品页面
    { path: "/Details", name: "Details", component: Details },//通常大写T
  ]
})



