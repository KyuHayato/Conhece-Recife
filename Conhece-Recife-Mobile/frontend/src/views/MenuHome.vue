<template>
  <ion-page>
    <ion-content :fullscreen="true">
      <div id="container">
        <div>
          <ion-img
            src="../../assets/Conhece-recife.svg"
            style="
              width: 135px;
              height: 143px;
              padding-bottom: 20px;
              display: block;
              margin: 0px auto;
            "
          ></ion-img>
          <div>
            <ion-row>
              <ion-col size="12">
                <ion-button
                  size="large"
                  href="/menu/places/"
                  class="button-style"
                >
                  Lugares
                </ion-button>
              </ion-col>
              <ion-col size="12">
                <ion-button
                  size="large"
                  href="/menu/streets"
                  class="button-style"
                >
                  Ruas, etc.
                </ion-button>
              </ion-col>
              <ion-col size="12">
                <ion-button
                  size="large"
                  href="/menu/contacts"
                  class="button-style"
                >
                  Contato
                </ion-button>
              </ion-col>
              <ion-col size="12">
                <ion-button
                  size="large"
                  href="/menu/partners"
                  class="button-style"
                >
                  Parceiros
                </ion-button>
              </ion-col>
              <ion-col size="12">
                <ion-button
                  size="large"
                  href="/menu/whopage"
                  class="button-style"
                >
                  Quem somos
                </ion-button>
              </ion-col>
            </ion-row>
          </div>
        </div>
      </div>
    </ion-content>
  </ion-page>
</template>

<script lang="ts">
import { IonContent, IonButton, IonImg } from "@ionic/vue";
import { defineComponent } from "vue";

export default defineComponent({
  name: "MenuPage",
  components: {
    IonContent,
    IonButton,
    IonImg,
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
.button-style {
  width: 329.51px;
  height: 78px;
  border-radius: 15px;
  border: 2px solid #e78500;
  box-shadow: 0px 4px 4px 0px #00000040;
  filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
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
