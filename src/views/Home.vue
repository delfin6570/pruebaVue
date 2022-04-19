<template>
  <div>
    <b-card title="">
      <b-card-title />
      <b-card-text />
      <table-basic />
      <secon-page />
      <b-form-datepicker />
    </b-card></div>
</template>

<script>
import { BCard, BCardTitle } from 'bootstrap-vue'
import TableBasic from './TableBasic.vue'

export default {
  components: {
    BCard,
    BCardTitle,
    TableBasic,
  },
}
</script>

<style>

</style>
