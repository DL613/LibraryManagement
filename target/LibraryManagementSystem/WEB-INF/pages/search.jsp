<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/18
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>查找书籍</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <style>
        table > thead {
            background-color: yellow;
        }
        #returnAll{
            float: left;
        }
    </style>
    <body class="container text-center">
        <h3>书籍详情</h3>
        <div id="admin_data" class="text-center form-group-lg">
            <table class="table table-striped border-danger">
                <thead>
                    <tr>
                        <td>id</td>
                        <td>书名</td>
                        <td>作者</td>
                        <td>类型</td>
                        <td>简介</td>
                        <td>价格</td>
                        <td>数量</td>
                        <td>操作</td>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.name}</td>
                        <td>${book.author}</td>
                        <td>${book.type}</td>
                        <td>${book.detial}</td>
                        <td>${book.price}</td>
                        <td>${book.total}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/customer/borrowBook?id=${book.id}">借书</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <button id="returnAll" class="btn btn-primary">
            <a href="${pageContext.request.contextPath}/customer/returnLibrary">返回上一页</a>
        </button>
    </body>
</html>
