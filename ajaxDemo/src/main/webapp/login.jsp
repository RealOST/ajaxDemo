<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>登录系统</title>
    <link href="css/login.css" rel="stylesheet">
    <style>
        #remember {
            vertical-align: middle;
            margin-left: -43px;
        }
    </style>
</head>

<body>
    <div id="loginDiv">
        <form action="/login" id="form" method="post">
            <h1 id="loginMsg">广外登录系统</h1>
            <div id="errorMsg">${login_msg} ${register_msg}</div>
            <p>用户名:<input id="username" name="username" type="text" value="${cookie.username.value}"></p>
            <p>密　码:<input id="password" name="password" type="password" value="${cookie.password.value}"></p>
            <p>记　住:<input id="remember" name="remember" type="checkbox" value="1"></p>
            <div id="subDiv">
                <input type="submit" class="button" value="登陆">
                <input type="reset" class="button" value="重置">&nbsp;&nbsp;&nbsp;
                <a href="reg.jsp">没有账号？点击注册</a>
            </div>
        </form>
    </div>

</body>

</html>