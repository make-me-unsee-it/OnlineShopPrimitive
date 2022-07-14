<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="com.step.hryshkin.MainFilter"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>СОЗДАНО В УЧЕБНЫХ ЦЕЛЯХ</title>
    <style type="text/css">
   body {
    background: gray;
    margin: 0;
   }
   .parent {
    width: 800px;
    margin: auto;
    background: #fd0;
    padding: 10px;
   }
   .child {
    border: 3px solid #666;
    padding: 10px;
    margin: 10px;
   }

    </style>
</head>
    <% MainFilter.stopFilter(request); %>

<body>
<div class="parent">
    <div class="child">
        <h4 align="center">Ошибка! Вам придется согласиться с условиями пользовательского соглашения!</h3>
    <form action="/welcome_page.jsp" method="post">
        <p align="center"><input type="submit" value="вернуться на главную"></p>
    </form>

    </div>
</div>

</body>
</html>