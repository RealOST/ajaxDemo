<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/book/toAddBook"><input type="button" value="新增"></a><br>
<hr>
<table id="brandTable" border="1" cellspacing="0" width="100%">
</table>
<script src="js/axios-0.18.0.js"></script>
<script>
    //1. 当页面加载完成后，发送ajax请求
    window.onload = function () {
        //2. 发送ajax请求
        axios({
            method:"get",
            url:"http://localhost:8081/book/allBook"
        }).then(resp => {
            //获取数据
            let books = resp.data;
            let tableData = " <tr>\n" +
                "        <th>编号</th>\n" +
                "        <th>书籍名称</th>\n" +
                "        <th>数量</th>\n" +
                "        <th>详情</th>\n" +
                "        <th>操作</th>\n" +
                "    </tr>";
            for (let book in books) {
                tableData +=
                    '<tr align="center">' +
                    '<td>' + book.bookID + '</td>' +
                    '<td>' + book.bookName + '</td>' +
                    '<td>' + book.bookCounts + '</td>' +
                    '<td>' + book.detail + '</td>' +
                    '</tr>';
            }
            // 设置表格数据
            document.getElementById("brandTable").innerHTML = tableData;
        }).catch(function (error) {
            console.error("请求失败：", error);
        });
    }
</script>
</body>
</html>
