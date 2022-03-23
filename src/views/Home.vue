<template>
  <div>
    <b-card title="Sistema de Seguridad Privada ">
      <b-card title="Estrado Electrònico Buzòn de Quejas">

        <table-basic />
      </b-card>
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
