<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>

UserEditor

    <form action="/user" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />


        <input type="hidden" value="${user.id}" name="userId">

        <input type="text" name="username" value="${user.username}">
        <label>
            ${user.getRolesStringa()}
        </label>


        <button type="submit">Save</button>

    </form>


</body>
</html>