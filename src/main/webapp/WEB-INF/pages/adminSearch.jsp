<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/17
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>书籍详情(管理员)</title>
        <link rel="stylesheet" type="text/css" href="../../static/css/bootstrap.min.css">
    </head>
    <style>
        a {
            color: white;
            text-decoration: none;

        }

        a:hover {
            color: white;
            text-decoration: none;
        }
    </style>
    <body class="text-center">
        <div class="card-header">
            <h3>查询书籍页面</h3>
        </div>
        <%--图书馆数据展示区--%>
        <div class="card-body">
            <div id="admin_data" class="text-center form-group-lg">
                <table class="table table-striped table-hover">
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
                                <a class="text-success" href="${pageContext.request.contextPath}/admin/toEditPage?id=${book.id}">编辑</a>
                                <br>
                                <a class="text-success" href="${pageContext.request.contextPath}/admin/adminDelete?id=${book.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <button class="btn btn-success">
                <a href="${pageContext.request.contextPath}/admin/returnAll">返回上一页</a>
            </button>
        </div>

        <div class="card-footer">
        </div>
    </body>
</html>
