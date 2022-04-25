<template>
  <div class="buzon mb-2">
    <div class="titulo">
      Buzón de quejas
    </div>
    <div class="contenedor">
      <b-img
        :src="require('@/imagenes/title-background.svg')"
        alt="Image 1"
        :height="35.9"
        class="imagen"
      />
    </div>
  </div>
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
    .contenedor {
      width: auto;
      height: auto;
    }
    .buzon{
        border-radius: 15px;
        background: #235B4E;
        width: 92%;
        height: 100px;
        margin-left: 4%;
        // width: -moz-available;
        object-fit: containt;
    }
    .titulo {
        float: left;
        padding: 40px;
        font-weight: bold;
        font-size:35px;
        color: #BC955C;
    }
    .imagen{margin-top: 3%;
      border-radius: 15px;
      margin-left: 1%;
    }
</style>
