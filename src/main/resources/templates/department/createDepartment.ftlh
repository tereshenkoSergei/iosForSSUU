<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>

<form action="/department/create/execute" method="post">

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    <label>
        <input type="text" name="departmentName">
    </label>


    <button type="submit">создать кафедру</button>
</form>


<#--Добавить экшона-->


</body>
</html>