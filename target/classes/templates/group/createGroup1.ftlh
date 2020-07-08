<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    <link href="images/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
    <link href="images/favicon-32x32.png" rel="icon" sizes="32x32" type="image/png">
    <link href="images/favicon-16x16.png" rel="icon" sizes="16x16" type="image/png">
    <link href="/site.webmanifest" rel="manifest">
    <link href="images/safari-pinned-tab.svg" rel="mask-icon">
    <meta content="#da532c" name="msapplication-TileColor">
    <meta content="#ffffff" name="theme-color">
    <title>Новая Группа | ИОС СГТУ</title>

    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
<div class="page-wrapper bg-gra-01 p-t-130 p-b-100 font-poppins">
    <div class="wrapper wrapper--w780">
        <div class="card card-4">
            <div class="card-body">
                <h2 class="title">Новая <strong>Группа</strong>?<br>Звучит круто!
                    <hr style="width: 50px; margin: 10px auto;">
                </h2>
                <h4 class="title" style="margin-top: -30px;">Для ее создания нужно ввести информацию в форму ниже:</h4>
                <form method="POST" action="/group/create/execute">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">Префикс</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="prefix">
                                        <option>B-</option>
                                        <option>B1-</option>
                                        <option>B2-</option>
                                        <option>B3-</option>
                                        <option>M-</option>
                                        <option>M1-</option>
                                        <option>M2-</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">Направление</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="speciality">
                                        <#list departments as department>
                                            <optgroup label="${department.getName()}">
                                                <#list department.getSpecialityList() as specialty>
                                                    <option>${specialty.getName()}</option>

                                                </#list>
                                            </optgroup>

                                        </#list>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">Номер курса</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="course">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>


                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">Номер направления</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="directionNumber">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="p-t-15">
                        <button class="btn btn--radius-2 btn--blue" style="width: 100% !important;" type="submit">
                            Добавить
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="vendor/jquery/jquery.min.js"></script>

<script src="vendor/select2/select2.min.js"></script>
<script src="vendor/datepicker/moment.min.js"></script>
<script src="vendor/datepicker/daterangepicker.js"></script>

<script src="js/global.js"></script>

</body>

</html>