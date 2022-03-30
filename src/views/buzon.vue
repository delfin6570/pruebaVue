<template>
  <div class="buzon">
    <div class="titulo"> Buzón de quejas </div>
    <div>
      <b-img
        :src="require('@/imagenes/title-background.svg')"
        alt="Image 1"
        :height="39"
        align-h:left
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
    .buzon{
        border-radius: 15px;
        background: #235B4E;
    }
    .titulo {
        float: left;
        padding: 40px;
        font-weight: bold;
        font-size:35px;
        color: #BC955C;
    }
</style>
