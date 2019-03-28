<template>
  <div class="Mail app-home">
    <mt-header title="淘一下宝" class="fixed"></mt-header>
    <h4>大牌臻选</h4>
    <!-- 一个商品信息 -->
    <div v-for="item in list" :key="item.pid">
      <router-link class="shop" :to="'/details'+`?pid=${item.pid}`">
        <!-- 弹性布局    details?id=11-->
        <!-- 分页 -->
        <!-- 美食图片 -->
        <div class="shop-img">
          <img :src="item.p_img" class="shop-img">
        </div>
        <!-- 店铺信息 -->
        <div class="shop-info">
          <!-- 弹性布局 -->
          <span class="shop-dname ell">{{item.title}}</span>
          <!-- 溢出截取 -->
          <span class="shop-tel">{{item.title}}</span>
          <span class="shop-addr">{{item.subtitle}}</span>
          <span class="shop-addr">价格:￥{{item.price}}</span>
          <!-- <span class="shop-ctime">营业时间:{{item.subtitle}}</span> -->
        </div>
        <div class="shop-star">
          <!-- 弹性布局 -->
          <div class="star-after">★★★★★</div>
          <!-- 绝对定位 -->
          <!-- 打分 -->
          <!-- 绝对定位 -->
          <div class="star-before" style="width:30px">★★★★★</div>
        </div>
      </router-link>
    </div>
    <!-- 打分 -->
    <!-- <header class="mui-bar mui-bar-nar app-header">
      <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" v-on:click="back"></a>
      <div class="mui-diti">
        <input id="mysrch" type="type" class="mui-clear" placeholder="输入您想查找的内容" v-model="kwords">
        <img @click="hanleso" src=".././img/icon/sousuo.png"> 
      </div>
      <router-link to="/channel" class="mui-icon mui-icon-bars mui-pull-right"></router-link>
    </header>-->
    <!-- <div class="mui-content">
        <ul class="mui-table-view mui-grid-view">
          <li
            v-for="item in list "
            :key="item.pid"
            class="mui-table-view-cell mui-media mui-col-xs-6"
          >==========================================================
            <a href="#">
              <img :src="item.p_img" class="mui-media-object">
              <div class="mui-media-body">{{item.title}}</div>
              <div class="mui-media-body">{{item.subtitle}}</div>
              <div class="mui-media-body">￥{{item.price}}</div>
            </a>
          </li>
    </ul>-->

    <!-- <ul
        id="list"
        v-for="item in list "
        :key="item.pid"
        class="mui-table-view mui-table-view-chevron"
      >
        <li class="mui-table-view-cell mui-media">
          <router-link :to="'/details'+`?pid=`+item.pid" class="mui-navigate-right">
            <img class="mui-media-object mui-pull-left" data-lazyload-id="0" :src="item.p_img">
            <div class="mui-media-body">
              {{item.title}}
              <p class="mui-ellipsis">{{item.subtitle}}</p>
            </div>
          </router-link>
        </li>
    </ul>-->
  </div>
</template> 

 
<script>
export default {
  data() {
    return {
      list: {}
    };
  },
  created() {
    //当组件对象创建成功后即可发送ajax请求
    this.getproduct();
  },
  methods: {
    getproduct() {
      var url = "http://localhost:3000/getproduct";
      this.axios.get(url).then(result => {
        this.list = result.data;
        console.log(result.data);
      });
    }
  }
};
</script> 
<style scoped>
/* 1:当前商品信息 */

.shop {
  margin: 0.5rem;
  display: flex; /*默认子元素水平排列*/
  position: relative; /*相对定位*/
  padding: 20rpx;
  border: 1px solid #ddd;
  border-radius: 5px;
}

/* 2:当前图片 */

.shop-img {
  border: #aff solid 1px;
  width: 5rem;
  height: 5rem;
  margin-right: 0.5rem; /*右侧外边距*/
}

/* 3:店铺信息*/

.shop-info {
  display: flex;
  flex-direction: column;
  width: 10rem;
  /* border: red solid 1px; */
  line-height: 1.5;
  color: #666;
  font-size: 12px; /*字体rpx 模糊 */
}

/* 4:店铺名称 */

.shop-dname {
  width: 10rem;
  color: #333;
  font-size: 16px;
  font-weight: 600;
}

/* 4.1:通过功能:截取字符串并添加省略号 */

.ell {
  overflow: hidden; /*溢出隐藏*/
  white-space: nowrap; /*不允许换行*/
  text-overflow: ellipsis; /*省略号*/
}

/* 5:打分 */

.shop-star {
  position: absolute;
  right: 1rem;
  top: 0.5rem;
}

.star-after {
  color: #e2e2e2; /*底层灰色星星*/
}

.star-before {
  /*上层黄色星星*/
  position: absolute;
  top: 0;
  left: 0;
  overflow: hidden;
  color: #f19e38;
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
.mui-media-body {
  margin: 0%;
}
.mui-content > .mui-table-view:first-child {
  margin: 0;
}

/* 搜索框 */
.app-container {
  padding: 0;
}
.mui-bar {
  background: -webkit-linear-gradient(top, #acd6ff 0%, #c4e1ff 100%) !important;
}
/*搜索框父元素*/
.mui-diti {
  width: 75%;
  height: 4rem;
  position: absolute;
  margin-left: 10%;
}
/*搜索框搜索图标*/
.mui-diti img {
  width: 1.3rem;
  position: absolute;
  top: 0.7rem;
  margin-left: -2rem;
}
/*搜索框input*/
.mui-clear {
  margin-top: 0.4rem !important;
  width: 100%;
  height: 2rem;
  font-size: 1.2rem;
  border-radius: 0.6rem;
  padding-left: 1.5rem;
  border: 1px solid transparent;
}
</style>
