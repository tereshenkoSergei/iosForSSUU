<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    <link href="images/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
	<link href="images/favicon-32x32.png" rel="icon" sizes="32x32" type="image/png">
	<link href="images/favicon-16x16.png" rel="icon" sizes="16x16" type="image/png">
	<link href="images/safari-pinned-tab.svg" rel="mask-icon">
	<meta content="#da532c" name="msapplication-TileColor">
	<meta content="#ffffff" name="theme-color">
    <!-- Title Page-->
    <title>Новый Студент | ИОС СГТУ</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-01 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Отличные новости!<br>У нас новый <strong>Студент</strong>! <hr style="width: 50px; margin: 10px auto;"></h2>
                    <h4 class="title" style="margin-top: -30px;">Добавить о нем информацию можно в следующей форме:</h4>
                    <form method="POST" action="/createUser/dm/execute" >
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

                        <div class="row row-space">


                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Имя</label>
                                    <input class="input--style-4" type="text" name="name">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Пароль</label>
                                    <input class="input--style-4" type="text" name="pswrd">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">Группа</label>
                            <div class="rs-select2 js-select-simple select--no-search">
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
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" style="width: 100% !important;" type="submit">Добавить</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->