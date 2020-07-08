<#import "../parts/compact-table.ftlh" as p>

<@p.listOfAny>

    <thead>
    <th data-field="Имя">Чат</th>
    <th data-field="ID чата">ID чата</th>
    <th data-field="Пользователи">Пользователи</th>

    </thead>


    <tbody>

    <#if dialogs??>
        <#list dialogs as d>
            <tr>
                <td><a href="/chat/${d.id}">К переписке</a></td>
                <td>${d.id}</td>
                <td>${d.getStringUserList()}</td>
            </tr>
        </#list>

    </#if>







</@p.listOfAny>