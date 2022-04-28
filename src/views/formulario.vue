<template>
  <div class="formulario">
    <b-overlay
      :show="show"
      rounded="sm"
    >
      <validation-observer
        ref="observer"
        v-slot="{ invalid, handleSubmit }"
      >
        <br>
        <label
          class="delfin"
        >Llene todos los campos para levantar una queja a una Empresa de
          Seguridad Privada
        </label>
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
                  class="nombre"
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
                name="Correo o Telefono"
                :rules="{ required: true, min: 3 }"
              >
                <b-form-group
                  id="correo"
                  class="correo"
                  label="Correo electrónico o teléfono"
                  label-for="correo"
                >
                  <b-form-input
                    id="correo"
                    v-model="form.CorreoElectronico"
                    name="correo"
                    :state="getValidationState(validationContext)"
                    aria-describedby="input-1-live-feedback"
                    class="correo"
                    placeholder="Introduce tu método de contacto"
                  />

                  <b-form-invalid-feedback id="input-1-live-feedback">{{
                    validationContext.errors[0]
                  }}</b-form-invalid-feedback>
                </b-form-group>
              </validation-provider>
            </b-col>
          </b-row>
          <b-row>
            <validation-provider
              v-slot="validationContext"
              name="DescripcionH"
              :rules="{ required: true, min: 3 }"
            >
              <b-form-group
                id="descripcion"
                class="descripcion"
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
          </b-row>

          <validation-provider
            v-slot="validationContext"
            name="pruebas"
            :rules="{ required: true }"
          >
            <b-form-group
              id="pruebas"
              class="apartado"
              label="Apartado para adjuntar pruebas (fotos, documentos, etc)"
              label-for="pruebas"
            >
              <b-form-file
                v-model="form.apartadoPruebas"
                :state="Boolean(form.apartadoPruebas)"
                browse-text="Buscar"
                placeholder="Selecciona un documento y arrastra aqui..."
                accept=".jpg, .png, .gif, .pdf, .docx"
              />
              <b-form-invalid-feedback id="input-1-live-feedback">
                {{ validationContext.errors[0] }}
              </b-form-invalid-feedback>
            </b-form-group>
          </validation-provider>

          <validation-provider
            v-slot="validationContext"
            name="Lugar Hechos"
            :rules="{ required: true, min: 3 }"
          >
            <b-form-group
              id="lugar"
              class="hechos"
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
            <b-col cols="4">
              <validation-provider
                v-slot="validationContext"
                name="NombreEmpresa"
                :rules="{ required: true, min: 3 }"
              >
                <b-form-group
                  id="nombreE"
                  class="empresa"
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

            <b-col cols="4">
              <validation-provider
                v-slot="validationContext"
                name="fecha"
                :rules="{ required: true }"
              >
                <b-form-group>
                  <div>
                    <label
                      class="estiloFecha"
                      for="fecha"
                    >Fecha</label>
                    <b-form-datepicker
                      id="fecha"
                      v-model="form.fecha"
                      :state="Boolean(form.fecha)"
                      label-help="Usa las teclas del cursor"
                      class="fecha"
                      label-no-date-selected="No a seleccionado una fecha"
                      placeholder="Sin fecha seleccionada"
                    />
                  </div>
                  <b-form-invalid-feedback id="input-1-live-feedback">
                    {{ validationContext.errors[0] }}
                  </b-form-invalid-feedback>
                </b-form-group>
              </validation-provider>
            </b-col>

            <b-col cols="4">
              <validation-provider
                v-slot="validationContext"
                name="coquis"
                :rules="{ required: true }"
              >
                <b-form-group
                  id="croquis"
                  class="croquis"
                  label="Croquis de la oficina o lugar donde ocurrieron los hechos"
                  label-for="croquis"
                >
                  <b-form-file
                    v-model="form.croquisOficina"
                    :state="Boolean(form.croquisOficina)"
                    browse-text="Buscar"
                    placeholder="Selecciona un documento y arrastra aqui..."
                    accept=".jpg, .png, .gif, .pdf, .docx"
                  />
                  <b-form-invalid-feedback id="input-1-live-feedback">
                    {{ validationContext.errors[0] }}
                  </b-form-invalid-feedback>
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
                    class="aceptar"
                  >Acepto de aviso de privacidad
                  </b-form-checkbox>
                  <div class="enviar">
                    <b-row align-h="center">
                      <b-col md="6" />
                      <b-button
                        type="submit"
                        variant="primary"
                        class="boton"
                        :disabled="invalid"
                      >
                        Enviar
                      </b-button>
                    </b-row>
                  </div>
                </b-col>
              </b-row>
            </b-col>
          </b-row>

          <b-modal
            id="alerta"
            ok-only
            ok-variant="success"
            ok-title="Cerrar"
            modal-class="modal-success"
            centered
            title="Aviso"
          >
            <b-card-text> Se envio correctamente </b-card-text>
          </b-modal>
        </b-form>
      </validation-observer>
    </b-overlay>
  </div>
</template>

<script>
import {
  BOverlay,
  // BFormInvalidfeedback,
  // BFormSelect,
  // BCard,
  // BFormSelect,
  BCardText,
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
  BModal,
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
import Ripple from 'vue-ripple-directive'
import swal from 'sweetalert2'

localize('es', es)
export default {
  components: {
    BOverlay,
    BCardText,
    // BFormSelect,
    BModal,
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
  directives: {
    Ripple,
  },
  data() {
    return {
      show: false,
      active: false,
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
    success() {
      swal.fire({
        title: 'Correcto',
        text: 'Se envío correctamente',
        buttonsStyling: false,
        allowOutsideClick: false,
        allowEscapeKey: false,
        confirmButtonClass: 'btn btn-success',
        icon: 'success',
      })
    },
    error() {
      swal.fire({
        title: 'Error',
        text: 'mensaje Error',
        buttonsStyling: false,
        allowOutsideClick: false,
        allowEscapeKey: false,
        confirmButtonClass: 'btn btn-success',
        icon: 'error',
      })
    },
    enviar() {
      this.show = true
      axios
        .post('http://10.13.123.94:8010/api/v1/prueba', this.form)
        .then(response => {
          console.log(response)
          this.resetForm()
          this.show = false
          this.success()
        })
        .catch(error => {
          this.show = false
          console.log(error)
          this.error()
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
      // this.$bvModal.show("alerta")
      // this.success()
      this.enviar()
    },
  },
}
</script>

<style lang="scss" scoped>
.boton {
  border-color: #235b4e !important;
  background-color: #235b4e !important;
  font-weight: bolder;
  width: 270px;
}

.formulario {
  width: 92%;
  margin-left: 4%;
  margin-right: 2%;
  border-radius: 10px;
  background-color: #ffffff;
  box-shadow: 10px 10px 25px #d3d6d4de;
}
.delfin {
  margin-left: 50px;
  font-size: 12.5px;
  font-weight: bold;
  height: 30px;
}
.nombre {
  width: 97%;
  margin-left: 50px;
  margin-right: 400px;
  font-weight: bold;
}
.correo {
  width: 95.5%;
  margin-left: 10px;
  margin-right: 70px;
  font-weight: bold;
}
.descripcion {
  width: 93%;
  margin-left: 65px;
  margin-right: 1674px;
  font-weight: bold;
}
.apartado {
  width: 94%;
  margin-left: 48px;
  margin-right: -50px;
  font-weight: bold;
}
.hechos {
  width: 94%;
  margin-left: 49px;
  margin-right: -50px;
  font-weight: bold;
}
.empresa {
  width: 75%;
  margin-left: 47px;
  margin-right: -50px;
  font-weight: bold;
}
.fecha {
  width: 85%;
  margin-right: 500px;
  margin-left: -100px;
  font-weight: bold;
}
.croquis {
  width: 120%;
  margin-right: 400px;
  margin-left: -199px;
  padding: 2px 0;
  font-weight: bold;
}
.aceptar {
  height: 60px;
}
.enviar {
  height: 60px;
}
.estiloFecha {
  margin-left: -16%;
  font-weight: bold;
}
</style>
