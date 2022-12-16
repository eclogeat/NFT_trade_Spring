<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/static/css/style.css" type="text/html">
</head>
<style>
    .pct1 {
        font-size: 2rem;
    }
    h1 {
        padding-top: 60px;
    }
    .sign-in {
        align-items: center;
    }
    form {
        max-width: 500px;
        margin-top: 80px;
    }
    h2 {
        text-align: center;
        padding-top: 50px;
        padding-bottom: 30px;
    }
    body {


        background-color: #1e1e1e;
        color: white;
    }
    a {
        color: white;
    }
    .eth {
        padding-left: 5px;
        width: 20px;
    }
    .some {
        text-align: center;
        align-items: center;
    }
</style>
<body>
<div class="container">
    <div class="row some">
<h1>USER INFO</h1><hr>
<h3>Подробная информация о пользователе <b>${user.name}</b></h3>
<h4>Номер телефона: </b> ${user.phoneNumber}</h4>
<h4>Товар пользователя ${user.name}</h4>
<#list  products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} <img src="/static/img/eth.png" class="eth" alt="eth"> | <a href="/product/${product.id}">More...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
    </div>
</div>
</body>
</html>