<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Conhece Recife - Login[Administrador]</title>
</head>
<body>
    <header>
        <div>
            <img src="images/rectangle_54.png" alt="retangulo2"
                style="position: absolute; width: 1035.33px;top: -26.21px;">
            <img src="images/rectangle_55.png" alt="retangulo2"
                style="position: relative;width: 670.42px;left:751,73px;height: 266px;top: -13px;">
            <img src="images/Conhece Recife Logo.png" alt="logo"
                style="position: absolute;width: 162px;height: 170px;left: 170px;top: 14px;">
        </div>
    </header>
    <section>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col--lg-12 mb-4">
                    <h1 class="label-disabled" style="font-family: Fjalla One; font-size: 75px;">ADMINISTRADOR</h1>
                    <h1 class="text-center" style="font-family: Fjalla One; font-size: 50px;">ADMINISTRADOR</h1>
                </div>
            </div>
            <div>
                <img src=images/bolas-design.png
                    style="position: absolute;width: 133.5px;height: 135px;top: 277px;right:330px;left:0,8px;">
            </div>
            <form method="POST">
                <div class="row justify-content-center">
                    <div class="col-lg-4">
                        <div class=" border border-dark p-4 radius" style="background: rgba(255, 247, 206, 0.33);">
                            <div class="row justify-content-center">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control radius input-form" placeholder="Login"
                                            name="nameLogin" id="nameLogin"
                                            style="text-decoration: none; color: #495057; background: linear-gradient(180deg, rgba(255, 247, 206, 0.33) 0%, rgba(178, 221, 237, 0.33) 100%);">
                                            <div>
                                                <span class="style-error" id="errorNameLogin" style="display: none;">Nome do ADM incorreto</span>
                                            </div>
                                        </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="password" class="form-control radius input-form"
                                            placeholder="Senha" name="Password" id="Password"
                                            style="text-decoration: none; color: #495057; background: linear-gradient(180deg, rgba(255, 247, 206, 0.33) 0%, rgba(178, 221, 237, 0.33) 100%);">
                                            <div>
                                                <span class="style-error" id="errorPassword" style="display: none;">Senha incorreta</span>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                        <button type="button" class="btn btn-dark btn-block radius mt-4" onclick="validateLogin(this)">Enviar</button>
                        <div class="row justify-content-center">
                            <div class="col-4">
                                <button type="button" class="btn button-home radius mt-4">
                                    <a href="index.jsp" style="color: black; text-decoration: none;">
                                        < Home</a></button>
                            </div>
                        </div>
                    </div>
            </form>
        </div>
        </div>
    </section>
    <footer>
        <div class="row justify-content-end">
            <div class="col-6">
                <figure class="ml-5">
                    <img src="images/rectangle_56.png" alt="retangulo2" style="position: absolute;top:170px;left:80px;">
                    <img src="images/rectangle_57.png" alt="retangulo2"
                        style="position: relative;top:205px;left:270px;">
                </figure>
            </div>
        </div>
    </footer>

</body>
<script src="js/validacoes.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>

</html>