<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Регистрация/ПРострация</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<style>
  *,
  *:before,
  *:after {
    box-sizing: border-box;
  }
  .btn-primary{
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
  }

  .btn{
    display: inline-block;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    border-top-color: transparent;
    border-right-color: transparent;
    border-bottom-color: transparent;
    border-left-color: transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
  }
  body {
    padding: 1em;
    font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
    font-size: 15px;
    color: #0082aa;
    background: url(images/Blue-Clean-iOS7_iPad00-Max-Kas.png), no-repeat;
  }
  h4 {
    color: #5AB9EA;
  }
  input,
  input[type="radio"] + label,
  input[type="checkbox"] + label:before,
  select option,
  select {
    width: 100%;
    padding: 1em;
    line-height: 1.4;
    background-color: #f9f9f9;
    border: 1px solid #e5e5e5;
    border-radius: 3px;
    -webkit-transition: 0.35s ease-in-out;
    -moz-transition: 0.35s ease-in-out;
    -o-transition: 0.35s ease-in-out;
    transition: 0.35s ease-in-out;
    transition: all 0.35s ease-in-out;
  }
  input:focus {
    outline: 0;
    border-color: #64ac15;
  }
  input:focus + .input-icon i {
    color: #5AB9EA;
  }
  input:focus + .input-icon:after {
    border-right-color: #5AB9EA;
  }
  input[type="radio"] {
    display: none;
  }
  input[type="radio"] + label,
  select {
    display: inline-block;
    width: 50%;
    text-align: center;
    float: left;
    border-radius: 0;
  }
  input[type="radio"] + label:first-of-type {
    border-top-left-radius: 3px;
    border-bottom-left-radius: 3px;
  }
  input[type="radio"] + label:last-of-type {
    border-top-right-radius: 3px;
    border-bottom-right-radius: 3px;
  }
  input[type="radio"] + label i {
    padding-right: 0.4em;
  }
  input[type="radio"]:checked + label,
  input:checked + label:before,
  select:focus,
  select:active {
    background-color: #5AB9EA;
    color: #fff;
    border-color: #64ac15;
  }
  input[type="checkbox"] {
    display: none;
  }
  input[type="checkbox"] + label {
    position: relative;
    display: block;
    padding-left: 1.6em;
  }
  input[type="checkbox"] + label:before {
    position: absolute;
    top: 0.2em;
    left: 0;
    display: block;
    width: 1em;
    height: 1em;
    padding: 0;
    content: "";
  }
  input[type="checkbox"] + label:after {
    position: absolute;
    top: 0.45em;
    left: 0.2em;
    font-size: 0.8em;
    color: #fff;
    opacity: 0;
    font-family: FontAwesome;
    content: "\f00c";
  }
  input:checked + label:after {
    opacity: 1;
  }
  select {
    height: 3.4em;
    line-height: 2;
  }
  select:first-of-type {
    border-top-left-radius: 3px;
    border-bottom-left-radius: 3px;
  }
  select:last-of-type {
    border-top-right-radius: 3px;
    border-bottom-right-radius: 3px;
  }
  select:focus,
  select:active {
    outline: 0;
  }
  select option {
    background-color: #5AB9EA;
    color: #fff;
  }
  .input-group {
    margin-bottom: 1em;
    zoom: 1;
  }
  .input-group:before,
  .input-group:after {
    content: "";
    display: table;
  }
  .input-group:after {
    clear: both;
  }
  .input-group-icon {
    position: relative;
  }
  .input-group-icon input {
    padding-left: 4.4em;
  }
  .input-group-icon .input-icon {
    position: absolute;
    top: 0;
    left: 0;
    width: 3.4em;
    height: 3.4em;
    line-height: 3.4em;
    text-align: center;
    pointer-events: none;
  }
  .input-group-icon .input-icon:after {
    position: absolute;
    top: 0.6em;
    bottom: 0.6em;
    left: 3.4em;
    display: block;
    border-right: 1px solid #e5e5e5;
    content: "";
    -webkit-transition: 0.35s ease-in-out;
    -moz-transition: 0.35s ease-in-out;
    -o-transition: 0.35s ease-in-out;
    transition: 0.35s ease-in-out;
    transition: all 0.35s ease-in-out;
  }
  .input-group-icon .input-icon i {
    -webkit-transition: 0.35s ease-in-out;
    -moz-transition: 0.35s ease-in-out;
    -o-transition: 0.35s ease-in-out;
    transition: 0.35s ease-in-out;
    transition: all 0.35s ease-in-out;
  }
  .container {
    max-width: 38em;
    padding: 1em 3em 2em 3em;
    margin: 0em auto;
    background-color: #fff;
    border-radius: 4.2px;
    box-shadow: 0px 3px 10px -2px rgba(0, 0, 0, 0.2);
  }
  .row {
    zoom: 1;
  }
  .row:before,
  .row:after {
    content: "";
    display: table;
  }
  .row:after {
    clear: both;
  }
  .col-half {
    padding-right: 10px;
    float: left;
    width: 50%;
  }
  .col-half:last-of-type {
    padding-right: 0;
  }
  .col-third {
    padding-right: 10px;
    float: left;
    width: 33.33333333%;
  }
  .col-third:last-of-type {
    padding-right: 0;
  }
  @media only screen and (max-width: 540px) {
    .col-half {
      width: 100%;
      padding-right: 0;
    }
  }
</style>
</head>
<body>
<!-- partial:index.partial.html -->
<div >
  <form class="container" action="/createUser/admin/execute" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div class="row">
      <h4>Пользователь</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="ФИО"  name="name"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="email"  name="email" placeholder="Эл. почта"/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      <!--Надо будет, Серега, это сотрешь-->
      <div class="input-group input-group-icon">
        <input type="text"  name="pswrd" placeholder="Пароль"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
    <!--Вот этот вот кусок-->
    </div>
    <div class="row">
      <div class="col-half">
      <button type="submit" class="btn btn-primary">Зарегестрировать</button>
      </div>
    </div>
  </div>
  </form>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="../../../../../../Users/Sergei/Desktop/добавление/AdminAdd/dist/script.js"></script>

</body>
</html>
