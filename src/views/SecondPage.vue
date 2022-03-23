<template>

  <b-card
    title="Llene todos los campos para levantar una queja a una Empresa de Seguridad Privada"
  >
    <b-form-group>
      <b-row>
        <b-col md="6">
          <!-- nombre -->
          <label>Nombre</label>
          <b-form-input
            v-model="userEmail"
            placeholder="Introduce tu nombre aqui"
          />
        </b-col>
        <b-col md="6">
          <!-- nombre -->
          <label>Correo electrónico o teléfono</label>
          <b-form-input
            v-model="userEmail"
            placeholder="Introduce tu método de contacto"
          />
        </b-col>
      </b-row>
      <label>Descripción de los hechos</label>
      <b-col md="12">
        <!-- nombre -->
        <b-form-input
          v-model="userEmail"
          placeholder="Selecciona un documento y arrastra aqui..."
        />
      </b-col>
      <div>
        <label>Apartado para adjuntar pruebas (fotos, documentos, etc)</label>
        <!-- Styled -->
        <b-form-file
          v-model="file"
          placeholder="Selecciona un documento y arrastra aqui..."
        />
      </div>
      <b-row>
        <label>Lugar de los hechos</label>
        <b-col md="12">
          <!-- nombre -->
          <b-form-input
            v-model="userEmail"
            placeholder="Introduce el lugar de los hechos"
          />
        </b-col>
      </b-row>
      <b-row>
        <b-col md="4">
          <label>Nombre de la empresa de seguridad privada</label>
          <!-- nombre -->
          <b-form-input
            v-model="userEmail"
            placeholder="Introduce tu método de contacto"
          />
        </b-col>
        <b-col md="4">
          <!-- nombre -->
          <label>Fecha</label>
          <b-form-input v-model="userEmail" />
        </b-col>
        <b-col md="4">
          <!-- nombre -->
          <div>
            <label>Croquis de la oficina o lugar dobde ocurrieron los hechos)</label>
            <b-col md="6" />
            <!-- Styled -->
            <b-form-file
              v-model="file"
              placeholder="Selecciona un documento y arrastra aqui..."
            />
          </div>
        </b-col>
      </b-row>
      <b-row align-h="center">
        <b-col md="4 mt-3">
          <b-butto>Consulta el aviso de privacidad
            <b-form-checkbox
              id="checkbox-1"
              v-model="status"
              name="checkbox-1"
              value="accepted"
            >Acepto de aviso de privacidad
            </b-form-checkbox>
            <div class="mt-3 mr-4 ml-3">
              <b-button
                variant="success"
              >Enviar <b-row align-h="center">
                <b-col md="6" />
              </b-row></b-button>
            </div> </b-butto></b-col>
      </b-row>
    </b-form-group>
  </b-card>
</template>

<script>
import {
  BCard,
  BFormInput,
  BFormGroup,
  BFormCheckbox,
  BCol,
  BRow,
  BFormFile,
  BButton,
} from 'bootstrap-vue'

export default {
  components: {
    BCard,
    BFormInput,
    BFormGroup,
    BFormCheckbox,
    BCol,
    BRow,
    BFormFile,
    BButton,
  },

  data() {
    return {
      file: null,
      userEmail: null,
    }
  },
}
</script>

<style lang="scss">
</style>
