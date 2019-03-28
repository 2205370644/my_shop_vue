<template>
  <div class="mui-ava app-home">
    <mt-header title="404" class="fixed"></mt-header>
    <div class="mui-bei">
      <div class="mui-bao">抱歉！暂无更多内容!</div>
    </div>
  </div>
</template>
<script>
import { Header } from "mint-ui"; 
export default {
  data() {
    return {};
  }
};
</script>
<style>
.mui-ava {
  width: 100%;
  height: 36.4rem;
  top: 0.3rem;
  background-image:url(../.././img/bg404.png);
}
.mui-bei {
  width: 100%;
  height: 36.4rem;
  top: 0.3rem;
  display: flex;
  background: rgba(3, 3, 3, 0.6);
  justify-content: center;
  align-items: center;
}
.mui-bao {
  width: 60%;
  height: 10rem;
  color: #fff;
  font-size: 1.5rem;
}
</style>