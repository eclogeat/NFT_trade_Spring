<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/static/css/style.css" type="text/html">
</head>
<style>
    .admin-section {
        background-color: #1e1e1e;
    }
    body {
        background-color: #1e1e1e;
        color: white;
    }
    table th {
      padding: 20px;
    }
    table {
        -webkit-box-shadow: 0px 5px 15px 0px rgba(255, 255, 255, 0.2);
        -moz-box-shadow: 0px 5px 15px 0px rgba(255, 255, 255, 0.2);
        box-shadow: 0px 5px 15px 0px rgba(255, 255, 255, 0.2);
        border: solid 2px white;
        margin-top: 40px;
        align-items: center;
        margin-left: auto;
        margin-right: auto;
    }
    .admin-text {
        padding-top: 60px;
        text-align: center;
    }
    .first-tr {
        font-size: 1.3rem;
    }


</style>
<body>
<div class="admin-section">
    <div class="container">
        <h3 class="admin-text">Admin Panel</h3>
        <table border="1">
            <tr class="first-tr">
                <th>Email</th>
                <th>Номер телефона</th>
                <th>Активность</th>
                <th>Роли</th>
                <th>Бан</th>
                <th>Редактирование</th>
                <th>Подробная информация</th>
            </tr>
            <#list users as user>
                <tr>
                    <th>${user.email}</th>
                    <th>${user.phoneNumber}</th>
                    <th><#if user.active>true<#else>false</#if></th>
                    <th><#list user.roles as role>${role}</#list></th>
                    <th>
                        <form action="/admin/user/ban/${user.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <input type="submit" value="Бан">
                        </form></th>
                    <th><a href="/admin/user/edit/${user.id}">Редактирование</a></th>
                    <th><a href="/user/${user.id}">Подробная информация</a></th>
                </tr>
            <#else>
                <h3>Пользователей нет</h3>
            </#list>
        </table>

    </div>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>