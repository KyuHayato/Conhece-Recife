<template >
  <ion-content>
       <ion-img src="../../assets/topo.png"></ion-img>

        <div class="margem">

            <div class="header-whopage">
                <ion-img class="img-topo" src="../../assets/carinha.png"></ion-img>
                <p class="texto-topo">Ao perceber que só visitamos lugares que conhecemos, daí nasceu o projeto <span class="azul">Conhece</span> <span class="laranja">Recife</span>.</p>
            </div>

            <p><b>Objetivo</b>: é levar a nossa cidade a alcançar uma maior visibilidade entre turistas e entre moradores locais,tendo em vista que os próprios recifenses não conhecem as suas histórias, pretendemos fazer com que a nossa população conheça mais a sua cidade e que os turistas tenham nossa cidade como referência.</p>
            <p><b>Diferencial</b> Ter uma pessoa que conhece ou tem histórias naquele local que queiram compartilhar com o público.</p>
            <p><b>Parceiros</b> contamos com o apoio de vários pareceiros locais, como restaurantes e lanchonetes</p>
            <p><b>Segurança</b> Trazemos uma maior comodidade para você em termos de segurança, iremos apontar o risco eminente em cada local.</p>
            <p><b>Grupos Prioritários</b> Nosso serviço de busca avançado utiliza um mecanismo de filtro de tecnologia de ponta, e está pronto para melhor atender as necessidades das pessoas com deficiência.</p>


            <div class="rodape">
                Mergulhem no <span class="azul">Conhece</span> <span class="laranja">Recife</span><br/>
                www.<span class="azul">conhece</span> <span class="laranja">recife</span>.com.br/home
            </div>

        </div>
     
    </ion-content>

</template>


<script lang="ts">

import { defineComponent } from "vue";
import { IonImg, IonContent, IonMenuButton, IonTitle} from "@ionic/vue";

//import "./style.css";

import { Pagination, Navigation } from "swiper";


export default defineComponent({
    name: "PlacesPage",
    components: { IonImg, IonContent },
    setup() {
        return {
            modules: [Pagination, Navigation],
        };
    },

    data:

        function () {
            return {};
        },

    methods: {},

});


</script>

<style scoped>
body{
    background-color: #fff;
    }
.ion-padding {
    background-color: #f8fafe;
    text-emphasis-color: #f8fafe;
}

ion-content {
    --background: #fff;
    font-size: 11pt;
    color : #000;
}

ion-card {
    --background-color: #2F80ED;
}

ion-toolbar {
    --background: #2f80ed;

}

.azul {
    color: #2f7fec; 
}

.laranja {
    color: #e88401; 
}

.margem {
    display: block;
    float: left;
    width: 100%;
    padding: 30px;
    color: #000;
}

.header-whopage {
    display: block;
    float: left;
    width: 100%;
    margin-bottom: 30px;
}

.img-topo {
    display: inline-block;
    width: 20%;
    float: left;
}

.texto-topo {
    display: block;
    float: right;
    width: 70%;
}

.rodape {
    display: block;
    float: left;
    width: 100%;
    margin-top: 20px;
    font-size: 13pt;
    text-align: center;
}

.toolbar {
    padding-bottom: 30px;
    padding-top: 30px;
}

.imgGrid {
    width: 100%;
    height: 75px;
}

.cardSup {

    background-color: #2F80ED
}

.grid {
    margin-top: -30px;
    padding: 1px;
}

.cardBot {
    color: #ffffff
}

.colunaText {

    width: 172px;
    height: 27px;

    /* Header/H2 */
    margin-top: 10%;
    text-align: left;
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 700;
    font-size: 18px;
    line-height: 150%;
    /* identical to box height, or 27px */

    letter-spacing: 0.15px;

    color: #130a72;


    /* Inside auto layout */

    flex: none;
    order: 0;
    flex-grow: 0;
}

.textTileGrid {

    width: 172px;
    height: 27px;

    /* Header/H2 */
    text-align: start;

    font-style: normal;
    font-weight: 700;
    font-size: 13px;
    line-height: 150%;
    padding-left: 0;
    margin-left: 0;
    margin-top: 8%;
    /* identical to box height, or 27px */
    letter-spacing: 0.15px;
    color: #ffffff;
    /* Inside auto layout */
    flex: none;
    order: 0;
    flex-grow: 0;
}

.textToolbar {
    color: #ffffff;
}

.textSubtitleGrid {
    text-align: start;
    color: #ffffff;
    padding-left: 1;
    margin-left: 1;
}

</style>