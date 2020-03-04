  <template>
  <div class="login-container">
    <el-form :model="myForm" :rules="myRule"
             status-icon
             ref="myForm"
             label-position="left"
             label-width="0px"
             class="demo-ruleForm login-page">
      <h3 class="title">登录</h3>
      <el-form-item prop="username">
        <el-input type="text"
                  v-model="myForm.username"
                  auto-complete="off"
                  placeholder="用户名"
        />
      </el-form-item>
      <el-form-item prop="password">
        <el-input type="password"
                  v-model="myForm.password"
                  auto-complete="off"
                  placeholder="密码"
        />
      </el-form-item>
<!--      <el-checkbox
        v-model="checked"
        class="rememberme"
      >记住密码</el-checkbox>-->
      <el-form-item style="width:100%;">
        <el-button type="primary" style="width:100%;" @click="handleSubmit" :loading="logining">登录</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
  export default {
    data(){
    const validatePassword = (rule, value, callback) => {
      if (value.length < 6) {
        callback(new Error('管理员密码长度应大于6'))
      } else {
        callback()
      }
    }
    return {
      logining: false,
      myForm: {
        username: 'admin123',
        password: 'admin123'
      },
      myRule: {
        username: [{ required: true, message: '管理员账户不允许为空', trigger: 'blur' }],
        password: [
          { required: true, message: '管理员密码不允许为空', trigger: 'blur' },
          { validator: validatePassword, trigger: 'blur' }
        ]
      },
      passwordType: 'password',
      loading: false
    }
  },
    methods: {
      handleSubmit () {
        this.$refs.myForm.validate((valid) => {
          if (valid) {
            this.logining = true;
            if (this.myForm.username === 'admin123' && this.myForm.password === 'admin123') {
              this.logining = false;
              sessionStorage.setItem('user', this.myForm.username);
              this.$router.push({path: '/'});
            }else{
              this.logining = false;
              this.$alert('账号或密码错误', '温馨提示', {
                confirmButtonText: '确定'
              })
            }
          }else{
            console.log('error submit!');
            return false;
          }
        })
      }
    }
  };
</script>

  <style>
    .login-container {
      width: 100%;
      height: 100%;
    }
    .login-page {
      -webkit-border-radius: 5px;
      border-radius: 5px;
      margin: 180px auto;
      width: 350px;
      padding: 35px 35px 15px;
      background: #fff;
      border: 1px solid #eaeaea;
      box-shadow: 0 0 25px #cac6c6;
    }
    label.el-checkbox.rememberme {
      margin: 0px 0px 15px;
      text-align: left;
    }
  </style>
