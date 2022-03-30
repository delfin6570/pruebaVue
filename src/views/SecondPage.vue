<template>
  <div>
    <encabezado />
    <buzon />
    <formulario />
    <pie-pagina />
  </div>
</template>

<script>

import encabezado from './encabezado.vue'
import buzon from './buzon.vue'
import formulario from './formulario.vue'
import piePagina from './piePagina.vue'

export default {
  components: {
    piePagina,
    formulario,
    buzon,
    encabezado,
    // BIcon,
    // BNnavbar,
    // BAlert,
    // BContainer,

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
