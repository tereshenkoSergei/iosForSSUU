<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>


<form action="/createUser/admin/execute" method="post">

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>


    <label>
        <input type="text" name="name"> Имя
    </label>
    </br>
    <label>
        <input type="email" name="email"> Email
    </label>
    </br>
    <label>
        <input type="text" name="pswrd"> Пароль
    </label>
    </br>



    <button type="submit">Добавить</button>
</form>

<#--Добавить экшона-->


</body>
</html>