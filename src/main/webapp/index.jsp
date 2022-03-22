<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/17
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
    <head>
        <title>首页</title>
        <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css">
    </head>

    <style>
        a {
            opacity: 100%;
            text-decoration: none;
            color: white;
            font-size: 18px;
        }

        a:hover {
            text-decoration: none;
            color: white;
        }
        body {
            background-image: url(static/images/index_2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            text-align: center;
        }
        div{
            margin: auto;
        }
        .login-center {

            height: 100vh;

        }
    </style>
    <body class="container">
        <div class="row align-content-center justify-content-center login-center">
            <a href="${pageContext.request.contextPath}/home/login"><h1>欢迎来到图书馆管理系统</h1></a>
        </div>
    </body>
</html>
