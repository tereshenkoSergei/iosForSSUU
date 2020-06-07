<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>


<form action="/chat/createdialog" method="get">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>



    <button type="submit">Создать диалог</button>

</form>


<form action="/chat/adduser" method="get">

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    <label>
        <select name="userName">
            <#list users as user>
                <option>
                    ${user.getUsername()}
                </option>
            </#list>
        </select>
    </label>


    <label>
        <#list userset as usr>
            <label>
                ${usr.toString()}
            </label></br>
        </#list>

    </label>

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit">Добавить пользователя в чат</button>
</form>

</body>
</html>