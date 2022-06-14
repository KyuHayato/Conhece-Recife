<template>
  <ion-page>
    <ion-content :fullscreen="true">
      <ion-grid class="center">
        <ion-row>
          <ion-col>
            <ion-label position="stacked" class="font-style"
              >Nome completo</ion-label
            >
            <ion-input class="input-style"></ion-input>
          </ion-col>

          <ion-col>
            <ion-label position="stacked" class="font-style">Email</ion-label>
            <ion-input class="input-style"></ion-input>
          </ion-col>

          <ion-col>
            <ion-label position="stacked" class="font-style"
              >Telefone</ion-label
            >
            <ion-input class="input-style"></ion-input>
          </ion-col>

          <ion-col>
            <ion-label position="stacked" class="font-style">Assunto</ion-label>
            <ion-input class="input-style"></ion-input>
          </ion-col>

          <ion-col>
            <ion-label position="stacked" class="font-style"
              >Textarea</ion-label
            >
            <ion-textarea
              class="input-style"
              style="width: 309px; height: 210px"
            ></ion-textarea>
          </ion-col>

          <ion-col class="center">
            <ion-button size="small" class="button-style"> Enviar </ion-button>
          </ion-col>
          
        </ion-row>
      </ion-grid>
    </ion-content>
  </ion-page>
</template>

<script lang="ts">
import {
  IonContent,
  IonLabel,
  IonInput,
  IonCol,
  IonGrid,
  IonRow,
  IonButton,
} from "@ionic/vue";
import { defineComponent } from "vue";

export default defineComponent({
  name: "ContactPage",
  components: {
    IonContent,
    IonLabel,
    IonInput,
    IonCol,
    IonGrid,
    IonRow,
    IonButton,
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

ion-button {
  --background: #e78500;
}
.center {
  display: flex;
  justify-content: center;
  align-content: center;
  align-items: center;
  width: 50%;
}
.input-style {
  border: 1px solid #ffffff;
  border-radius: 10px;
  background: #2f80ed;
  width: 309px;
  height: 40px;
  margin-bottom: 14px;
}
.font-style {
  font-family: Nunito;
  font-size: 14px;
  font-weight: 400;
  line-height: 19px;
  letter-spacing: 0em;
  text-align: left;
  color: #ffffff;
}
.button-style {
  width: 81px;
  height: 32px;
  --padding-bottom: 8px;
  --padding-end: 12px;
  --padding-start: 12px;
  --padding-top: 8px;
  gap: 10px;
  --border-radius: 16px;
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
