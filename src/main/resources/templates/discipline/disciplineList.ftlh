<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>






    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

<#--    <label>-->
<#--        <select name="userName">-->
<#--            <#list disciplines as discipline>-->
<#--                <option>-->
<#--                    ${discipline.getName()}-->
<#--                </option>-->
<#--            </#list>-->
<#--        </select>-->
<#--    </label>-->

    <#list disciplines as discipline>
        <label>
           <a href="/disciplineList/${discipline.getId()}"> ${discipline.getName()}</a>
        </label></br>
    </#list>

    </br></br>

    <#if isAdmin??>
        <a href="/disciplineList/create">Перейти к добавлению дисциплины</a>
    </#if>




</body>
</html>