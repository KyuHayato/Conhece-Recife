<template>
  <ion-page>
    <ion-content :fullscreen="true">
      <div id="container" class="style-borders-externals">
        <div class="style-internal">
          <ion-img
            src="../../assets/Conhece-recife.svg"
            style="
              width: 140px;
              height: 151px;
              padding-bottom: 20px;
              display: block;
              margin: 0px auto;
            "
          ></ion-img>
          <ion-button href="/menu/"> Vem conhecer! </ion-button>
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
.style-internal {
  background: white;
  padding-bottom: 2rem;
  padding-top: 2rem;
}
.style-borders-externals {
  border-bottom: 20px solid #e78500;
  border-top: 20px solid #e78500;
  border-radius: 1.5rem;
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
