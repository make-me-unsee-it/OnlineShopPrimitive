<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>

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

<body>
<div class="parent">
    <div class="child">
        <h3 align="center">Ошибка! Страницы не существует</h3>

    <p align="center"><img src="https://www.meme-arsenal.com/memes/9f3033d3e68057f6ea210494c06bfab8.jpg"></p>
    <form action="/welcome_page.jsp" method="post">
        <p align="center"><input type="submit" value="вернуться на главную"></p>
    </form>

    </div>
</div>

</body>
</html>