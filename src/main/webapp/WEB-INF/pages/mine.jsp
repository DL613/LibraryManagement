<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/17
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>个人中心</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <style>
        button > a {
            color: white;
            text-decoration: none;
        }

        a:hover {
            color: black;
            text-decoration: none;
        }

        table > thead {
            background-color: yellow;
        }

        #thisPage {
            color: white;
            background-color: blue;
        }

        #sear {
            color: white;
            background-color: #2626a7;
        }
        #returnAll{
            float: left;
        }

        #right{
            float: right;
        }
    </style>
    <body class="container text-center">

        <h3>我的书架</h3>

        <div class="row">
            <div class="col-lg-9 col-md col-sm">
                <button id="returnAll" class="btn btn-primary">
                    <a href="${pageContext.request.contextPath}/customer/returnCustomer">返回上一页</a>
                </button>
            </div>
            <div id="right">
                <form action="${pageContext.request.contextPath}/customer/findCustomer" method="post">
                    <label>
                        <input name="name" required>
                    </label>
                    <input id="sear" class="clear" type="submit" value="查找">
                </form>
            </div>
        </div>
        <%--个人书架数据展示区--%>
        <div id="customer_data" class="text-center form-group-lg">
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
                            <a href="${pageContext.request.contextPath}/customer/returnBook?id=${book.id}">还书</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="text-center">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item"><a id="thisPage" class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">下一个</a></li>
                </ul>
            </nav>
        </div>
    </body>
</html>
