<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NFT Stream</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/static/css/style.css" type="text/html">
</head>

<style>
    body {
        background-color: #1e1e1e;
    }
    header {
        background: url("/static/img/back.jpg") no-repeat center;
        background-size: cover;
        min-height: 1000px;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: top;
    }
    .navbar {
        padding-top: 30px;
        background: rgba(0, 0, 0, 0) !important;
    }
    .logo {
        width: 300px;
    }
    .nav-link {
        color: white;
        font-size: 1.4rem;
    }
    /*.main_block {*/
    /*    padding-top: 80px;*/
    /*    padding-bottom: 120px;*/
    /*    gap: 160px;*/
    /*    display: flex;*/
    /*    justify-content: space-between;*/
    /*}*/

    .carousel-item img {

        border-radius: 20px;
    }
    h1 {
        color: white;

    }
    header p {
        color: white;

    }
    button {

background-color: #ac0b0b;
        color: white;
        padding: 7px 20px;
        border-radius: 6px;
        border: none;
        font-size: 1.6rem;

    }
    button:hover {
        transform: scale(1.06);
        transition: .2s ease-in-out;

    }
.search-bar {
    background: rgba(0, 0, 0, 0);
    border: solid 2px white;
    color: white;
    padding: 10px 20px;
    font-size: 1.2rem;
}
.searching {
    padding-top: 40px;
    margin-right: 60px;


}
.main_block {
    padding-top: 140px;
}
h3 {
    color: white;
}
span {
    color: red;

    font-weight: bold;
}
.section_one {
    padding-bottom: 40px;
    background-color: #1e1e1e;
}

h2 {
    color: white;
}

.second {
    padding-top: 50px;
}
.main-form {
    max-width: 500px;
}


    @media (min-width: 576px){
        .card-columns {

            text-decoration: none!important;
            padding-top: 60px;
            -webkit-column-count: 4;
            -moz-column-count: 4;
            column-count: 4;
            -webkit-column-gap: 1.25rem;
            -moz-column-gap: 1.25rem;
            column-gap: 1.25rem;
            orphans: 1;
            widows: 1;
        }
    }
    .eth {
        padding-left: 5px;
        width: 20px;
    }
    .card-body {
        text-decoration: none;
    }
    h5 {
        text-decoration: underline #212529;
        font-size: 1.6rem!important;
    }
    p {
        font-size: 1.4rem!important;
        text-decoration: underline #212529;
    }
    .card {

    }
    .nav {
        padding-left: 40px;
    }

</style>


<body>
<#--<img src="/static/img/back.jpg"-->
<#--     style="border:2px solid black; border-radius: 20px" height="120">-->
<header>
<div class="container">
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid ">
        <img src="/static/img/logo.png" alt="logo" class="logo">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">


            </ul>
            <#if user.email??>

                <h3>Welcome back <span>${user.name}</span></h3>
                <#if user.isAdmin()>
                  <a href="/admin" class="nav-link">Admin Panel</a>
                </#if>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button class="nav-link" type="submit">Logout</button>
                </form>

            <#else>
                <a href="/login" class="nav-link nav">Log in</a>

            </#if>
<#--            <form action="/" method="get">-->
<#--                Searching by name: <label><input type="text" name="title"><br></label>-->
<#--                <input type="submit" value="Search!">-->
<#--            </form>-->
        </div>
    </div>
</nav>

    <div class="row main_block">
<#--        <div class="col-12">-->
            <div class="col-12 col-md-7 col-sm-3">
                <h1>The aggregated NFT<br> marketplace  for communities</h1>
                <p>Buy NFTs from 5 blockchains at the best prices. <br>Lock your $RARI for 0% fees.</p>
                <form class=" searching" role="search" action="/" method="get">
                    <input class="form-control me-2 search-bar mb-4" type="text" placeholder="Search" aria-label="Search" name="title">
                    <button type="submit">Get Started</button>

                </form>

            </div>
            <div class="col-12 col-md-4 col-sm-3">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/static/img/first_img.png" class="d-block w-100" alt="f">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/third.png" class="d-block w-100" alt="s">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/third.png" class="d-block w-100" alt="t">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
<#--        </div>-->
    </div>

</header>



<#--    </div>-->
<#--        <div class="row">-->
<#--            <h3>Check this collection</h3>-->
<#--            <div class="card-columns">-->
<#--    <#list products as product>-->
<#--        <div>-->
<#--            <img src="/images/${product.previewImageId}"-->
<#--                 class="card-img-top">-->
<#--            <p><b>${product.title}</b> ${product.price} rub. | <a href="/product/${product.id}">More...</a></p>-->
<#--        </div>-->
<#--    <#else>-->
<#--        <h3>Nothing here ;[</h3>-->
<#--    </#list>-->
<#--    <#if user.email??>-->
<#--            </div>-->

<#--        </div>-->
<#--    </div>-->
<#--</div>-->



<#--<hr>-->



<#--</#if>-->
<div class="container">
        <div class="card-columns">
            <#list products as product>
                <a href="/product/${product.id}" class="product-link">
                    <div class="card text-white bg-dark my-3 product">

                        <img src="/images/${product.previewImageId}"
                             class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">${product.title}</h5>
                            <p class="card-text">${product.price}  <img src="/static/img/eth.png" class="eth" alt="eth"></p>
                            <p>${product.description}</p>
                        </div>
                        <div class="card-footer">
                          <p>${product.city}</p>
                        </div>
                    </div>
                </a>
            <#else>
                <h1 style="text-align: center">Не найдено</h1>
            </#list>
        </div>

<div class="section_one">
    <div class="container">
        <div class="row second">
            <div class="col-6">
                <h3>Create a new token</h3>

                <form action="/product/create" method="post" enctype="multipart/form-data" class="main-form">
                    <label><input class="form-control" type="text" name="title" placeholder="Name"></label><br><br>
                    <label><input class="form-control" type="text" name="description" placeholder="Description"></label><br><br>
                    <label><input class="form-control" type="number" step="any" name="price" placeholder="Price"></label> <br><br>
                    <label><input class="form-control" type="text" name="city" placeholder="City"></label> <br><br>
                    <input type="file" name="file1" class="form-control"> <br><br>
                    <input type="file" name="file2" class="form-control"> <br><br>
                    <input type="file" name="file3" class="form-control"> <br><br>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" class="form-control" value="Add some">

                </form>
            </div>
            <div class="col-6 advice">
                <h2 >just check and add some token! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, cupiditate delectus error id magnam molestias perferendis praesentium quae voluptatem voluptates?</h2>

            </div>

</div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>