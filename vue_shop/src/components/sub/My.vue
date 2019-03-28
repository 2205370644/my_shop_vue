<template>
  <div id="app" class="app-home">
    <div
      class="mui-scroll"
      style="transform: translate3d(0px, 0px, 0px) translateZ(0px); transition-duration: 0ms;"
    >
      <ul class="mui-table-view mui-table-view-chevron">
        <li class="mui-table-view-cell">
          <a href="#account" class="mui-navigate-right">
            <h4>
              <span>昵称</span>
              <p class="mui-ellipsis">账号:【【】】</p>
              <router-link :to="'/login'">登录</router-link>
            </h4>
          </a>
        </li>
        <!-- <li class="mui-table-view-cell mui-media">
          <a class="mui-navigate-right" href="#account">
            <div class="mui-media-body">
              <div id="NC">
                <div>
                  <img src="../.././img/jg/1.jpg" alt>
                </div>
                <h4>
                  <span>昵称</span>
                  <p class="mui-ellipsis">账号:【【】】</p>
                  <router-link :to="'/login'">登录</router-link>
                </h4>
                <h4>/</h4>
                <h4>
                  <router-link :to="'/register'">注册</router-link>
                </h4>
              </div>
            </div>
          </a>
        </li>-->
      </ul>
      <ul class="mui-table-view mui-table-view-chevron">
        <li class="mui-table-view-cell">
          <a href="#account" class="mui-navigate-right">账号与安全</a>
        </li>
      </ul>
      <ul class="mui-table-view mui-table-view-chevron">
        <li class="mui-table-view-cell">
          <a href="#notifications" class="mui-navigate-right">新消息通知</a>
        </li>
        <li class="mui-table-view-cell">
          <a href="#privacy" class="mui-navigate-right">隐私</a>
        </li>
        <li class="mui-table-view-cell">
          <a href="#general" class="mui-navigate-right">通用</a>
        </li>
      </ul>
      <ul class="mui-table-view mui-table-view-chevron">
        <li class="mui-table-view-cell">
          <a href="#about" class="mui-navigate-right">
            关于MUI
            <i class="mui-pull-right update">V3.1.0</i>
          </a>
        </li>
      </ul>
      <ul class="mui-table-view">
        <li class="mui-table-view-cell" style="text-align: center;">
          <a>退出登录</a>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {};
</script>

<style scoped>
/* .mui-table-view-cell > .mui-navigate-right > .mui-media-body {
  border: #333 solid 3px;
}
.mui-table-view > .mui-table-view-cell > .mui-navigate-right > a > h1 > a {
} */
.mui-table-view-cell > .mui-navigate-right > .mui-media-body > div > h4 {
  position: relative;
  color: #333;
  top: -1.2rem;
  float: right;
}
.mui-table-view-cell > .mui-navigate-right > .mui-media-body > div > h4 > a {
  text-decoration: none;
  color: #333;
}
/* 昵称 */
#NC {
  width: 20px;
  height: 20px;
}
#NC > img {
  width: 100%;
  height: 100%;
}
</style>


