<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.step.hryshkin.DealSimple"%>

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
        <h3 align="center">Здравствуйте, <%= request.getSession().getAttribute("username")%></h3>

<form action="/basket_page_simple.jsp" method="get">
        <p align="center">
            <label>
            <select name="select" multiple size="3">
                <c:forEach items="${DealSimple.GOODS}" var="item" >
                    <option value="${DealSimple.GOODS.indexOf(item)}"> ${item}</option>
                </c:forEach>
            </select>
             <input type="submit" value="Сделать заказ!">
            </label>
        </p>
    </form>
    </div>
</div>

</body>
</html>