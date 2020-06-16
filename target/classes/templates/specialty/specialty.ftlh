<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>

<label>
    <#list departments as department>
        <h3>${department.getName()}</h3>
        <#list department.getSpecialityList() as speciality>
            <a href="/specialty/edit/${speciality.getId()}">${speciality.getName()}</a></br>

        </#list>
    </#list>

</label>
<#--Добавить экшона-->


</body>
</html>