<#import "../parts/compact-table.ftlh" as p>

<@p.listOfAny>

    <thead>
    <th data-field="Имя">Название дисциплины</th>
   </thead>


    <tbody>

    <#list disciplines as discipline>
    <tr>
        <td> <a href="/disciplineList/${discipline.getId()}"> ${discipline.getName()}</a> </td>



    </tr>
    </#list>



</@p.listOfAny>