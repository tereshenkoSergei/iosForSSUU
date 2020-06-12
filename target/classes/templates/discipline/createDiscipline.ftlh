<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>


<form action="/disciplineList/create/execute" method="post">

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>


    <label>
        <input type="text" name="disciplineName"> Название дисциплины
    </label>
    </br>
    <label>
        <input type="number" name="hours"> Кол-во часов
    </label>
    </br>

    <label>
        <select name="numOfTerm">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
        </select>
    </label>

    <button type="submit">Создать дисциплину</button>
</form>

<#--Добавить экшона-->


</body>
</html>