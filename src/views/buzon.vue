<template>
  <div class="buzon mb-2">
    <div class="titulo">
      Buzón de quejas
    </div>
    <div class="contenedor">
      <b-img
        :src="require('@/imagenes/title-background.svg')"
        alt="Image 1"
        :height="39"
        class="buzon"
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
        width: 100%;
        height: 100%;
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
</style>
