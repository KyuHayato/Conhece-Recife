<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Conhece Recife - Contato</title>
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

            <div class="row mt-5">
                <div class="col ml-5">
                    <div class="mb-4">
                        <h1 class="text-center label-disabled" style="font-family: Fjalla One;">CONTATO</h1>
                        <h1 class="text-center" style="font-family: Fjalla One;">CONTATO </h1>
                    </div>

                    <figure>
                        <img src="images/FOTO.png" alt="foto de contato" class="ml-5">
                    </figure>
                    <div>
                        <img src=images/bolas-design.png
                            style="position: absolute;width: 133.5px;height: 135px;top: -145px;right:-522px;left:0,1px;">
                    </div>
                </div>
                <form method="POST">
                    <div class="col">
                        <div class="row ">
                            <div class="col">
                                <div class="form-group radius">
                                    <input type="text" name="nameContact" id="nameContact"
                                        class="form-control radius input-form" placeholder="Nome">
                                    <div>
                                        <span class="style-error" id="errorNameContact" style="display: none;">Nome
                                            errado, insira os dados de forma
                                            correta</span>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="form-group radius">
                                    <input type="text" name="phoneContact" id="phoneContact"
                                        class="form-control radius input-form" placeholder="Telefone">
                                    <div>
                                        <span class="style-error" id="errorPhoneContact" style="display: none;">Formato de telefone errado</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group radius">
                                    <select class="form-control radius input-form p-2" name="subjectContact"
                                        id="subjectContact">
                                        <option value="0">Assunto</option>
                                        <option value="1">Teatro</option>
                                        <option value="2">Exemplo</option>
                                        <option value="3">Cinema</option>
                                    </select>
                                    <div>
                                        <span class="style-error" id="errorSubjectContact"
                                            style="display: none;">Selecione um assunto</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group radius">
                                    <input type="email" name="emailContact" id="emailContact"
                                        class="form-control radius input-form" placeholder="Email">
                                    <div>
                                        <span class="style-error" id="errorEmailContact"
                                            style="display: none;">Selecione um assunto</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <textarea class="form-control radius input-form" name="messageContact" id="messageContact"
                                rows="9" placeholder="Mensagem"></textarea>
                            <div>
                                <span class="style-error" id="errorMessageContact" style="display: none;">Digite a
                                    mensagem</span>
                            </div>
                        </div>
                        <button type="button" class="btn btn-dark btn-block radius mt-4"
                            onclick="validateFormRegisterContact(this)">Enviar</button>
                        <div class="row justify-content-center">
                            <div class="col-4">
                                <button type="button" class="btn button-home radius mt-4">
                                    <a href="index.html" style="color: black; text-decoration: none;">
                                        < Home</a></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <footer>
                <div class="row justify-content-end">
                    <div class="col-6">
                        <figure class="ml-5">
                            <img src="images/rectangle_56.png" alt="retangulo2"
                                style="position: absolute;top:170px;left:80px;">
                            <img src="images/rectangle_57.png" alt="retangulo2"
                                style="position: relative;top:205px;left:270px;">
                        </figure>
                    </div>
                </div>
            </footer>
        </div>


    </section>

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