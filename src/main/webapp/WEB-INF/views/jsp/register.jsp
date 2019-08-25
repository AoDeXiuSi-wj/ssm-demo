<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bootstrap Material Admin by Bootstrapious.com</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <%--框架静态资源 start--%>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/static/frame/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath }/static/frame/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/frame/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="${pageContext.request.contextPath }/static/frame/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/frame/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${pageContext.request.contextPath }/static/frame/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/frame/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/frame/js/charts-custom.js"></script>
    <!-- Main File-->
    <script src="${pageContext.request.contextPath }/static/frame/js/front.js"></script>
    <%--框架静态资源 end--%>
  </head>
  <body>
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>Dashboard</h1>
                  </div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form class="form-validate" name="form" id="form">
                    <div class="form-group">
                      <input id="register-username" type="text" name="registerUsername" required data-msg="Please enter your username" class="input-material">
                      <label for="register-username" class="label-material">User Name</label>
                    </div>
                    <div class="form-group">
                      <input id="register-email" type="email" name="registerEmail" required data-msg="Please enter a valid email address" class="input-material">
                      <label for="register-email" class="label-material">Email Address</label>
                    </div>
                    <div class="form-group">
                      <input id="register-password" type="password" name="registerPassword" required data-msg="Please enter your password" class="input-material">
                      <label for="register-password" class="label-material">password</label>
                    </div>

                    <div class="form-group">
                      <label for="register-password" class="label-material">出生日期</label>
                    </div>

                    <div class="form-group terms-conditions">
                      <input id="register-agree" name="registerAgree" type="checkbox" required value="ok" data-msg="Your agreement is required" class="checkbox-template">
                      <label for="register-agree">Agree the terms and policy</label>
                    </div>
                    <div class="form-group">
                      <button id="register" type="submit" onclick="regis()" name="registerSubmit" class="btn btn-primary">Register</button>
                    </div>
                  </form><small>Already have an account? </small><a href="login/page" class="signup">Login</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="copyrights text-center">
        <p>Design by <a href="https://bootstrapious.com" class="external">Bootstrapious</a>
          <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
        </p>
      </div>
    </div>
    <script>
        function regis() {
            $.ajax({
                url: "register/add",
                data: $('#form').serialize(),
                dataType: "json",
                type: "post",
                success: function(data) {
                    if (data.stat== "success") {
                        location.href = 'login/index?name=' + data.name;
                    }else if(data.stat=="Failure"){
                        alert(data.msg);
                    }else if(data.stat=="HalfSuccess"){

                    }else{
                        alert("内部错误！");
                    }
                }
            });
        }
    </script>
  </body>
</html>