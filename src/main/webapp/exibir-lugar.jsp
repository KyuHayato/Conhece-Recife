<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<%@page import="DAO.PlaceDAO"%>
<%@page import="model.Place"%>
<%
int id = 0;
String idRequest = request.getParameter("id");
id = Integer.parseInt(idRequest);
PlaceDAO dados1 = new PlaceDAO();
Place place = dados1.getPlace(id);

%>
<html>

<head>
    <meta charset="utf-8"> 
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <title>Conhece Recife - <%= place.getName() %></title>
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
    <div class="container">
     
        <div class="row" style="margin-top: 75px;">
            <div class="col-sm-6">
            
                <!-- faltando essa classe colocar no projeto -->
                <article class="post_1" style="align-items: center;text-align: justify;">
                    <p>
                   <%= place.getDescription() %>
                   
                    </p>
                </article>
            </div>
            <div class="col-sm-6" >
                <aside style="margin-left: 20px;">
                    <div style="align-items: center;text-align: center;">
						<u>
							<h1 id="Titulo"
								style='position: relative; top: 29px; font-family: Fjalla One; text-transform: uppercase; left: 17px; font-size: 50px;'><%= place.getName() %></h1>
						</u>
						<h2 id="Titulo2" style='position:absolute; top: 0px; letter-spacing: -0.15em;font-family: Fjalla One;text-transform: uppercase; left:10%;font-size: 75px;color: rgba(0, 0, 0, 0.08) ;'> <%= place.getName() %></h2>
                    </div>
                    <div style="text-align: right ;font-size: 50px; margin-top: 40px;">
                        <img src="images/image1.png" alt="icone_acess">
                        <img src="images/image2.png" alt="icone_acess">
                        <img src="images/image3.png" alt="icone_acess">
                        <img src="images/image4.png" alt="icone_acess">
                        <img src="images/image5.png" alt="icone_acess">


                    </div>
                    <div style="align-items: center;text-align: center;">
                        <img src="images/rio.jpg" alt="Rio_Recife" width="100%"
                            style='position:relative; top:0px; left:0px;'>
                        <img src="images/seta_carrossel.png" alt="seta"
                            style='position:absolute; top: 230px; left:92%;'>
                    </div>
                    <div style="align-items: center;text-align: center;margin-top: 30px;">
                        <h7>Endere&ccedilo: Rua da Aurora, 175, Boa Vista, Recife</h7>
                        <h7> Visita&ccedilao: Terca a domingo, nos horarios das sessoes</h7>
                        <h7> Telefone: (81) 3184.3157</h7>
                        <h7> E-mail: saoluiz.recife@gmail.com </h7>
                    </div>
                </aside>
            </div>
        </div>

        <div style="align-items: center;text-align: center;margin-top: 20px;">


            <footer>
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <h5><strong>PARCEIROS:</strong></h5>
                        <h7>Tire um print desta tela e apresente no estabelecimento</h7>
                        <div style="margin-top: 10px;">
                            <img src="images/qr_code.png" alt="Qr_code">
                        </div>
                        <h6 style="color:red;">MC DONALDS - 5% DE DESCONTO </h6>
                        <h6 style="color:red;"> SUBWAY - CLONE DE SUGESTAO DO DIA - 5% DE DESCONTO </h6>
                    </div>


                </div>

                <footer>
                    <div class="row justify-content-end">
                        <div class="col-6">
                            <figure class="ml-5">
                                <img src="images/rectangle_56.png" alt="retangulo2" style="position: absolute;top:170px;left:80px;"> 
                                <img src="images/rectangle_57.png" alt="retangulo2" style="position: relative;top:205px;left:270px;"> 
                            </figure>
                        </div>
                    </div>
                    <!-- Inserir as imagens que usou de referencia no projeto -->
                    <!-- e ajustar o que tiver de ajustar -->

                </footer>
                
            </footer>
        </div>

    </div>


</body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>