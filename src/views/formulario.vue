<template>
  <b-form-group>
    <b-card>
      <label
        class="delfin"
      >Llene todos los campos para levantar una queja a una Empresa de
        Seguridad Privada</label>

      <ValidationObserver tag="form">
        <ValidationProvider
          v-slot="{ errors }"
          rules="required"
        >
          <label>Nombre</label>
          <b-form-input
            id="nombre"
            v-model="form.nombre"
            aria-describedby="input-1-live-feedback"
            placeholder="Introduce tu nombre aqui"
          />
          <!-- <input v-model="value" type="text"> -->
          {{ errors[0] }}
          <span id="error">{{ errors[0] }}</span>
        </ValidationProvider>

        <!-- nombre -->
        <b-row> <b-col md="6" /></b-row>
        <!-- nombre -->
        <ValidationProvider>
          <label>Correo electrónico o teléfono</label>
          <b-form-group
            id="example-input-group-1"
            label-for="example-input-1"
          >
            <b-form-input
              id="correoElectronico"
              v-model="form.correoElectronico"
              type="text"
              lazy-rules
              no-error-icon:rules="[
            val =
          > val && val.length > 0 || 'Este campo es obligatorio', isValidEmail]"
              placeholder="Introduce tu método de contacto"
            />
          </b-form-group>
        </ValidationProvider>
      </ValidationObserver>
      <b-row>
        <!-- nombre -->
        <b-col md="12">
          <label>Descripción de los hechos</label>
          <b-form-input
            v-model="form.descripcióndelosHechos"
            aria-describedby="input-1-live-feedback"
            placeholder="Selecciona un documento y arrastra aqui..."
          />
        </b-col>
      </b-row>
      <b-row>
        <b-col md="12">
          <div>
            <label
              class="apartado"
            >Apartado para adjuntar pruebas (fotos, documentos, etc)</label>
            <!-- Styled -->
            <b-form-file
              v-model="form.apartadoparaAdjuntarPruebas"
              browse-text="Buscar"
              placeholder="Selecciona un documento y arrastra aqui..."
              accept=".jpg, .png, .gif, .pdf, .docx"
            />
          </div>
        </b-col>
      </b-row>
      <b-row>
        <b-col md="12">
          <label>Lugar de los hechos</label>
          <!-- nombre -->
          <b-form-input
            v-model="form.lugarDeloshechos"
            type="text"
            aria-describedby="input-1-live-feedback"
            placeholder="Introduce el lugar de los hechos"
          />
        </b-col>
      </b-row>
      <b-row>
        <b-col md="4">
          <label>Nombre de la empresa de seguridad privada</label>
          <!-- nombre -->
          <b-form-input
            v-model="form.nombreEmpresa"

            type="text"
            aria-describedby="input-1-live-feedback"
            placeholder="Empresa de Seguridad Privada"
          />
        </b-col>
        <b-col md="4">
          <!-- nombre -->
          <label>Fecha</label>
          <b-form-datepicker
            id="example-datepicker"
            v-model="form.fecha"
            label-calendar="Use las teclas del cursor para navegar por las fechas del calendario"
            class="mb-2"
          />
        </b-col>
        <b-col md="4">
          <!-- nombre -->
          <label>Croquis de la oficina o lugar donde ocurrieron los hechos)</label>
          <b-col md="6" />
          <!-- Styled -->
          <b-form-file
            v-model="form.croquisOficina"
            browse-text="Buscar"
            placeholder="Selecciona un documento y arrastra aqui..."
            accept=".jpg, .png, .gif, .pdf, .docx"
          />
        </b-col> </b-row><br>
      <b-row align-h="center">
        <b-button
          class="buzon"
          variant="outline-danger"
          align-h="center"
        >Consulta de aviso de privacidad
        </b-button>
      </b-row>
      <br>
      <b-row align-h="center">
        <b-col md="mt-3">
          <b-form-checkbox
            v-model="status"
            name="checkbox-1"
            value="accepted"
          >Acepto de aviso de privacidad
          </b-form-checkbox>
          <div class="mt-3 mr-4 ml-3">
            <b-row align-h="center">
              <b-col md="6" />
              <b-button
                class="boton"
                variant="success"
                align-h="center"
                @click="enviar"
              >
                Enviar</b-button>
            </b-row>
          </div>
        </b-col>
      </b-row>
    </b-card></b-form-group>
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
  // BFormdatepicker,
  // BIcon,
  // BNnavbar,
  // BAlert,
  // BContainer,
} from 'bootstrap-vue'
import { ValidationObserver, ValidationProvider } from 'vee-validate'
import axios from 'axios'

export default {
  components: {
    ValidationObserver,
    ValidationProvider,
    BCard,
    BFormInput,
    BFormGroup,
    BFormCheckbox,
    BCol,
    BRow,
    BFormFile,
    BButton,
    // BFormdatepicker,
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
      value: null,
      nombre: null,
      submite: false,
      form: {
        nombre: '',
        correoElectronico: '',
        descrincionHechos: '',
        apartadoAdjuntarPruebas: '',
        lugarHechos: '',
        nombreEmpresa: '',
        fecha: '',
        croquisOficina: '',
        value: '',
      },
    }
  },

  computed: {
    comprobar() {
      return this.form.nombre.length < 2
    },
    comprobarCorreo() {
      return this.form.correoElectronico.length < 2
    },
    comprobarDescripcion() {
      return this.form.descripcionHechos.length < 2
    },
    comprobarLugar() {
      return this.form.lugarHechos.length < 2
    },
    comprobarnombreEmpresa() {
      return this.form.nombreEmpresa.length < 2
    },
  },
  methods: {
    enviar() {
      console.log(this.form.nombre)
      console.log('hola Mundo')
      axios
        .post('http://10.13.123.94:8010/api/v1/prueba', this.form)
        .then(response => {
          console.log(response)
        })
        .catch(error => {
          console.log(error)
        })
    },
    getValidationState({ dirty, validated, valid = null }) {
      return dirty || validated ? valid : null
    },
  },
}
</script>

<style lang="scss" scoped>
.boton {
  background: #235b4e !important;
  font-weight: bolder;
}

.buzon {
  font-weight: bolder;
}
</style>
