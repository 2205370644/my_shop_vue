<template>
  <div id="life" class="app-home">
    <div class="mui-content">
      <div class="mui-card"></div>
      <div v-for="item in rows" :key="item.uid" class="mui-card">
        <div class="mui-card-header">
          <img :src="item.u_img">
          <span>{{item.uname}}</span>
        </div>
        <div class="mui-card-content">
          <div id="img">
            <img src="../.././img/HB.png" alt>
          </div>
          <div class="mui-card-content-inner">{{item.content}}</div>
        </div>
        <div class="mui-card-footer">
          <div>
            <span>
              <img @click="zan" src="../.././img/zan.png" alt>
              <span>{{item.point}}</span>
            </span>
            <span>
              <img src="../.././img/pl.png" alt>
            </span>
            <span>
              <img src="../.././img/fx.png" alt>
            </span>
          </div>
        </div>
      </div>
    </div>
    <!-- <div class="mui-card">
        <div class="mui-card-header mui-card-media">
          <img src="../.././img/HB.png">
          <div class="mui-media-body">
            小M
            <p>发表于 2016-06-30 15:30</p>
          </div>
          <img class="mui-pull-left" src="../.././img/HB.png" width="34px" height="34px">
          <h2>小M</h2>
          <p>发表于 2016-06-30 15:30</p>
        </div>
        <div class="mui-card-content">
          <img src="../.././img/HB.png" alt width="100%">
        </div>
        <div class="mui-card-footer">
          <a class="mui-card-link">Like</a>
          <a class="mui-card-link">Comment</a>
          <a class="mui-card-link">Read more</a>
        </div>
      </div>
    </div>-->
  </div>
</template>
<script>
import { Toast } from "mint-ui";
export default {
  data() {
    return {
      rows: []
      //   id: []
    };
  },
  created() {
    this.getLifeimg();
  },
  methods: {
    zan() {
      var url = "http://127.0.0.1:3000/zan";
      this.axios.get(url).then(result => {
        if (result.data.affectedRows == 1) {
          this.rows[1].point++;
          Toast("点赞成功");
          // console.log(this.rows[0].point)=====================x写死的----后期修改
        } else {
          Toast("点赞失败");
        }
        console.log(result.data.affectedRows);
      });
      //   fieldCount: 0,
      //   affectedRows: 1,
      //   insertId: 0,
      //   serverStatus: 2,
      //   warningCount: 0,
      //   message: '(Rows matched: 1  Changed: 1  Warnings: 0',
      //   protocol41: true,
      //   changedRows: 1 }
      // 现场计数：0，
      // 影响因素：1，
      // 插入：0，
      // 服务器状态：2，
      // 警告计数：0，
      // 消息：“（行匹配：1已更改：1个警告：0”，
      // 原版41：是的，
      // 更衣室：1
    },
    getLifeimg() {
      var url = "http://127.0.0.1:3000/getLifeimg";
      this.axios.get(url).then(result => {
        this.rows = result.data;
        // console.log(result.data);
      });
    }
  }
};
</script>

<style scoped>
.mui-card-header > img {
  border-radius: 1rem; 
  margin-right: 0.5rem;
}
.mui-card-header > span {
  color: #666;
  font-size: 14px;
}
/* .mui-card-header > div > span {
  display: inline-block;
  width: 10px;
  height: 10px;
} */
.mui-card-header,
.mui-card-footer {
  justify-content: start;
}
.mui-card-footer {
  margin-left: 13rem;
}
/* .mui-card-footer > div > span {
  vertical-align: middle;
  padding-top: 18px;
} */
.mui-card-footer > div > span > img {
  width: 20px;
  margin: 0.2rem 0.2rem 0.5rem 0;
  display: inline-block;
  vertical-align: middle;
}
.mui-card-footer > div > span ~ span {
  margin-left: 0.5rem;
  width: 20px;
}
#img {
  margin-left: 0.5rem;
  padding: 1rem 0.5rem 0.5rem 0.5rem;
  width: 21rem;
}
#img > img {
  width: 100%;
}
</style>
