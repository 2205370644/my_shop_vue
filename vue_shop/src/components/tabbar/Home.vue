<template>
  <div class="app-home">
    <mt-header title="非你莫属" fixed></mt-header>
    <!-- 轮播图 -->
    <mt-swipe :auto="2500" vertical lazy-load>
      <mt-swipe-item v-for="item in rows" :key="item.id">
        <img :src="item.img_url">
      </mt-swipe-item>
    </mt-swipe>
    <!-- 九宫格 -->
    <ul class="mui-table-view mui-grid-view mui-grid-9">
      <li
        v-for="item in list"
        :key="item.id"
        class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"
      >
        <!--         <router-link :to="`/particulars/:${item.lid}`">
          <img :src="item.mg">
        </router-link>-->
        <router-link :to="item.pathnav">
          <img :src="item.img_url">
          <div class="mui-media-body">{{item.title}}</div>
        </router-link>
      </li>
    </ul>
    <!--新人专区 -->
    <div class="XR">
      <div>
        <h4>新人专享</h4>
        <span>
          <router-link :to="'/Mall'">更多></router-link>
        </span>
      </div>
      <div>
        <router-link :to="'/Mall'">
          <img src="../.././img/products/XR.jpg">
        </router-link>
      </div>
      <div>
        <div v-for="item in XR" :key="item.id">
          <a href="#">
            <div>
              <img :src="item.p_img">
            </div>
            <p>{{item.title}}</p>
          </a>
          <p>新人价:￥{{item.price}}</p>
        </div>
      </div>
    </div>
    <!-- 红包 -->
    <div class="HB">
      <img src="../.././img/HB.png">
    </div>
    <!-- <h1>
      <router-link :to="'/Photograph'">摄影</router-link>
    </h1>-->
    <!-- 大牌臻选 -->
    <div class="XR dp">
      <div>
        <h4>大牌臻选</h4>
        <span>
          <router-link :to="'/Mall'">更多></router-link>
          <!--循环前四个logo-->
        </span>
      </div>
      <div>
        <router-link :to="'/Mall'">
          <img src="../.././img/products/DP.jpg">
        </router-link>
      </div>
      <div id="dp">
        <div v-for="item in XR" :key="item.id">
          <a href="#">
            <div>
              <img :src="item.p_img">
            </div>
            <p>{{item.title}}</p>
          </a>
          <p>新人价:￥{{item.price}}</p>
        </div>
      </div>
    </div>

    <!-- 天天潮玩 -->
    <div class="XR dp">
      <div>
        <h4>天天潮玩</h4>
        <span>
          <router-link :to="'/Fun'">更多></router-link>
          <!--循环前四个logo-->
        </span>
      </div>
      <div>
        <router-link :to="'/Fun'">
          <img src="../.././img/products/CW.jpg">
        </router-link>
      </div>
      <div id="dp">
        <div v-for="item in XR" :key="item.id">
          <a href="#">
            <div>
              <img :src="item.p_img">
            </div>
            <p>{{item.title}}</p>
          </a>
          <p>新人价:￥{{item.price}}</p>
        </div>
      </div>
    </div>
    <!-- 商品列表 -->

    <div class="mui-content">
      <div>
        <h4>为您推荐</h4>
      </div>
      <ul
        id="list"
        v-for="item in XR "
        :key="item.pid"
        class="mui-table-view mui-table-view-chevron"
      >
        <li class="mui-table-view-cell mui-media">
          <router-link
            :to="{  
        path: '/details',
        query: {  
           pid:`${item.pid}`, // orderNum : this.searchData.orderNo
        }  
    }"
          >
            <!-- <router-link :to="'/details'+`?pid=`+item.pid"> -->
            <img class="mui-media-object mui-pull-left" data-lazyload-id="0" :src="item.p_img">
            <div class="mui-media-body">
              {{item.title}}
              <p class="mui-ellipsis">{{item.subtitle}}</p>
            </div>
          </router-link>
        </li>
      </ul>
    </div>
  </div>
</template> 

 
<script>
import Vue from "vue";
import { Lazyload } from "mint-ui";

Vue.use(Lazyload);
export default {
  data() {
    return {
      rows: [],
      list: [],
      XR: []
    };
  },
  created() {
    //当组件对象创建成功后即可发送ajax请求
    this.getjg();
    this.getImages();
    this.getXR();
  },
  methods: {
    getXR() {
      var url = "http://localhost:3000/getXR";
      this.axios.get(url).then(result => {
        this.XR = result.data;
        // console.log(result.data);
      });
    },
    getjg() {
      var url = "http://localhost:3000/getjg";
      this.axios.get(url).then(result => {
        // console.log("123")
        this.list = result.data;
        // console.log(result.data[6].pathnav);
      });
    },
    getImages() {
      //完成一个功能，获取服务器端的轮播图片
      //1.发送ajax请求
      var url = "http://localhost:3000/getImages";
      this.axios.get(url).then(result => {
        this.rows = result.data;
        // console.log(result.data[0]);
      });
      //2.获取返回数据保存list
    }
  }
};
</script>
 

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.app-home {
  padding: 2.5rem 0 3rem 0;
  background: #ffffff;
}
.mint-header {
  background: #ff5b02;
}
.mint-swipe {
  height: 80px;
}
.mint-swipe-item > img {
  width: 100%;
  height: 100%;
}
/*九宫格  */
.mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body {
  font-size: 6px;
  line-height: 15px;
  display: block;
  width: 100%;
  height: 15px;
  margin-top: -2px;
  text-overflow: ellipsis;
  color: #333;
}
.app-home {
  margin-bottom: 3rem;
}
.app-home > ul {
  background-color: #fff;
}
.mui-col-xs-4 {
  width: 25%;
}
.mui-grid-view.mui-grid-9 .mui-table-view-cell {
  padding: 0;
}
/* 新人专享 */
.XR {
  background: #fff;
  /* border: #ff5b02 solid 1px; */
  margin: 1rem 0.6rem 0 0.6rem;
  width: 95%;
  height: 13rem;
  overflow: hidden;
}
.XR > div:nth-child(2) {
  height: 9.5rem;
  float: left;
}
.XR > div > h4 {
  margin: 1rem 1rem 0.5rem;
  float: left;
  display: inline-block;
  width: 80%;
  color: #ff5b02;
  margin-top: 20px;
}
.XR > div > span {
  float: left;
  display: inline-block;
  width: 10%;
  margin-top: 23px;
  font-size: 10px;
}
.XR > div > span > a {
  color: #666;
  text-decoration: none;
}

.XR > div:nth-child(2) {
  width: 33.33%;
  text-align: center;
  display: inline-block;
}
.XR > div:nth-child(2) > a > img {
  width: 100%;
  border: #fff solid 2px;
}

.XR > div > div {
  float: left;
  width: 33.33%;
  height: 10rem;
  display: inline-block;
  border: #fff solid 3px;
}
.XR > div > div > a > div {
  width: 100%;
}
.XR > div > div > a > div > img {
  width: 100%;
  height: 6rem;
  align: center;
  clear: both;
}
.XR > div > div > a > p {
  margin: 0 0.5rem 0;
  font-size: 0.5rem;
  font-weight: 700;
  color: #333;
}
.XR > div > div > p {
  margin: 0 0.5rem 0;
  font-size: 0.5rem;
  font-weight: 700;
  /* color: #ff5b02; */
}
.HB {
  padding: 1rem 0.5rem 0 0.5rem;
  width: 100%;
  height: 90px;
}
.HB > img {
  border-radius: 0.3rem;
  width: 100%;
  height: 100%;
}
/* 大牌臻选 */
.dp {
  height: 22.5rem;
}
.dp > div:nth-child(2) {
  width: 66.66%;
}
.dp > div:nth-child(2) > a > img {
  width: 100%;
  height: 100%;
  /* border: red solid 1px; */
}

/* 为您推荐 */
.mui-content > div {
  margin: 2rem 0 1rem 0;
  border: #ff5b02 solid 1px;
  text-align: center;
  color: #ff5b02;
}
.mui-content > div > h4 {
  margin: 1rem 0 0.5rem 0;
  display: inline-block;
  text-align: center;
}
.mui-content {
  background: rgb(249, 250, 250);
}
.mui-content > ul {
  margin: 0rem 0.5rem 0.5rem 0.5rem;
}
.mui-content > ul > li {
  border-radius: 5px;
  /* border: #ff5b02 solid 1px; */
  /*     color: inherit */
  /* margin: 0rem .5rem  .5rem .5rem; */
}
</style>
