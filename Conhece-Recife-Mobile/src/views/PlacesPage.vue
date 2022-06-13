<template >

  <ion-header >

    <ion-toolbar >

      <ion-title class="ion-padding" style="color: white">

        CONHECE RECIFE
      </ion-title>

    </ion-toolbar>

  </ion-header>

  <ion-content class="ion-padding">
    <ion-card style="padding-right: 200em; margin-right: 450em;margin-left: -2em;">

      <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3950.3700288383325!2d-34.87360428255612!3d-8.063686799999985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab18a4f3bd7793%3A0xd0de7507a3825e4c!2sSeu%20Boteco!5e0!3m2!1spt-BR!2sbr!4v1653182731544!5m2!1spt-BR!2sbr"
        width="450" height="450" style="border:0;" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </ion-card>




    <ion-row class="ion-padding-top" style="margin-top: 1em; ">

      <ion-col size="12" style="position: relative; height: 10em; ">
        <ion-card size="6" style="background-color:#2f80ed ;">
          <ion-img style="height: 10em; width:23em; size:40px; background-color:#2f80ed; "
            src="https://lh5.googleusercontent.com/p/AF1QipOHfj-37L7-wIIBAzGHLocH96ohUAC2AcVTDRJ1=w256-h240-p-k-no">
          </ion-img>
        </ion-card>
      </ion-col>

      <ion-col>
        <ion-card size="12" style="background-color:#2f80ed;">
          <ion-card-header style="
            
            background: #ffffff;
             ">
            <ion-card-title style="
            
            color: #000000; text-align: center;
             " >Seu Boteco</ion-card-title>
            <ion-card-subtitle style=" 
            
            color: #000000; text-align: center;
             "> Seu Boteco- drinkks
              bebida
            </ion-card-subtitle>
          </ion-card-header>
        </ion-card>
      </ion-col>

    </ion-row>


  </ion-content>


</template>



  <script lang="ts">
import { defineComponent } from "vue";
import { IonImg, IonContent, IonHeader, IonToolbar } from "@ionic/vue";

export default defineComponent({
  name: "PlacesPage",
  components: {
    IonImg, IonContent, IonHeader, IonToolbar

  },
  data: function () {
    return {};
  },
  methods: {},
});
</script>

<style scoped>
ion-content {
  --background: #2f80ed;
}

ion-toolbar {
  --background: #2f80ed;
}
</style>