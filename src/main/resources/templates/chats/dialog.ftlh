<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>

<#if dialog??>
    <#list dialog.getMessageList() as l>
        <label>${l.getText()}     </label>
        <label>${l.getAuthor().getUsername()}</label> </br>

    </#list>
</#if>

<form method="post" action="/chat/sendMessage">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <input type="hidden" name="dialogId" value="${dialogId}"/>
    <label>
        <input name="messageText" type="text" height="50" width="150">
    </label>

    <button type="submit">Отправить сообщение</button>

</form>
</body>
</html>