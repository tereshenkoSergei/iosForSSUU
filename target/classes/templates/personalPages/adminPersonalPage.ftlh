<#import "../parts/personalPageTemplate1.ftlh" as p >

<@p.personalPageTemplate1 name="${user.getUsername()}" email="${user.getEmail()}" role="${user.getClassNameAsString()}">


<#--    Nested start-->
    <li class="nav-item">
        <a class="nav-link active" href="/disciplineList"><i class="fa fa-th-list"></i>Список всех <strong>дисциплин</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/chat"><i class="fa fa-comments"></i><strong>Чат</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/specialty" target="_blank"><i class="fa fa-list"></i>Список всех <strong>специальностей</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/user"><i class="fa fa-users"></i>Управление данными <strong>пользователя</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/createUser/student"><i class="fa fa-graduation-cap"></i>Добавить <strong>Студента</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/createUser/teacher"><i class="fa fa-id-card"></i>Добавить <strong>Преподавателя</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/createUser/admin"><i class="fa fa-address-card-o"></i>Добавить <strong>Администратора</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/createUser/dm"><i class="fa fa-address-book"></i>Добавить <strong>ОЗК</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/group/create"><i class="fa fa-university"></i>Добавить <strong>Группу</strong></a>
    </li>
<#--    Nested end-->
</@p.personalPageTemplate1>



