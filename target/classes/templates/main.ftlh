<html>

<body>

<div>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <input type="submit" value="Sign Out"/>
</form></div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение" />
        <input type="text" name="tag" placeholder="Тэг">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
<!--        -->
<!--        <input type="hidden" name="_csrf" value="{ {_csrf.token}}">-->
<!--        -->
        <button type="submit">Добавить</button>

    </form>
</div>
<div>Список сообщений</div>
<form method="post" action="filter">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
<!--    <input type="hidden" name="_csrf" value="{ {_csrf.token}}">-->
    <label>
        <input type="text" name="filter">
    </label>
    <button type="submit">Найти</button>
</form>

<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
<#else>
    No message
</#list>

</body>
</html>