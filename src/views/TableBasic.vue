<template>
  <b-table
    responsive
    :items="items"
    :fields="fields"
    class="mb-0"
  >
    <template #cell(Phone)="data">
      <span class="text-nowrap">
        {{ data.value }}
      </span>
    </template>

    <!-- Optional default data cell scoped slot -->
    <template #cell()="data">
      {{ data.value }}
    </template>
  </b-table>
</template>

<script>
import { BTable } from 'bootstrap-vue'

export default {
  components: {
    BTable,
  },
  data() {
    return {
      fields: [
        'id',
        'No_Expediente_Registro',
        'No_Permiso',
        'No_Expediente_de_Verificación',
        'Empresa_Persona_Física',
        'Tipo_Notificación',
        'Fecha_Publicación',
        'Fecha_Proveido',
        'Descarga',
        {
          key: 'Descarga', label: 'Descarga',
        },
        // eslint-disable-next-line indent
        ],
      items: [
        {
          id: '1',
          No_Expediente_Registro: '4554-17',
          No_Permiso: 'AUT-33-17-I',
          No_Expediente_de_Verificación: 'DGSPyCI/VVO/1708/2019',
          Empresa_Persona_Física: 'SEGURIDAD PRIVADA, INTELIGENCIA CIBERNETICA, S.A. DE C.V',
          Tipo_Notificación: 'Citatorio',
          Fecha_Publicación: '25-11-2019',
          Fecha_Proveido: '2019-11-25',
          Descarga: '',
        },
        {
          id: '2',
          No_Expediente_Registro: '4554-17',
          No_Permiso: 'AUT-33-17-I',
          No_Expediente_de_Verificación: 'DGSPyCI/VVO/1708/2019',
          Empresa_Persona_Física: 'SEGURIDAD PRIVADA, INTELIGENCIA CIBERNETICA, S.A. DE C.V',
          Tipo_Notificación: 'Citatorio',
          Fecha_Publicación: '25-11-2019',
          Fecha_Proveido: '2019-11-25',
          Descarga: '',
        },
        {
          id: '3',
          No_Expediente_Registro: '4554-17',
          No_Permiso: 'AUT-33-17-I',
          No_Expediente_de_Verificación: 'DGSPyCI/VVO/1708/2019',
          Empresa_Persona_Física: 'SEGURIDAD PRIVADA, INTELIGENCIA CIBERNETICA, S.A. DE C.V',
          Tipo_Notificación: 'Citatorio',
          Fecha_Publicación: '25-11-2019',
          Fecha_Proveido: '2019-11-25',
          Descarga: '',
        },
        {
          id: '4',
          No_Expediente_Registro: '4554-17',
          No_Permiso: 'AUT-33-17-I',
          No_Expediente_de_Verificación: 'DGSPyCI/VVO/1708/2019',
          Empresa_Persona_Física: 'SEGURIDAD PRIVADA, INTELIGENCIA CIBERNETICA, S.A. DE C.V',
          Tipo_Notificación: 'Citatorio',
          Fecha_Publicación: '25-11-2019',
          Fecha_Proveido: '2019-11-25',
          Descarga: '',
        },
        {
          id: '5',
          No_Expediente_Registro: '4554-17',
          No_Permiso: 'AUT-33-17-I',
          No_Expediente_de_Verificación: 'DGSPyCI/VVO/1708/2019',
          Empresa_Persona_Física: 'SEGURIDAD PRIVADA, INTELIGENCIA CIBERNETICA, S.A. DE C.V',
          Tipo_Notificación: 'Citatorio',
          Fecha_Publicación: '25-11-2019',
          Fecha_Proveido: '2019-11-25',
          Descarga: '',
        },
      ],
    }
  },
}
</script>
