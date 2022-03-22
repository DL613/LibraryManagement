<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/17
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>添加书籍</title>
        <link rel="stylesheet" type="text/css" href="../../static/css/bootstrap.min.css">
    </head>
    <style>
        .in {
            width: 550px;
            margin: auto;
        }
        a{
            text-decoration: none;
            color: white;
        }
        a:hover{
            text-decoration: none;
            color: white;
        }
    </style>
    <body class="container">
        <div class="card-header text-center">
            <h3>添加书籍</h3>
        </div>
        <br>
        <br>
        <div class="card-body">
            <div>
                <div class="in text-center  justify-content-center">
                    <br>
                    <form action="${pageContext.request.contextPath}/admin/adminAdd" method="post">
                        <div>
                            <label>
                                <input type="hidden" name="id">
                            </label>
                        </div>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="addon-wrapping1">书名</span>
                            </div>
                            <input type="text" name="name" class="form-control" placeholder="" aria-label="name"
                                   aria-describedby="addon-wrapping" required>
                        </div><br>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="addon-wrapping2">作者</span>
                            </div>
                            <input type="text" name="author" class="form-control" placeholder="" aria-label="author"
                                   aria-describedby="addon-wrapping" required>
                        </div><br>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="addon-wrapping3">类型</span>
                            </div>
                            <input type="text" name="type" class="form-control" placeholder="" aria-label="Username"
                                   aria-describedby="addon-wrapping" value="无" required>
                        </div><br>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="addon-wrapping4">价格</span>
                            </div>
                            <input type="text" name="price" class="form-control" placeholder="" aria-label="price"
                                   aria-describedby="addon-wrapping" value="0" required>
                        </div><br>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="addon-wrapping5">数量</span>
                            </div>
                            <input type="text" name="total" class="form-control" placeholder="" aria-label="total"
                                   aria-describedby="addon-wrapping" value="1" required>
                        </div><br>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">剧情概括</span>
                            </div>
                            <textarea name="detial" class="form-control" aria-label=""></textarea>
                        </div><br>
                        <div>
                            <button class="in btn-success" type="submit">保存</button>
                        </div>
                    </form>


                </div>
            </div>

            <button id="returnAll" class="btn btn-success">
                <a href="${pageContext.request.contextPath}/admin/returnAll">返回上一页</a>
            </button>
        </div>
        <br>
        <br>
        <div class="card-footer">
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                crossorigin="anonymous"></script>
    </body>
</html>
