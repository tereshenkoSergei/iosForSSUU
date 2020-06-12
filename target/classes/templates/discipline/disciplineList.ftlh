<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>


<form action="/disciplineList/create" method="get">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>



    <button type="submit">Создать дисциплину</button>

</form>



    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    <label>
        <select name="userName">
            <#list user.getDisciplineList() as discipline>
                <option>
                    ${discipline.toString()}
                </option>
            </#list>
        </select>
    </label>




    <a href="/disciplineList/create">Перейти к добавлению дисциплины</a>


</body>
</html>