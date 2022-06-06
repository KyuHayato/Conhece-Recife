<template >


    <ion-header>

        <ion-toolbar class="toolbar">
            <ion-menu-button slot="start"></ion-menu-button>
            <ion-title class="textToolbar">
                Locais mais procurados
            </ion-title>
        </ion-toolbar>
    </ion-header>

    <ion-content>

        <swiper :slidesPerView="2" :spaceBetween="0" :slidesPerGroup="2" :loop="true" :loopFillGroupWithBlank="true"
            :pagination="{
                clickable: true,
            }" :navigation="true" :modules="modules" class="mySwiper">
            <swiper-slide>
                <ion-card class="cardSup">
                    <ion-img class="imgCarrosel"
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle class="cardBot">RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
            <swiper-slide>
                <ion-card class="cardSup">
                    <ion-img class="imgCarrosel"
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle class="cardBot">RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
            <swiper-slide>
                <ion-card class="cardSup">
                    <ion-img class="imgCarrosel"
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle class="cardBot">RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
            <swiper-slide>
                <ion-card class="cardSup">
                    <ion-img class="imgCarrosel"
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle class="cardBot">RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
            <swiper-slide>
                <ion-card class="cardSup">
                    <ion-img class="imgCarrosel"
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle class="cardBot">RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
            <swiper-slide>
                <ion-card class="cardSup">
                    <ion-img class="imgCarrosel"
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">

                    </ion-img>
                    <ion-card-subtitle class="cardBot">RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>


        </swiper>

        <ion-searchbar class="seach"> <ion-searchbar event="text"></ion-searchbar></ion-searchbar>

       


        <ion-grid class="grid">

            <ion-row class="linha">
               
                <ion-col style="background-color:#2F80ED;" class="coluna" size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">

                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-card-title class="textTileGrid">PRAÇA DO MARCO ZERO</ion-card-title>
                        <ion-card-subtitle class="textSubtitleGrid">Praça</ion-card-subtitle>
                    </ion-card>
                </ion-col>
            </ion-row>

            <ion-row class="linha">
                <ion-col style="background-color:#2F80ED;" class="coluna" size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">

                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-card-title class="textTileGrid">PRAÇA DO MARCO ZERO</ion-card-title>
                        <ion-card-subtitle class="textSubtitleGrid">Praça</ion-card-subtitle>
                    </ion-card>
                </ion-col>
            </ion-row>

            <ion-row class="linha">
                <ion-col style="background-color:#2F80ED;" class="coluna" size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">

                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-card-title class="textTileGrid">PRAÇA DO MARCO ZERO</ion-card-title>
                        <ion-card-subtitle class="textSubtitleGrid">Praça</ion-card-subtitle>
                    </ion-card>
                </ion-col>
            </ion-row>

            <ion-row class="linha">
                <ion-col  class="linha4" onclick="console.log('direcionar para tela desejada')" style="background-color:#2F80ED;"  size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">

                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col class="linha4" onclick="console.log('direcionar para tela desejada')" size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card  style="background-color:#2F80ED;" >
                        <ion-card-title class="textTileGrid">PRAÇA DO MARCO ZERO</ion-card-title>
                        <ion-card-subtitle class="textSubtitleGrid">Praça</ion-card-subtitle>
                    </ion-card>
                </ion-col>

                <ion-col  style="background-color:#2F80ED;" size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">

                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-card-title class="textTileGrid">PRAÇA DO MARCO ZERO</ion-card-title>
                        <ion-card-subtitle class="textSubtitleGrid">Praça</ion-card-subtitle>
                    </ion-card>
                </ion-col>
            </ion-row>

        </ion-grid>
     
    </ion-content>

    RUAS E ETC
</template>


  <script lang="ts">



import { defineComponent } from "vue";
import { IonImg, IonContent, IonHeader, IonToolbar, IonMenuButton, IonTitle, IonCard,IonSearchbar,IonList } from "@ionic/vue";
import { Swiper, SwiperSlide } from "swiper/vue";

import "swiper/css";
import "swiper/css/pagination";
import "swiper/css/navigation";


import { IonCol, IonGrid, IonRow } from '@ionic/vue';

//import "./style.css";

import { Pagination, Navigation } from "swiper";






export default defineComponent({
    name: "PlacesPage",
    components: {
        IonImg, IonHeader, IonToolbar, IonMenuButton, IonContent, Swiper,
        SwiperSlide, IonCol, IonGrid, IonRow, IonTitle, IonCard,IonSearchbar,
    },
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
.ion-padding {
    background-color: #f8fafe;
    text-emphasis-color: #f8fafe;
}

ion-content {
    --background: #2F80ED;
}

ion-card {
    --background-color: #2F80ED;
}

ion-toolbar {
    --background: #2f80ed;

}

swiper-slide {
    box-sizing: border-box;

    position: relative;


    background-color: #E78500;
    border: 5px solid #E78500;
}


.toolbar {
    padding-bottom: 30px;
    padding-top: 30px;
}

.imgGrid {

    box-sizing: border-box;
    border: 3px solid #DB870F;
    border-radius: 13px;
    width: 75px;
    height: 75px;

    background: rgba(0, 0, 0, 0.2);


    /* Inside auto layout */

    flex: none;
    order: 0;
    flex-grow: 0;
}

.imgCarrosel {
    box-sizing: border-box;
    border: 5px solid #DB870F;
    border-radius: 5px;
}

.cardSup {

    background-color: #2F80ED
}

.seach {
    margin-top: 1%;

    color: hsl(0, 0%, 100%);
    margin-bottom: 1px;
    padding: 0%;


    margin-left: 5%;
    margin-right: 5%;

    width: 90%;


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

ion-col {
    background-color: #525e04;
    border: solid 1px #2F80ED;
    padding: 2px;

    text-align: center;

    margin-top: 10%;

    box-sizing: border-box;

    width: 74px;
    height: 74px;
}
</style>