<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>

<form action="/group/create/execute" method="post">

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    B-
    <label>
        <select name="speciality">
            <#list departments as department>
                <optgroup label="${department.getName()}">
                    <#list department.getSpecialityList() as specialty>
                        <option>${specialty.getName()}</option>

                    </#list>
                </optgroup>

            </#list>
        </select>
    </label>


    -

    <label>
        <select name="course">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>


    <label>
        <select name="directionNumber">
            <option>1</option>
            <option>2</option>
            <option>3</option>
        </select>
    </label>
    </br>
    <button type="submit">Создать группу</button>
</form>


<#--Добавить экшона-->


</body>
</html>