<%--
  Created by IntelliJ IDEA.
  User: Zero
  Date: 2024/7/15
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    var jsObject = {name:"张三"};
    axios({
        method:"post",
        url:"http://localhost:8080/ajax-demo/axiosServlet",
        data: JSON.stringify(jsObject)
    }).then(function (resp) {
        alert(resp.data);
    })
</script>

</body>
</html>
