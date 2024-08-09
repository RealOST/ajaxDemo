<%--
  Created by IntelliJ IDEA.
  User: Zero
  Date: 2024/6/12
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>

    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">

        <input type="hidden" name="bookID" class="form-control" value="${book.bookID}">

        <div>
            <div class="form-group">
                <label>书籍名称：</label>
                <input type="text" name="bookName" class="form-control" required value="${book.bookName}">
            </div>
            <div class="form-group">
                <label>书籍数量：</label>
                <input type="text" name="bookCounts" class="form-control" required value="${book.bookCounts}">
            </div>
            <div class="form-group">
                <label>书籍描述：</label>
                <input type="text" name="detail" class="form-control" required value="${book.detail}">
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="修改">
            </div>
        </div>
    </form>
</div>
</body>
</html>
