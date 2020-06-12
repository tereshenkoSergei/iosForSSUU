<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>

<form action="/disciplineList/create" method="get">

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    <label>
        <input type="text" name="specialtyName">
    </label>


    <button type="submit">Создать кафедру</button>
</form>


<#--Добавить экшона-->


</body>
</html>