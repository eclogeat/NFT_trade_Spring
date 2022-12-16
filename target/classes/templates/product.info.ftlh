<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Log in</title>
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
        <div class="col-12">
<h1>NFT INFO</h1><hr>
<h4>more about token</h4>
<#list images as img>
    <img src="/images/${img.id}" height="400px" alt="as1"/><br><br>
</#list>
            <div class="pct1">
<b>Name: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Price: </b>${product.price}<img src="/static/img/eth.png" class="eth" alt="eth"><br>
<b>City: </b>${product.city}<br>
<b>Author: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
            </div>
        </div>
    </div>
</div>

<#--<hr>-->

<#--<form action="/product/delete/${product.id}" method="post">-->
<#--    <input type="submit" value="delete this"><br><br>-->


<#--</form>-->
</body>
</html>