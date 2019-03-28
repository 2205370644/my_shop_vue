<template>
  <div class="Photograph app-home">
    <mt-header fixed title="只记住你的美好">
      <router-link to="/" slot="left">
        <mt-button icon="back">返回</mt-button>
        <!-- <mt-button  >关闭</mt-button> -->
      </router-link>
      <mt-button icon="more" slot="right"></mt-button>
    </mt-header>

    <!-- <header class="mui-bar mui-bar-nav">
      <router-link :to="'/'" class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></router-link>
      <h1 class="mui-title">时光记忆</h1>
    </header>-->
    <div class="mui-content" style="background-color:#fff">
      <h5 style="background-color:#efeff4">慢生活</h5>
      <ul class="mui-table-view mui-grid-view">
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
          <a href="#">
            <img class="mui-media-object" src="../.././img/products/XR.jpg">
            <div class="mui-media-body">幸福就是可以一起睡觉</div>
          </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
          <a href="#">
            <img class="mui-media-object" src="../.././img/products/XR.jpg">
            <div class="mui-media-body">想要一间这样的木屋，静静的喝咖啡</div>
          </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
          <a href="#">
            <img class="mui-media-object" src="../.././img/products/XR.jpg">
            <div class="mui-media-body">Color of SIP CBD</div>
          </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
          <a href="#">
            <img class="mui-media-object" src="../.././img/products/XR.jpg">
            <div class="mui-media-body">静静看这世界</div>
          </a>
        </li>
      </ul>
      <ul class="mui-table-view mui-grid-view">
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
          <a href="#">
            <img class="mui-media-object" src="../.././img/products/XR.jpg">
            <div class="mui-media-body">幸福就是可以一起睡觉</div>
          </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
          <a href="#">
            <img class="mui-media-object" src="../.././img/products/XR.jpg">
            <div class="mui-media-body">想要一间这样的木屋，静静的喝咖啡</div>
          </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
          <a href="#">
            <img class="mui-media-object" src="../.././img/products/XR.jpg">
            <div class="mui-media-body">Color of SIP CBD</div>
          </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
          <a href="#">
            <img class="mui-media-object" src="../.././img/products/XR.jpg">
            <div class="mui-media-body">静静看这世界</div>
          </a>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
import { Header } from "mint-ui";
// Vue.component(Header.name, Header);
export default {};
</script>
<style>
.mui-bar-nav {
  background: #ff5b02;
}
.mui-bar-nav > h1 {
  color: aliceblue;
}
</style>
