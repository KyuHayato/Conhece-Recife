<template>
  <ion-page>
    <ion-content :fullscreen="true">
      <div id="container">
        <div>
          <ion-img src="../../assets/Conhece-recife.svg" style="width: 201px; height: 210px; padding-bottom: 20px;"></ion-img>
          <ion-button> Vem conhecer! </ion-button>
        </div>
      </div>
    </ion-content>
  </ion-page>
</template>

<script lang="ts">
import { IonContent, IonButton, IonImg } from "@ionic/vue";
import { defineComponent } from "vue";

export default defineComponent({
  name: "HomePage",
  components: {
    IonContent,
    IonButton,
    IonImg,
  },
  data: function () {
    return {
      teste: "@/Conhece-Recife-Logo.svg",
    };
  },
});
</script>

<style scoped>
ion-page {
  --ion-background-color: #2f80ed;
}
ion-button {
  --background: #e78500;
}

#container {
  text-align: center;
  position: absolute;
  left: 0;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
}

#container strong {
  font-size: 20px;
  line-height: 26px;
}

#container p {
  font-size: 16px;
  line-height: 22px;

  color: #8c8c8c;

  margin: 0;
}

#container a {
  text-decoration: none;
}
</style>
