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
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/static/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Charts</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
              <li class="breadcrumb-item active">Charts            </li>
            </ul>
          </div>
          <!-- Charts Section-->
          <section class="charts">
            <div class="container-fluid">
              <div class="row">
                <!-- Line Charts-->
                <div class="col-lg-8">
                  <div class="line-chart-example card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Line Chart Example</h3>
                    </div>
                    <div class="card-body">
                      <canvas id="lineChartExample"></canvas>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="line-chart-example card no-margin-bottom">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard2" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Line Chart Example</h3>
                    </div>
                    <div class="card-body">
                      <canvas id="lineChartExample1"></canvas>
                    </div>
                  </div>
                  <div class="line-chart-example card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-body">
                      <canvas id="lineChartExample2"></canvas>
                    </div>
                  </div>
                </div>
                <!-- Bar Charts-->
                <div class="col-lg-4">
                  <div class="bar-chart-example card no-margin-bottom">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard4" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Bar Chart Example</h3>
                    </div>
                    <div class="card-body">
                      <canvas id="barChart1"></canvas>
                    </div>
                  </div>
                  <div class="line-chart-example card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard5" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-body">
                      <canvas id="barChart2"></canvas>
                    </div>
                  </div>
                </div>
                <div class="col-lg-8">
                  <div class="bar-chart-example card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard6" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard6" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Bar Chart Example</h3>
                    </div>
                    <div class="card-body">
                      <canvas id="barChartExample"></canvas>
                    </div>
                  </div>
                </div>
                <!-- Doughnut Chart -->
                <div class="col-lg-6">
                  <div class="pie-chart-example card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard7" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard7" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Doughnut  Chart Example</h3>
                    </div>
                    <div class="card-body">
                      <canvas id="doughnutChartExample"></canvas>
                    </div>
                  </div>
                </div>
                <!-- Pie Chart -->
                <div class="col-lg-6">
                  <div class="pie-chart-example card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard8" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard8" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Pie  Chart Example</h3>
                    </div>
                    <div class="card-body">
                      <canvas id="pieChartExample"></canvas>
                    </div>
                  </div>
                </div>
                <!-- Polar Chart-->
                <div class="col-lg-6">
                  <div class="polar-chart-example card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard9" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard9" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Polar Chart Example</h3>
                    </div>
                    <div class="card-body">
                      <canvas id="polarChartExample"></canvas>
                    </div>
                  </div>
                </div>
                <!-- Radar Chart-->
                <div class="col-lg-6">
                  <div class="radar-chart-example card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard10" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard10" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Radar Chart Example</h3>
                    </div>
                    <div class="card-body">
                      <canvas id="radarChartExample"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- Page Footer-->
          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p>Your company &copy; 2017-2019</p>
                </div>
                <div class="col-sm-6 text-right">
                  <p>Design by Bootstrapious.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
                  <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                </div>
              </div>
            </div>
          </footer>
        </div>
    <!-- JavaScript files-->
    <script src="${pageContext.request.contextPath }/static/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="${pageContext.request.contextPath }/static/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${pageContext.request.contextPath }/static/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/js/charts-custom.js"></script>
    <!-- Main File-->
    <script src="${pageContext.request.contextPath }/static/js/front.js"></script>
  </body>
</html>