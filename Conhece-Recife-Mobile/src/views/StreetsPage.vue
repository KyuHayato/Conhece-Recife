<template >
    <ion-header>
        <ion-toolbar color="primary">
            <ion-menu-button slot="start"></ion-menu-button>
            <ion-title class="ion-padding">
                Locais mais procurados
            </ion-title>
        </ion-toolbar>
    </ion-header>

    <ion-content >
        
        <swiper :slidesPerView="2" :spaceBetween="0" :slidesPerGroup="2" :loop="true" :loopFillGroupWithBlank="true"
            :pagination="{
                clickable: true,
            }" :navigation="true" :modules="modules" class="mySwiper">
            <swiper-slide>
                <ion-card>
                    <ion-img
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle>RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
            <swiper-slide>
                <ion-card>
                    <ion-img
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle>RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
            <swiper-slide>
                <ion-card>
                    <ion-img
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle>RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
               <swiper-slide>
                <ion-card>
                    <ion-img
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle>RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
               <swiper-slide>
                <ion-card>
                    <ion-img
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                    </ion-img>
                    <ion-card-subtitle>RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>
              <swiper-slide>
                <ion-card>
                    <ion-img
                        src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
                       
                    </ion-img>
                     <ion-card-subtitle>RECIFE ANTIGO</ion-card-subtitle>
                </ion-card>
            </swiper-slide>

            
        </swiper>


    </ion-content>

    RUAS E ETC
</template>

  <script lang="ts">
import { defineComponent } from "vue";
import { IonImg, IonContent, IonHeader, IonToolbar, IonMenuButton } from "@ionic/vue";
import { Swiper, SwiperSlide } from "swiper/vue";

import "swiper/css";
import "swiper/css/pagination";
import "swiper/css/navigation";
//import "./style.css";

import { Pagination, Navigation } from "swiper";


export default defineComponent({
    name: "PlacesPage",
    components: {
        IonImg, IonHeader, IonToolbar, IonMenuButton, IonContent, Swiper,
        SwiperSlide,
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
ion-content {
  --background: #2F80ED;
}
ion-toolbar{
  --background: #2f80ed;
}
swiper-slide{
    box-sizing: border-box;

position: relative;


background-color: #E78500;
border: 5px solid #E78500;
}
</style>