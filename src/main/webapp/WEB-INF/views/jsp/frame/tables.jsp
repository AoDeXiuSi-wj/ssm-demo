<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <script>
      $(function () {
         $.ajax({
            url:"table/all",
            type: "post",
            dataType:"json",
            async: false,
            success: function(data) {
                //alert(JSON.stringify(data));
                if(data!=null&data!=undefined&data!=""){
                    var tab="";
                    $.each(data, function(i, content){
                        if (i > data.length) return false;
                        tab+="<tr>";
                        tab+="<th th scope='row'>"+(i+1)+"</th>";
                        tab+="<td>"+content.empno+"</td>";
                        tab+="<td>"+content.ename+"</td>";
                        tab+="<td>"+content.job+"</td>";
                        tab+="<td>"+content.mgr+"</td>";
                        tab+="<td><fmt\\:formatDate value='" +content.hiredate+ "' pattern='yyyy-MM-dd' type='both'/></td>";
                        tab+="<td>"+content.sal+"</td>";
                        tab+="<td>"+content.comm+"</td>";
                        tab+="<td>"+content.deptno+"</td>";
                        tab+="</tr>";
                    });
                    $(".table tbody").html(tab);
                }
            },
            error:function (xhr,state,errorThrown){
                 if (xhr.status) {
                     alert("error,网络错误,发生网络错误，错误码为：" + xhr.status);
                 } else {
                     alert("error,网络错误,未知网络错误, 请确保设备处在联网状态");
                 }
            }
         });
      });

    </script>
  </head>
  <body>
    <div class="content-inner">
      <!-- Page Header-->
      <header class="page-header">
        <div class="container-fluid">
          <h2 class="no-margin-bottom">Tables</h2>
        </div>
      </header>
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
          <li class="breadcrumb-item active">Tables            </li>
        </ul>
      </div>
      <div class="tables">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">Basic Table</h3>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>员工编号</th>
                          <th>员工名称</th>
                          <th>职业</th>
                          <th>主管</th>
                          <th>入职日期</th>
                          <th>销售额</th>
                          <th>奖金</th>
                          <th>部门编号</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td>Mark</td>
                          <td>Otto</td>
                          <td>@mdo</td>
                          <td>Mark</td>
                          <td>Otto</td>
                          <td>@mdo</td>
                          <td>Mark</td>
                          <td>Otto</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>