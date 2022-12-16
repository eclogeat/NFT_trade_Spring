<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Log in</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/static/css/style.css" type="text/html">
</head>
<style>
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
</style>
<body>

<div class="container">
<h2>Log in</h2>
    <div class="row">
        <div class="col-12 col-md-6">
            <form action="/login" method="post">
                <input type="email" name="username" class="form-control" placeholder="Email"><br>
                <input type="password" name="password" class="form-control" placeholder=Password"><br>
                <input type="hidden" name="_csrf" value="${_csrf.token}"><br>
                <input type="submit" class="form-control" value="GO"><br>
                <a href="/registration">haven`t account? Sign on</a>
            </form>
        </div>
        <div class="col-12 col-md-6">
            <img src="/static/img/wide.png" class="d-block w-100" alt="t">
        </div>
    </div>


</div>




</body>
</html>