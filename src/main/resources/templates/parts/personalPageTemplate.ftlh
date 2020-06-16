<#macro personalPageTemplate>

    <!DOCTYPE html>
    <html >
    <head>
        <title>Menu with jQuery</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">

    </head>
    <body>


    <div class="content">

        <script src="exernalLib.js"></script>
        <script  type='text/javascript' src="jquery.easing.1.3.js"></script>

        <div class="tittle">
            <h1 class="title">Личный кабинет</h1>

        </div>

        <form action="/logout" method="post" enctype="multipart/form-data">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="submit" value="Выйти из учетной записи"/>



        </form>

<#nested >


    </div>
    <!-- The JavaScript -->


    </body>
</html>

</#macro>