<%--
  Created by IntelliJ IDEA.
  User: Zero
  Date: 2024/7/15
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/axios-0.18.0.js"></script>
</head>
<body>

<script>
    axios({
        method:"get",
        url:"http://localhost:80/axios?username=zs"
    }).then(resp => console.log(resp.data))

    // axios({
    //     method:"post",
    //     url:"http://localhost:80/axios",
    //     data:"username=zs"
    // }).then(resp => alert(resp.data))
</script>
</body>
</html>
