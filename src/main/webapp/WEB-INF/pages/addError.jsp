<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/19
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <style>
        a{
            color: white;
            text-decoration: none;
        }
        a:hover{
            text-decoration: none;
        }
        button{
            background-color: #4d4dc6;
        }
    </style>
    <body>
        <h3>添加出错</h3>
        <button>
            <a href="${pageContext.request.contextPath}/admin/toAddPage">返回添加书籍页面</a>
        </button>
    </body>
</html>
