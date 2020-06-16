<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>

Discipline editor

<form action="/disciplineList/${discipline.getId()}/addTeacher" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    <label>Discipline name : ${discipline.getName()}</label></br>
    <label>Hours : ${discipline.getHours()}</label></br>
    <label>Num of term : ${discipline.getNumOfTerm()}</label></br>
    </br>

    <#list discipline.getTeacherList() as teacher>
        <label>${teacher.getUsername()}</label></br>
    </#list>
    </br>

    <#if discipline.getDocuments()??>
<a></a>

    </#if>


    <#if absentTeachers??>
        <label>
            <select name="teacherForAdd">
                <#list absentTeachers as teacher>
                    <option>${teacher.getUsername()}</option>
                </#list>
            </select>
        </label>

        <button type="submit">Save</button>
    </#if>
</form>


</body>
</html>