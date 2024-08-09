<%--
  Created by IntelliJ IDEA.
  User: Zero
  Date: 2024/7/15
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1></h1>
<script>
    // 1. 创建 XHR 对象
    var xhr = new XMLHttpRequest()
    // 2. 调用 open 函数
    xhr.open('GET', 'http://localhost.top:80/ajax')
    // 3. 调用 send 函数
    xhr.send()
    // 4. 监听 onreadystatechange 事件
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // 获取服务器响应的数据
            console.log(xhr.responseText)
            document.querySelector("h1").innerHTML(xhr.responseText)
        }
    }
</script>
</body>
</html>
