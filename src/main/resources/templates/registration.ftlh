<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Nice dark sign in form</title>



    <link rel="stylesheet" href="regstyle.css">


</head>

<body>
<h1>Sign In Form</h1>
<div id="wrapper">
    <form id="signin" method="" action="" autocomplete="off">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="text" id="user" name="user" placeholder="username" />
        <input type="password" id="pass" name="pass" placeholder="password" />
        <button type="submit">&#xf0da;</button>
        <p>forgot your password? <a href="#">click here</a></p>
    </form>
</div>


</body>
</html>
