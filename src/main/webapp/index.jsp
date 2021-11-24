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
    <title>Conhece Recife</title>
</head>

<body>
    <header>
        <!--ALTERAR OS RETANGULOS-->
        <nav class="navbar navbar-expand-xl">
            <div class="container">
                <div class="row">
                    <div class="col-2">
                        <a class="navbar-brand" href="#">
                            <img src="images/Rectangle 55.png" alt="retangulo2"
                                style="position: absolute; width: 970.33px; top: -27.21px; left:-190%;">
                            <img src="images/Rectangle 53.png" alt="retangulo2"
                                style="position: relative;width: 650.42px;left:-53%;height: 266px;top: -33px;">
                            <img src="images/CR4.gif" alt="logo"
                                style="position: absolute;width: 162px;height: 170px;left:-80%;top: 14px;">
                        </a>
                    </div>
                    <div class="row mt-2">
                        <div class="col-lg-2 ml-3">
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                                aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item dropdown">
                                        <button type="button"
                                            class="nav-link btn btn-dark text-white radius dropdown-toggle"
                                            data-toggle="dropdown" style="padding-right:  2rem;">
                                            Lugares
                                        </button>
                                        <!-- Verificar melhor designer para o dropdown -->
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"
                                            style="background-color: #343a40;">
                                            <a class="dropdown-item button-dropdown text-center"
                                                href="cinema.jsp">Cinema</a>
                                            <a class="dropdown-item button-dropdown text-center" href="#">Teatro</a>
                                            <a class="dropdown-item button-dropdown text-center" href="#">Museus</a>
                                            <a class="dropdown-item button-dropdown text-center" href="#">Parques</a>
                                            <a class="dropdown-item button-dropdown text-center" href="#">Praias</a>
                                            <a class="dropdown-item button-dropdown text-center" href="#">Zoologicos</a>
                                        </div>

                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <li class="nav-item active" style=" list-style: none;">

                                <a class="nav-link btn btn-dark text-white radius ml-4"
                                    href="parceiros.jsp">Parceiros</a>
                            </li>
                        </div>

                        <div class="col-lg-3">
                            <li class="nav-item" style=" list-style: none;">
                                <a class="nav-link btn-dark text-white radius text-center" href="quem-somos.jsp">Quem somos</a>
                            </li>
                        </div>

                        <div class="col-lg-3">
                            <li class="nav-item" style=" list-style: none;">
                                <a class="nav-link btn btn-dark text-white radius" href="contato.jsp">Contato</a>
                            </li>
                        </div>
                        
                        
                    </div>
                </div>
                <div class="col-2">
                    <div class="row">
                        <div class="col-4">
                            <figure>
                                <img class="style-img" src="images/onda de calor.png" alt="LOGO"
                                    style="width: 500px; height: 500px; position: absolute; margin-left: -170px;">
                            </figure>

                        </div>
                        <div class="col-4">
                            <figure>
                                <img class="style-img" src="images/sol.png" alt="LOGO"
                                    style="width: 300px; height: 300px; margin-left: 110px;">
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

    </header>
    <section>
        <div class="container">
            <div class="row">
                <div class="col mr-3">
                    <h1 style="font-size: 61px; font-weight: bold;">Recife</h1>
                    <p id="text-home" style="position:relative; font-size: 25px; ">
                    	A capital do estado de Pernambuco, no nordeste do Brasil, distingue-se pelos seus vários rios, pontes, ilhéus e penínsulas. Recife Antigo, na própria ilha junto ao porto, é o centro histórico da cidade antiga que data do século XVI. A sul, a popular Praia de Boa Viagem é protegida por recifes e está ladeada de blocos de apartamentos elevados, hotéis modernos e restaurantes.
                       	É a cidade nordestina com o melhor Índice de Desenvolvimento Humano (IDH-M), o Recife é a quarta capital brasileira na hierarquia da gestão federal,
                        após Brasília, Rio de Janeiro e São Paulo, e possui o quarto aglomerado urbano mais populoso do Brasil, com 4 milhões de habitantes em 2017, superado apenas pelas concentrações urbanas de São Paulo, Rio de
                        Janeiro e Belo Horizonte. A capital pernambucana tem, num raio de 300 km, três capitais estaduais sob sua influência direta: João Pessoa (122 km), Maceió (257 km) e Natal (286 km).
                        O Centro Histórico do Recife, em que pesem as demolições e descaracterizações, representa em conjunto com os sítios históricos de Olinda, Igarassu e dos Guararapes um dos mais valiosos patrimônios barrocos do Brasil.
                    </p>
                    
                    <div>
						<p id="text-home" style="text-align:left">
						Conheça um pouco sobre o projeto:
						<iframe width="500" height="300" src="https://www.youtube.com/embed/TsmSZdQuxgs" title="Conhece Recife" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style=" margin: 50px 100px 100px 100px;"></iframe>
						</p>
                	</div>
               </div>
					
		
                 
                
                
				
                <div class="col-4">
                        <a class="navbar-brand" href="#">
                            <img src="images/Rectangle 54-home.png" alt="retangulo2" style=" position: absolute; left:-10%;">
                             <img src="images/Rectangle 56-home.png" alt="retangulo2" style=" position: absolute; left:0;">
                    		<img src="images/Ellipse com foto.png" alt="images" style="position:relative; margin-top:130px; right:-70px;">
                    </a>
                </div>
             </div>
                
           

            <div class="row">
                <div class="col-4">
                    <figure class="ml-5">
                        <img class="style-img" src="images/cactos1.png" alt="LOGO">
                    </figure>
                </div>

                <div class="col-4">
                    <figure class="ml-5">
                        <img class="style-img" src="images/cactos2.png" alt="LOGO">
                    </figure>
                </div>

                <div class="col-4">
                    <figure class="ml-5">
                        <img class="style-img" src="images/cactos3.png" alt="LOGO">
                    </figure>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <figure>
                        <img class="style-img" src="images/Ativo 1.png" alt="LOGO" style="width: 1100px; height: 30px;">
                    </figure>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <figure>
                        <img class="style-img" src="images/Ativo 1.png" alt="LOGO" style="width: 1100px; height: 30px;">
                    </figure>
                </div>
            </div>
                    <!--BOTAO LOGIN, DEFINIR LOCAL-->
                    <div class="col">
                        <div class="row justify-content-end">
                        <div class=" style="position: right;width: 650.42px;left:-53%;height: 266px;top: -33px;>
                            <li class="nav-item" style=" list-style: none;text-color:green;">
                                <a class="nav-link text-dark" href="login-administrador.jsp">Login-Admin</a>
                            </li>
                        </div>
                    </div>
                    
                    
        </div>

    </section>
</body>
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
