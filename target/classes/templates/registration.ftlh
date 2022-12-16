<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/static/css/style.css" type="text/html">
</head>
<style>
    form {
        margin-top: 80px;
        max-width: 500px;

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
</style>
<body>
<div class="container">
    <h2>Registration</h2>
<div class="row">
    <div class="col-12 col-md-6">
        <form action="/registration" method="post">
            <input type="text" name="name" class="form-control" placeholder="name"><br>
            <input type="email" name="email" class="form-control" placeholder="email"><br>
            <input type="text" name="phoneNumber" class="form-control" placeholder="telephone"><br>
            <input type="password" name="password" class="form-control" placeholder="password"><br>
            <input type="hidden" name="_csrf" value="${_csrf.token}"><br>
            <input type="submit" class="form-control" value="Sign in">

        </form>
    </div>
    <div class="col-12 col-md-6">
        <img src="/static/img/wide1.png" class="d-block w-100" alt="t">
    </div>
</div>


</div>

<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>




</body>
</html>