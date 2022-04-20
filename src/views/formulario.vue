<template>
  <b-form-group>
    <b-card>
      <label
        class="delfin"
      >Llene todos los campos para levantar una queja a una Empresa de
        Seguridad Privada</label>

      <div>
        <validation-observer
          ref="observer"
          v-slot="{ handleSubmit }"
        >
          <b-form @submit.stop.prevent="handleSubmit(onSubmit)">
            <validation-provider

              v-slot="validationContext"
              name="Nombre"
              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="example-input-group-1"
                label="Nombre"
                label-for="example-input-1"
              >
                <b-form-input
                  id="example-input-1"
                  v-model="form.Nombre"
                  name="example-input-1"
                  :state="getValidationState(validationContext)"
                  aria-describedby="input-1-live-feedback"
                  placeholder="Introduce tu nombre aqui"
                />

                <b-form-invalid-feedback id="input-1-live-feedback">{{
                  validationContext.errors[0]
                }}</b-form-invalid-feedback>
              </b-form-group>
            </validation-provider>
            <validation-provider
              v-slot="validationContext"
              name="Correo electrónico o teléfono"
              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="example-input-group-1"
                label="Correo electrónico o teléfono"
                label-for="example-input-1"
              >
                <b-form-input
                  id="example-input-1"
                  v-model="form.CorreoElectronico"
                  name="example-input-1"
                  :state="getValidationState(validationContext)"
                  aria-describedby="input-1-live-feedback"
                  placeholder="Introduce tu método de contacto"
                />

                <b-form-invalid-feedback id="input-1-live-feedback">{{
                  validationContext.errors[0]
                }}</b-form-invalid-feedback>
              </b-form-group>
            </validation-provider>
            <validation-provider
              v-slot="validationContext"
              name="Descripción de los hechos"
              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="example-input-group-1"
                label="Descripción de los hechos"
                label-for="example-input-1"
              >
                <b-form-input
                  id="example-input-1"
                  v-model="form.descripcionHechos"
                  name="descripcionHechos"
                  :state="getValidationState(validationContext)"
                  aria-describedby="input-1-live-feedback"
                  placeholder="Introduce la descripción"
                />

                <b-form-invalid-feedback id="input-1-live-feedback">{{
                  validationContext.errors[0]
                }}</b-form-invalid-feedback>
              </b-form-group>
            </validation-provider>

            <validation-provider
              v-slot="validationContext"
              name="Apartado para adjuntar pruebas (fotos, documentos, etc)"

              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="example-input-group-1"
                label="Apartado para adjuntar pruebas (fotos, documentos, etc)"
                label-for="example-input-1"
              >
                <b-form-file
                  v-model="form.apartadoPruebas"
                  browse-text="Buscar"
                  placeholder="Selecciona un documento y arrastra aqui..."
                  accept=".jpg, .png, .gif, .pdf, .docx"
                />

                <b-form-invalid-feedback id="input-1-live-feedback">{{
                  validationContext.errors[0]
                }}</b-form-invalid-feedback>
              </b-form-group>
            </validation-provider>

            <validation-provider
              v-slot="validationContext"
              name="Lugar de los hechos"
              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="example-input-group-1"
                label="Lugar de los hechos"
                label-for="example-input-1"
              >
                <b-form-input
                  id="example-input-1"
                  v-model="form.lugarHechos"
                  name="example-input-1"
                  :state="getValidationState(validationContext)"
                  aria-describedby="input-1-live-feedback"
                  placeholder="Introduce el lugar de los hechos"
                />

                <b-form-invalid-feedback id="input-1-live-feedback">{{
                  validationContext.errors[0]
                }}</b-form-invalid-feedback>
              </b-form-group>
            </validation-provider>

            <validation-provider
              v-slot="validationContext"
              name="Nombre de la Empresa de Seguridad Privada"
              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="example-input-group-1"
                label="Nombre de la empresa de seguridad privada"
                label-for="example-input-1"
              >
                <b-form-input
                  id="example-input-1"
                  v-model="form.nombreEmpresa"
                  name="example-input-1"
                  :state="getValidationState(validationContext)"
                  aria-describedby="input-1-live-feedback"
                  placeholder="Empresa de Seguridad Privada"
                />

                <b-form-invalid-feedback id="input-1-live-feedback">{{
                  validationContext.errors[0]
                }}</b-form-invalid-feedback>
              </b-form-group>
            </validation-provider>

            <validation-provider
              v-slot="validationContext"
              name="Fecha"
              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="example-input-group-1"
                label="Fecha"
                label-for="example-input-1"
              >
                <b-form-input
                  id="example-input-1"
                  v-model="form.fecha"
                  name="example-input-1"
                  :state="getValidationState(validationContext)"
                  aria-describedby="input-1-live-feedback"
                  placeholder="Sin fecha seleccionada"
                  @click="enviar"
                />
                <div>
                  <label for="example-datepicker">Fecha</label>
                  <b-form-datepicker
                    id="example-datepicker"
                    v-model="value"
                    class="mb-2"
                    placeholder="Sin fecha seleccionada"
                  />
                </div>

                <b-form-invalid-feedback id="input-1-live-feedback">{{
                  validationContext.errors[0]
                }}</b-form-invalid-feedback>
              </b-form-group>
            </validation-provider>
            <validation-provider
              v-slot="validationContext"
              name="Croquis de la oficina o lugar donde ocurrieron los hechos"
              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="example-input-group-1"
                label="Croquis de la oficina o lugar donde ocurrieron los hechos"
                label-for="example-input-1"
              >
                <b-form-file
                  v-model="form.croquisOficina"
                  browse-text="Buscar"
                  placeholder="Selecciona un documento y arrastra aqui..."
                  accept=".jpg, .png, .gif, .pdf, .docx"
                />

                <b-form-invalid-feedback id="input-1-live-feedback">{{
                  validationContext.errors[0]
                }}</b-form-invalid-feedback>
              </b-form-group>
            </validation-provider>

            <b-button
              class="ml-2"
              @click="resetForm()"
            >
              limpiar
            </b-button>
          </b-form>
        </validation-observer>
      </div>
      <br>
      <b-row align-h="center">
        <b-col md="mt-3">
          <b-button
            class="buzon"
            variant="outline-danger"
            align-h="center"
          >Consulta de aviso de privacidad
          </b-button>
          <br>

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
                    type="submit"
                    variant="primary"
                  >
                    Enviar
                  </b-button>
                </b-row>
              </div>
            </b-col>
          </b-row>
        </b-col></b-row></b-card></b-form-group>
</template>

<script>
import {
  // BFormInvalidfeedback,
  BCard,
  BForm,
  BFormInvalidFeedback,
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
    BFormInvalidFeedback,
    ValidationObserver,
    ValidationProvider,
    BCard,
    BForm,
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
        croquisOficina: null,
        value: '',
      },
    }
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
    resetForm() {
      this.form = {
        nombre: null,
        correoElectronico: null,
        descrincionHechos: null,
        apartadoAdjuntarPruebas: null,
        lugarHechos: null,
        nombreEmpresa: null,
        fecha: null,
        croquisOficina: null,
      }

      this.$nextTick(() => {
        this.$refs.observer.reset()
      })
    },
    onSubmit() {
      // alert('Formulado Envíado!')
      console.log('Envìando Formulario')
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
