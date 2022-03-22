<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/17
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>登录</title>
        <%--
        <link rel="stylesheet" type="text/css"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js">
        --%>
        <link rel="stylesheet" type="text/css" href="../../static/css/bootstrap.min.css">
    </head>
    <style>
        a {
            color: blue;
            text-decoration: none;
        }

        a:hover {
            color: black;
            text-decoration: none;
        }

        body {
            background-image: url(../../static/images/qiao.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            text-align: center;
        }

        #sub {
            width: 200px;
            color: white;
            background-color: #4d4dc6;
        }

        .top {
            margin: auto;
            height: 150px;
            width: 150px;
            border-radius: 50%;
            background-image: url(../../static/images/img.png);
            background-repeat: no-repeat;
        }

        .in {
            width: 350px;
            margin: auto;
        }
    </style>
    <body class="text-center container">
        <br>
        <br><br>
        <br><br>
        <br>
        <div class="float-right justify-content-center">
            <div class="top">
            </div>
            <br>
            <form action="${pageContext.request.contextPath}/home/toLogin" method="post">
                <div class="in input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">用户名</span>
                    </div>
                    <input type="text" class="form-control" placeholder="username" aria-label="username"
                           aria-describedby="basic-addon1" name="username">
                </div>
                <div class="in input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon2">密码</span>
                    </div>
                    <input type="text" class="form-control" placeholder="password" aria-label="password"
                           aria-describedby="basic-addon1" name="password">
                </div>
                <div class="in input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon3">验证码</span>
                    </div>
                    <input type="text" class="form-control" placeholder="" aria-label="word"
                           aria-describedby="basic-addon1">
                </div>
                <input id="sub" type="submit" value="登录">
            </form>
        </div>
    </body>
</html>
