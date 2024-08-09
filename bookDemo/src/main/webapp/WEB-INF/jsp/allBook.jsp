<%--
  Created by IntelliJ IDEA.
  User: Zero
  Date: 2024/6/12
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <!-- 引入Bootstrap CSS文件 -->
    <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>书籍列表 —— 显示所有书籍</small>
                    </h1>
                </div>
            </div>

            <div>
                <div>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>书籍名称</th>
                    <th>数量</th>
                    <th>详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <taody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a class="btn btn-danger"
                                   href="${pageContext.request.contextPath}/book/toUpdateBook/${book.bookID}">修改</a>

                                <a class="btn btn-success"
                                   href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>

                </taody>
            </table>
        </div>
    </div>

</div>

</body>
</html>
