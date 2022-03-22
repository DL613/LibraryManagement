<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/17
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>编辑书籍</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <style>
        input {
            width: 500px;
            height: 30px;
        }

        textarea {
            width: 500px;
            height: 50px;
        }

        #save {
            width: 550px;
            color: white;
            background-color: #4d4dc6;
        }

        button > a {
            color: white;
            text-decoration: none;
        }

        a:hover {
            color: black;
            text-decoration: none;
        }

        #returnAll {
            float: left;
        }
    </style>
    <body class="container">
        <h3 class="text-center">编辑书籍界面</h3>
        <div class="text-center">
            <form class="input-group-prepend bor" action="${pageContext.request.contextPath}/admin/saveEdit"
                  method="post">
                <div>
                    <label>
                        <input type="hidden" name="id" value="${book.id}">
                    </label>
                    <label>书名:
                        <input type="text" name="name" value="${book.name}" required>
                    </label><br>
                    <label>作者:
                        <input type="text" name="author" value="${book.author}" placeholder="无" required>
                    </label><br>
                    <label>类型:
                        <input type="text" name="type" value="${book.type}" required>
                    </label><br>
                    <label>价格:
                        <input type="text" name="price" value="${book.price}" required>
                    </label><br>
                    <label>数量:
                        <input type="text" name="total" value="${book.total}" required>
                    </label><br>
                    <label>概括:
                        <textarea name="detial">${book.detial}</textarea>
                    </label>
                    <br>
                    <input id="save" type="submit" value="保存">
                </div>
            </form>
        </div>
        <button id="returnAll" class="btn btn-primary">
            <a href="${pageContext.request.contextPath}/admin/returnAll">返回上一页</a>
        </button>
    </body>
</html>
