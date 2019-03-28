<template>
  <div id="product">
    <mt-header class="header" fixed></mt-header>

    <div v-for="item in list" :key="item.id" class="shop">
      <div class="DT">
        <img :src="item.p_img" alt>
      </div>
      <div>
        <div class="shop-price">
          <!-- 价格 -->
          <h3>￥{{item.price}}</h3>
          <span>{{item.title}}</span> 
        </div>
        <div class="shop-title">
          <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{item.introduce}}</span>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;领券立减200，成交价3599！荣耀Magic2、麒麟980、6.39英寸全视屏！</p>
        </div>
        <div class="norms">
         <span> 规格</span>
         <p><span>上市时间:</span><span>{{item.p_time}}</span></p>
         <p><span>屏幕尺寸:</span><span>{{item.size}}英寸</span></p>
         <p><span>运行内存:</span><span>{{item.ram}}GB</span></p>
         <p><span>机身内存:</span><span>{{item.rom}}GB</span></p> 
         <p><span>电池容量:</span><span>{{item.capacity}}mAh</span></p>
         <p><span>分辨率:  </span><span>{{item.resolution}}</span></p>
        </div>
        <h4>评价</h4>
        <!-- quan -->
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
    this.getdetails();
  },

  methods: {
    // 取到路由带过来的参数
    // 将数据放在当前组件的数据内

    getdetails() { 
      var pid = this.$route.query.pid;
      // alert(pid)
      var url = "http://127.0.0.1:3000/getdetails?pid="+pid;//pid=
      this.axios.get(url).then(result => {
        this.list = result.data;
        console.log(pid);
      });
    }
  }

  //   this.$http.get(baseURL+“api/条件”).then(function(res){
  //    this.msg = res.body;
  //  });

  // }
};
</script>
<style scoped>
#product {
  margin: 0 0 15rem 0;
}
.header {
  background-color: rgb(238, 207, 207);
}
.DT {
  width: 23.4rem;
  height: 25rem;
}
.DT > img {
  width: 100%;
  height: 100%;
}
.shop-price > h3 {
  float: left;
  margin-left: 1rem;
  display: inline-block;
  width: 5rem;
  line-height: 2rem;
  color: tomato;
  position: relative;
}
.shop-price > span:nth-child(2) {
  font-weight: 700;
  border: 2px solid red;
  position: absolute;
  top:25.7rem;
  left: 7rem;
  /* vertical-align:middle ; */
  float: left;
}
.shop-title {
  clear: both;
}
.shop-title>span{
  display: inline-block;
  /* border: red solid 2px; */
  width: 23.2rem;
  height: 5rem;
  font-size: 15px;
  font-weight: 700
}
.shop-title > p {
  color: #333;
  /* font-weight:600  */
}
/* 规格 */
.norms{
  background: #fff;
  border: red solid 1px;
  display: flex;
  flex-direction: column; 
  /* border: red solid 1px; */
  line-height: 1.5; 
  /* font-size: 12px; 字体rpx 模糊 */

}
.norms>p{
  /* display: inline-block; */
  margin: 0  .5rem .5rem 4rem;
  color: #333
}
.norms>span{
  margin: 1rem 0 1rem    10rem 
}
.norms>p>span:nth-child(1){
  /* display:inline-block; padding-left: 100%; width:100%; */
  font-weight:bold;
  color: #333;
  border: red solid 1px;
}
.norms>p>span:nth-child(2){
    display: inline-block;
    border: red solid 2px;
    width: 100px;
    height: 20px;
}
</style>
