<template>
  <div>
    <validation-observer
      ref="observer"
      v-slot="{ handleSubmit }"
    >
      <label
        class="delfin"
      >Llene todos los campos para levantar una queja a una Empresa de
        Seguridad Privada
      </label>
      <validation-observer
        ref="observer"
        v-slot="{ handleSubmit }"
      >
        <b-form @submit.stop.prevent="handleSubmit(onSubmit)">
          <b-row>
            <b-col>
              <validation-provider
                v-slot="validationContext"
                name="Nombre"
                :rules="{ required: true, min: 3 }"
              >
                <b-form-group
                  id="nombre"
                  label="Nombre"
                  label-for="nombre"
                >
                  <b-form-input
                    id="nombre"
                    v-model="form.Nombre"
                    name="nombre"
                    :state="getValidationState(validationContext)"
                    aria-describedby="input-1-live-feedback"
                    placeholder="Introduce tu nombre aqui"
                  />

                  <b-form-invalid-feedback id="input-1-live-feedback">{{
                    validationContext.errors[0]
                  }}</b-form-invalid-feedback>
                </b-form-group>
              </validation-provider>
            </b-col>
            <b-col>
              <validation-provider
                v-slot="validationContext"
                name="Correo electrónico o teléfono"
                :rules="{ required: true, min: 3 }"
              >
                <b-form-group
                  id="correo"
                  label="Correo electrónico o teléfono"
                  label-for="correo"
                >
                  <b-form-input
                    id="correo"
                    v-model="form.CorreoElectronico"
                    name="correo"
                    :state="getValidationState(validationContext)"
                    aria-describedby="input-1-live-feedback"
                    placeholder="Introduce tu método de contacto"
                  />

                  <b-form-invalid-feedback id="input-1-live-feedback">{{
                    validationContext.errors[0]
                  }}</b-form-invalid-feedback>
                </b-form-group>
              </validation-provider>
            </b-col>
          </b-row>

          <validation-provider
            v-slot="validationContext"
            name="Descripción de los hechos"
            :rules="{ required: true, min: 3 }"
          >
            <b-form-group
              id="descripcion"
              label="Descripción de los hechos"
              label-for="descripcion"
            >
              <b-form-textarea
                id="descripcion"
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
              id="pruebas"
              label="Apartado para adjuntar pruebas (fotos, documentos, etc)"
              label-for="pruebas"
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
              id="lugar"
              label="Lugar de los hechos"
              label-for="lugar"
            >
              <b-form-input
                id="lugar"
                v-model="form.lugarHechos"
                name="lugar"
                :state="getValidationState(validationContext)"
                aria-describedby="input-1-live-feedback"
                placeholder="Introduce el lugar de los hechos"
              />

              <b-form-invalid-feedback id="input-1-live-feedback">{{
                validationContext.errors[0]
              }}</b-form-invalid-feedback>
            </b-form-group>
          </validation-provider>

          <b-row>
            <b-col>
              <validation-provider
                v-slot="validationContext"
                name="Nombre de la Empresa de Seguridad Privada"
                :rules="{ required: true, min: 3 }"
              >
                <b-form-group
                  id="nombreE"
                  label="Nombre de la empresa de seguridad privada"
                  label-for="nombreE"
                >
                  <b-form-input
                    id="nombreE"
                    v-model="form.nombreEmpresa"
                    name="nombreE"
                    :state="getValidationState(validationContext)"
                    aria-describedby="input-1-live-feedback"
                    placeholder="Empresa de Seguridad Privada"
                  />
                  <b-form-invalid-feedback id="input-1-live-feedback">{{
                    validationContext.errors[0]
                  }}</b-form-invalid-feedback>
                </b-form-group>
              </validation-provider>
            </b-col>
            <b-col>
              <validation-provider
                v-slot="validationContext"
                name="Fecha"
                :rules="{ required: true, min: 3 }"
              >
                <b-form-group>
                  <div>
                    <label for="fecha">Fecha</label>
                    <b-form-datepicker
                      id="fecha"
                      v-model="form.fecha"
                      label-help="Usa las teclas del cursor"
                      class="mb-2"
                      placeholder="Sin fecha seleccionada"
                    />
                  </div>
                  <b-form-invalid-feedback id="input-1-live-feedback">{{
                    validationContext.errors[0]
                  }}</b-form-invalid-feedback>
                </b-form-group>
              </validation-provider>
            </b-col>
            <b-col>
              <validation-provider
                v-slot="validationContext"
                name="Fecha"
                :rules="{ required: true, min: 3 }"
              >
                <b-form-group>
                  <div>
                    <label for="fecha">Fecha</label>
                    <b-form-datepicker
                      id="fecha"
                      v-model="form.fecha"
                      label-help="Usa las teclas del cursor"
                      label-no-date-selected="No a seleccionado una fecha"
                      class="mb-2"
                      placeholder="Sin fecha seleccionada"
                    />
                  </div>

                  <b-form-invalid-feedback id="input-1-live-feedback">{{
                    validationContext.errors[0]
                  }}</b-form-invalid-feedback>
                </b-form-group>
              </validation-provider>
            </b-col>
            <b-col>
              <validation-provider
                v-slot="validationContext"
                name="Croquis de la oficina o lugar donde ocurrieron los hechos"
                :rules="{ required: true, min: 3 }"
              >
                <b-form-group
                  id="croquis"
                  label="Croquis de la oficina o lugar donde ocurrieron los hechos"
                  label-for="croquis"
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
            </b-col>
          </b-row>
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
                        class="boton"
                      >
                        Enviar
                      </b-button>
                    </b-row>
                  </div>
                </b-col>
              </b-row>
            </b-col>
          </b-row>
        </b-form>
      </validation-observer>
    </validation-observer>
  </div>
</template>

<script>
import {
  // BFormInvalidfeedback,
  // BFormSelect,
  // BCard,
  BForm,
  BFormInvalidFeedback,
  BFormInput,
  BFormTextarea,
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
import {
  ValidationObserver,
  ValidationProvider,
  localize,
} from 'vee-validate/dist/vee-validate.full'
import axios from 'axios'
import es from 'vee-validate/dist/locale/es.json'

localize('es', es)
export default {
  components: {
    BFormTextarea,
    // BFormSelect,
    BFormInvalidFeedback,
    ValidationObserver,
    ValidationProvider,
    // BCard,
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
      foods: [
        { value: null, text: 'Choose...' },
        { value: 'apple', text: 'Apple' },
        { value: 'orange', text: 'Orange' },
      ],
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
  border-color: #235b4e !important;
  background-color: #235b4e !important;
  font-weight: bolder;
}
.buzon {
  font-weight: bolder;
}
</style>
