<template>
  <div id="app">
    <!-- <mt-header fixed ></mt-header>     -->
    <router-view/>
    <!-- tabbar -->
    <nav class="mui-bar mui-bar-tab">
      <router-link :to="'/'" class="mui-tab-item" href="#tabbar">
        <span class="mui-icon">
          <img src="./img/zan.png">
        </span>
        <span class="mui-tab-label">首页</span>
      </router-link>
      <router-link :to="'/Life'" class="mui-tab-item" href="#tabbar-with-chat">
        <span class="mui-icon mui-icon-extra mui-icon-extra-holiday"></span>
        <span class="mui-tab-label">生活圈</span>
      </router-link>
      <router-link :to="'/Order'" class="mui-tab-item" href="#tabbar-with-contact">
        <span class="mui-icon mui-icon-extra mui-icon-extra-order">
          <span class="mui-badge">9</span>
        </span>
        <span class="mui-tab-label">订单</span>
      </router-link>
      <router-link :to="'/my'" class="mui-tab-item" href="#tabbar-with-map">
        <span class="mui-icon mui-icon-contact"></span>
        <span class="mui-tab-label">我的</span>
      </router-link>
    </nav>
  </div>
</template>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
#app > router-link {
  padding: 0 0 3rem 0;
}
.mint-header {
  background: #ff5b02;
}
/* .mui-tab-item>.mui-icon>img:active{ */
/* box-shadow: 2px 2px 3px blue ; */
/* border: blue solid 1px; */
/* } */
</style>
