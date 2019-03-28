<template>
  <div>
    <mt-header title="欢迎注册"></mt-header>
    <div class="app-register">
      <div class="mui-card">
        <div class="mui-card-header">
          <h3>欢迎注册</h3>
          <hr>
        </div>
        <div class="mui-card-content">
          <div class="mui-card-content-inner">
            <form>
              用户名:
              <input
                @blur.prevent="checkName"
                type="text"
                v-model="uname"
                value
                placeholder="请输入用户名"
              >
              密码:
              <input type="password" v-model="upwd" value placeholder="请输入密码">
              确认密码:
              <input type="password" v-model="upwd1" value placeholder="请输入确认密码">
              <button class="mint-button mint-button--primary mint-button--large">
                <!---->
                <label class="mint-button-text">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">注册</font>
                  </font>
                </label>
                <!-- 忘记密码 -->
              </button>
              <a href="#">忘记密码</a>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      uname: "",
      upwd: "",
      upwd1: ""
    };
  },
  mathods: {
    // 判断用户名是否存在
    checkName() {
      var name = this.uname;
      // 发送请求 查数据库
      this.axios
        .get("http://127.0.0.1:3000/existsName", { params: { name } })
        .then(result => {
          var code = result.data.code;
          if (code == 1) {
            this.isSumit = true;
            Toast("欢迎注册");
          } else {
            this.isSumit = false;
            Toast("用户名已存在");
          }
        });
    },
    register() {
      var p = this.upwd;
      var p1 = this.upwd1;
    }
  }
};
</script>
<style scoped>
.app-register .mui-card {
  margin-top: 3rem;
}
.app-register .mui-card .mui-card-header > h3 {
  color: #ff5b02;
  margin-left: 7rem;
}
</style>

