<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>

SpecialtyEditor
</br></br>
<form action="/specialty/edit/${speciality.getId()}/addTeacherToDiscipline" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>


    <label>speciality Name : ${speciality.getName()}</label></br>


    <label>department : ${speciality.getDepartment().getName()}</label></br>

    <#if speciality.getDisciplineList()??>
        <#list speciality.getDisciplineList() as discipline>
            <label>
                <a href="/disciplineList/${discipline.getId()}"> ${discipline.getName()}</a>
            </label></br>
        </#list>
    </#if>
    </br>
    </br>
    </br>

    <label>
        <select name="disciplineName">
            <#list disciplineAbsentList as discipline>
                <option>${discipline.getName()}</option>
            </#list>
        </select>
    </label>
    <button type="submit">Добавить дисциплину в специальность</button>

    <#--    <form method="post" action="/specialty/addTeacherToDiscipline">-->


    <#--        <label>-->
    <#--            <select name="teacherName">-->
    <#--                <#list teachersForDiscipline as teacher>-->
    <#--                    <option>${teacher.getUsername()}</option>-->
    <#--                </#list>-->
    <#--            </select>-->
    <#--        </label>-->

    <#--    </form>-->
    <#--    <button type="submit">Save</button>-->

</form>


</body>
</html>