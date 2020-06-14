<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>


<form action="/createUser/student/execute" method="post">

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

    <label>
        <select name="group">
            <#list departments as department>
                <optgroup label="${department.getName()}">
                    <#list department.getSpecialityList() as specialty>
                        <#list specialty.getGroupList() as group>
                            <option> ${group.getGroupName()}</option>
                        </#list>

                    </#list>
                </optgroup>

            </#list>
        </select>
    </label>

    <button type="submit">Добавить</button>
</form>

<#--Добавить экшона-->


</body>
</html>