<template>
  <div>
    <div class="app-container">
      <header class="mint-header is-fixed">
        <div class="mint-header-button is-left"></div>
        <h1 class="mint-header-title">登一个陆</h1>
        <div class="mint-header-button is-right"></div>
      </header>
      <div class="app-login">
        <div class="mui-card">
          <div class="mui-card-header">
            <h3>欢迎登录</h3>
          </div>
          <div class="mui-card-content">
            <div class="mui-card-content-inner">
              <form>
                用户名:
                <input type="text" name="uname" v-model="uname" value placeholder="请输入用户名">
                密码:
                <input
                  type="password"
                  name="upwd"
                  v-model="upwd"
                  value
                  placeholder="请输入密码"
                >
                <button @click="login" class="mint-button mint-button--primary mint-button--large">
                  <!---->
                  <label class="mint-button-text">
                    <font style="vertical-align: inherit;">
                      <font style="vertical-align: inherit;">登录</font>
                    </font>
                  </label>
                </button>
              </form>
            </div>
          </div>
          <div class="mui-card-footer"></div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { Toast } from "mint-ui";
export default {
  data() {
    return {
      uname: "",
      upwd: ""
    };
  },
  methods: {
    login() {
      //1.获取用户名，密码
      var n = this.uname;
      var p = this.upwd;
      // alert(n+"---"+p)
      //2:验证
      var reg = /^[a-z0-9_]{3,8}$/i;
      if (!reg.test(n)) {
        Toast("用户名格式有误");
        return;
      }
      if (!reg.test(p)) {
        Toast("密码格式不正确");
        return;
      }
      // ajax
      var url = "http://127.0.0.1:3000/login?uname=" + n + "&upwd=" + p;
      this.axios.get(url).then(result => {
        console.log(result);
        if (result.data.code == 1) {
          Toast("登录成功");
          this.$router.push("/");
        } else {
          Toast("用户名或密码格式错误");
          this.$router.push("/register");
        }
      });
    }
  }
};
</script>
<style scoped>
.app-login .mui-card {
  margin-top: 6rem;
}
.app-login .mui-card .mui-card-header {
  margin-left: 7rem;
  color: #ff5b02;
}
</style>

