<#import "parts/compact-table.ftlh" as p>

<@p.listOfAny>

    <thead>
    <th data-field="Имя">Имя</th>
    <th data-field="Почта" data-sortable="true">Почта</th>
    <th data-field="Роль" data-sortable="true">Роль</th>
    <th data-field="Страна" data-sortable="true">Страна</th>
    <th data-field="Город">Город</th>
    <th data-field="Редактировать">Редактировать</th>
    </thead>


    <tbody>



    <#list users as user>
        <tr>
            <td>${user.getUsername()} </td>
            <td>${user.getEmail()}</td>
            <td>${user.getClassNameAsString()}</td>
            <td>Russia</td>
            <td>Saratov</td>
            <td><a href="/user/${user.id}">Edit</a></td>
        </tr>
    </#list>
</@p.listOfAny>