<template>
  <div
    class="buzon mb-2"
    style="background-image: url('@/imagenes/title-background.svg')"
  >
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
.buzon {
  border-radius: 15px;
  background: #235b4e;
  width: 92%;
  height: 100%;
  margin-left: 4%;
  background-size: 2000px;
  object-fit: containt;
}
.titulo {
  float: left;
  padding: 40px;
  font-weight: bold;
  font-size: 35px;
  color: #bc955c;
}
.imagen {
  background-size: 2000px;
  border-radius: 15px;
  margin-left: 10%;
}
</style>
