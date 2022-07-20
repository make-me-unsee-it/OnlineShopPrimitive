<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="com.step.hryshkin.Deal"%>
<%@ page import="com.step.hryshkin.MainFilter"%>

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
    div.joke {
    font-size: 7px;
    color: grey;
   }
   td.top {
   width: 350px;
   border: 1px solid #666;
   font-size: 14px;
   }
   td.bottom {
   width: 350px;
   }


    </style>
</head>

    <% Deal.clearBasket(); %>
    <% MainFilter.stopFilter(request); %>

<body>
<div class="parent">
    <div class="child">
        <h3 align="center">Выберите задание:</h3>
    <table align="center">
        <tr>
            <td class="top">
                <div align="center">
                    <p>EPAM_JAVA_TRAINING_SERVLET_HOMEWORK</p>
                    <p></p>
                    <p>Реализовать веб приложение “Магазин” в виде Maven проекта.</p>
                    <p>1. Первый экран должен содержать поле для ввода имени и кнопку “Enter”,
                    позволяющую перейти на второй экран.</p>
                    <p>2. Второй экран должен содержать приветствие, меню магазина в виде списка (select),
                    а также кнопку “Submit”. Пользователь может выбрать несколько товаров одновременно и нажать
                    кнопку “Submit”. В этом случае он будет направлен на третий экран.</p>
                    <p>3. Третий экран должен содержать распечатку чека в табличном виде, то есть список выбранных
                    товаров с ценами, а также суммарная величина заказа в долларах.</p>
                </div>
            </td>
            <td class="top">
                <div align="center">

                    <p>EPAM_JAVA_TRAINING_SESSION_FILTERS_HOMEWORK</p>
                    <p></p>
                    <p>1. На начальную страницу добавить чекбокс “I agree with the terms of service”, который
                    пользователь должен отметить для входа в приложение. Если чекбокс не отмечен, пользователь
                    должен быть перенаправлен на страницу ошибки.</p>
                    <p>2. Процесс формирования заказа разбивается на несколько этапов. Пользователь может добавить
                    к заказу только один товар за раз. Пользователь должен видеть список уже заказанных товаров.
                    Пользователь может добавить к заказу один и тот же товар несколько раз.</p>
                    <p>3. Случайный пользователь (который не выставил чекбокс на начальной странице) не должен
                    иметь доступ к приложению. Он должен быть перенаправлен на страницу ошибки.</p>
                </div>
            </td>
        </tr>
        <tr>
            <td class="bottom">
                <form action="/welcome_page_simple.jsp" method="post">
                    <p align="center"><input type="submit" value="перейти к заданию 1"></p>
                </form>
            </td>
            <td class="bottom">
                <form action="/welcome_page.jsp" method="post">
                    <p align="center"><input type="submit" value="перейти к заданию 2"></p>
                </form>
            </td>
        </tr>
    </table>

    </div>
</div>

</body>
</html>