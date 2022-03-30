<template>
  <div>
    <b-card title="">
      <b-card-title />
      <b-card-text />
      <table-basic />
      <secon-page />
    </b-card></div>
</template>

<script>
import { BCard } from 'bootstrap-vue'
import TableBasic from './TableBasic.vue'

export default {
  components: {
    BCard,
    TableBasic,
  },
}
</script>

<style>

</style>
