<template>
  <div>
    <header2 />
  </div>
</template>

<script>
import Header2 from './Header2.vue'

export default {
  components: {
    Header2,
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
.Buzón{
  font-size: 30px;

  }

}

</style>
