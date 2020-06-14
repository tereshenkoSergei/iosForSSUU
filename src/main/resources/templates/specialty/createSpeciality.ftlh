<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>

<form action="/specialty/create/execute" method="post">

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    <label>
        <input type="text" name="specialtyName">
    </label>

    <select name="department">
        <#list departments as d>
            <option>${d.getName()}</option>
        </#list>
    </select>

    <button type="submit">Создать специальность</button>

</form>


<#--Добавить экшона-->


</body>
</html>