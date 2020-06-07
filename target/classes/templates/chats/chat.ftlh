<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>

<#if dialogs??>

<#list dialogs as d>
  <a href="/chat/${d.id}">${d.toString()}</a></br></br>
</#list>

</#if>

</body>
</html>