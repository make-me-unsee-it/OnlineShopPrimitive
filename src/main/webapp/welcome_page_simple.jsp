<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="com.step.hryshkin.DealSimple"%>
<%@ page import="com.step.hryshkin.MainFilterSimple"%>

<head>
    <meta charset="UTF-8">
    <title>СОЗДАНО В УЧЕБНЫХ ЦЕЛЯХ</title>

    <style type="text/css">
    body {
    background: gray;
    margin: 0;
   }
   .parent {
    position: relative;
    width: 800px;
    margin-left: auto; margin-right: auto;
    background: #fd0;
    padding: 10px;
   }
   .child {
    border: 3px solid #666;
    padding: 10px;
    margin: 10px;
   }
   div.close-button {
   position: absolute;
   top: -10px;
   right: 15px;
   }
   </style>
</head>

    <% DealSimple.clearBasket(); %>
    <% MainFilterSimple.stopFilter(request); %>

<body>
<div class="parent">
        <div class="close-button">
        <form action="/index.jsp" method="post">
            <p align="center"><input type="submit" value="&#215;"></p>
        </form>
        </div>
    <div class="child">

        <h3 align="center">Добро пожаловать в онлайн-магазин!</h3>

        <form action="/shop_page_simple.jsp" method="post">
            <p align="center">
                <label for="username">Введите, пожалуйста, Ваше имя:
                <input type="text" id="username" required name="username"></label>
            </p>
            <p align="center"><input type="submit" value="перейти в магазин"></p>
        </form>

    </div>
</div>

</body>
</html>