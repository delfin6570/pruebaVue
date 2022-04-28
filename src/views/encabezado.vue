<template>
  <div class="espacio">
    <b-container class="escudo">
      <b-row align-h="between margen">
        <b-col cols="9">
          <b-img
            :src="require('@/assets/ssc1.png')"
            alt="Image 1"
            :height="50"
            :width="300"
            :margin="300"
          />
        </b-col>
        <b-col class="3">
          <b-row align-h="end">
            <b-col cols="4">
              <div class="texto textoE">
                Seguridad Privada
              </div>
            </b-col>
            <b-col cols="5">
              <div class="texto textoE">
                Estrado Electrónico
              </div>
            </b-col>
          </b-row>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>
<script>
import { BImg, BCol, BRow } from 'bootstrap-vue'

export default {
  components: {
    BImg,
    BCol,
    BRow,
  },

  data() {
    return {
      status: null,
      file: null,
      userEmail: null,
      footer: null,
    }
  },
}
</script>

<style lang="scss" scoped>
  .margen {
    margin-left: 80px;
    margin-right: 80px;
  }

  .texto:hover {
    border-bottom: 3px solid #235b4e;
    color: #235b4e;
  }.textoE {
    color: gray;
  }
  .espacio{
    margin-bottom: 30px;
    margin-top: 25px;
  }
</style>
