<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.step.hryshkin.Deal"%>

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
   .box {
       border: 3px solid #666;
       padding: 10px;
       margin: 10px;
   }

    </style>
</head>

<body>
<div class="parent">
    <div class="child">
        <h3 align="center">Вот Ваш заказ, <%= request.getSession().getAttribute("username")%>!</h3>

<div align="center">
         <ol style="display: table; margin:0 auto;">
            <c:forEach items="${Deal.chosenGoods}" var="item" >
                <li>${item}</li>
            </c:forEach>
         </ol>
    <h4>Сумма: ${Deal.currentUserSummary.toString()}$</h4>
</div>

        <form action="/welcome_page.jsp" method="post">
            <p align="center"><input type="submit" value="на главную"></p>
        </form>

    </div>
</div>

</body>
</html>