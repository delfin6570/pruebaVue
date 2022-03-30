<template>
  <div class="p-3 mb-2 bg-success   color = red">
    <h1>Buzón de quejas</h1>
    <b-img
      :src="require('@/imagenes/title-background.svg')"
      alt="Image 1"
      :height="53"
      align-h:left
      class="buzon"
    />
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
    .Buzón{
        margin-top: 60px;
    }
</style>
