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
<div class="row some"></div>
<h1>USER INFO</h1><hr>
<h3>Редактирование пользователя ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Сохранить</button>

</form>
</div>
</div>
</body>
</html>