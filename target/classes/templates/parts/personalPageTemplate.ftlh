<#macro personalPageTemplate>

    <!DOCTYPE html>
    <html >
    <head>
        <title>Menu with jQuery</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">

        <script src="exernalLib.js"></script>
        <script  type='text/javascript' src="jquery.easing.1.3.js"></script>




    </head>
    <body>


    <div class="content">
        <div class="tittle">
            <h1 class="title">Пусть тут будет личный кабинет</h1>
            <h2 class="title">Modern characters of PC</h2>
        </div>

        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="submit" value="Sign Out"/>
        </form>

<#nested >


    </div>
    <!-- The JavaScript -->


    </body>
</html>

</#macro>