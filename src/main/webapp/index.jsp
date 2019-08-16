
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>IDEA搭建SpringMVC并用maven配置的小例子</title>
    </head>
    <script type="text/javascript" src="static/js/jquery-1.7.2.min.js"></script>

    <body>
        <form id="userForm" method="post">
            用户名：<input type="text" name="logname"><br>
            密码：<input type="password" name="logword">
            <button type="button" onclick="login()">登录</button>
        </form>
    </body>
    <script>
        function login() {
            $.ajax({
                type: 'post',
                url: '/login/find',
                data: $('#userForm').serialize(),
                dataType: 'text',
                success: function(data){
                    if (data == "success"){
                        location.href='/login/success';
                    }else{
                        alert("用户名或者密码错误！");
                    }
                }
            });
        }
    </script>
</html>
