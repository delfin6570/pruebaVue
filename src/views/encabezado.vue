<template>
  <b-row>
    <b-col>
      <b-img
        :src="require('@/imagenes/images.png')"
        alt="Image 1"
        :height="40"
      />
      <b-img
        :src="require('@/imagenes/index.jpeg')"
        alt="Image 1"
        :height="40"
      />
      <a href="#">Seguridad Privada</a>
      <a href="#">Buzón de quejas</a>
      <a href="#">Estrado Electrónico</a>
    </b-col>
  </b-row>
</template>
<script>

import { BImg } from 'bootstrap-vue'

export default {
  components: {
    BImg,
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
    .delfin{
        font-size: 30px;
    }
    .Buzón{
        font-size: 30px;
    }
</style>
