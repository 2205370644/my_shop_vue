<template>
  <div class="Cate app-home">
    <mt-header title="美食诱惑" class="fixed"></mt-header>
    <h1>美食</h1>
    <!-- 一个商品信息 -->
    <div class="shop" v-for="item in list" :key="item.pid">
      <!-- 弹性布局 -->
      <!-- 分页 -->
      <!-- 美食图片 -->
      <div class="shop-img">
        <img :src="item.p_img" class="shop-img">
      </div>
      <!-- 店铺信息 -->
      <div class="shop-info">
        <!-- 弹性布局 -->
        <span class="shop-dname ell">名称:{{item.title}}</span>
        <!-- 溢出截取 -->
        <span class="shop-tel">电话:{{item.title}}</span>
        <span class="shop-addr">地址:{{item.subtitle}}</span>
        <span class="shop-ctime">营业时间:{{item.subtitle}}</span>
      </div>
      <div class="shop-star">
        <!-- 弹性布局 -->
        <div class="star-after">★★★★★</div>
        <!-- 绝对定位 -->
        <!-- 打分 -->
        <!-- 绝对定位 -->
        <div class="star-before" style="width:30px">★★★★★</div>
      </div>
    </div>
  </div>
</template>  
<script>
export default {
  data() {
    return { list: [] };
  },
  created() {
    //当组件对象创建成功后即可发送ajax请求
  },
  methods: {}
};
</script> 
<style scoped>
</style>
