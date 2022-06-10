<template >


    <ion-header>

        <ion-toolbar class="toolbar">
            <ion-menu-button slot="start"></ion-menu-button>
            <ion-title class="textToolbar">
                Nossos Parceiros
            </ion-title>
        </ion-toolbar>
    </ion-header>

    <ion-content>

        <ion-grid class="grid">

            <ion-row class="linha">
               
                <ion-col style="background-color:#2F80ED;" class="coluna" size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="https://gkpb.com.br/wp-content/uploads/2021/01/novo-logo-burger-king-2021.png">
                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card style="background-color:#2F80ED;">
                        <a href="https://www.burgerking.com.br/" target="_blank">
                            <ion-card-title class="textTileGrid">Burguer King</ion-card-title>
                            <ion-card-subtitle class="textSubtitleGrid">Lanchonete</ion-card-subtitle>
                        </a>
                    </ion-card>
                </ion-col>

            </ion-row>

            <ion-row class="linha">
               
                <ion-col style="background-color:#2F80ED;" class="coluna" size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="data:image/png;base64,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">
                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card style="background-color:#2F80ED;">
                        <a href="https://www.subway.com.br/" target="_blank">
                            <ion-card-title class="textTileGrid">Subway</ion-card-title>
                            <ion-card-subtitle class="textSubtitleGrid">Lanchonete</ion-card-subtitle>
                        </a>
                    </ion-card>
                </ion-col>

            </ion-row>

            <ion-row class="linha">
               
                <ion-col style="background-color:#2F80ED;" class="coluna" size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="https://upload.wikimedia.org/wikipedia/commons/a/a6/Grand_Mercure_Logo_2015.png">
                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card style="background-color:#2F80ED;">
                        <a href="https://www.grandmercure.com/pt-br/" target="_blank">
                            <ion-card-title class="textTileGrid">Grand Mercure Hotel</ion-card-title>
                            <ion-card-subtitle class="textSubtitleGrid">Hotel</ion-card-subtitle>
                        </a>
                    </ion-card>
                </ion-col>

            </ion-row>

            <ion-row class="linha">
               
                <ion-col style="background-color:#2F80ED;" class="coluna" size="4">
                    <ion-card style="background-color:#2F80ED;">
                        <ion-img class="imgGrid"
                            src="https://cineplaneta.com.br/wp-content/uploads/2019/08/cinepolis-novalogo.png">
                        </ion-img>
                    </ion-card>
                </ion-col>

                <ion-col size="8" style="background-color:#2F80ED; padding-left:0;margin-left: 0;">
                    <ion-card style="background-color:#2F80ED;">
                        <a href="https://www.cinepolis.com/" target="_blank">
                            <ion-card-title class="textTileGrid">Cinépolis</ion-card-title>
                            <ion-card-subtitle class="textSubtitleGrid">Cinema</ion-card-subtitle>
                        </a>
                    </ion-card>
                </ion-col>

            </ion-row>

        </ion-grid>
     
    </ion-content>

</template>


<script lang="ts">

import { defineComponent } from "vue";
import { IonImg, IonContent, IonHeader, IonToolbar, IonMenuButton, IonTitle, IonCard,IonSearchbar,IonList } from "@ionic/vue";
import { IonCol, IonGrid, IonRow } from '@ionic/vue';

//import "./style.css";

import { Pagination, Navigation } from "swiper";


export default defineComponent({
    name: "PlacesPage",
    components: {
        IonImg, IonHeader, IonToolbar, IonMenuButton, IonContent, IonCol, IonGrid, IonRow, IonTitle, IonCard },
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
    text-align: center;
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