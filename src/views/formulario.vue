<template>
  <div>
    <validation-observer ref="observer" v-slot="{ handleSubmit }">
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
                name="Correo electrónico o teléfono"
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
            name="Descripción de los hechos"
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
       
       

        <b-button type="submit" variant="primary">Submit</b-button>
        <b-button class="ml-2" @click="resetForm()">Reset</b-button>
      </b-form>
    </validation-observer>
  </div>
</template>

<script>
import {
  // BFormInvalidfeedback,
  // BFormSelect,
  // BCard,
  BForm,
  BFormSelect,
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
} from "bootstrap-vue";
import {
  ValidationObserver,
  ValidationProvider,
  localize,
} from "vee-validate/dist/vee-validate.full";
import axios from "axios";
import es from "vee-validate/dist/locale/es.json";

localize("es", es);
export default {
  components: {
    BFormSelect,
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
        nombre: "",
        correoElectronico: "",
        descrincionHechos: "",
        apartadoAdjuntarPruebas: "",
        lugarHechos: "",
        nombreEmpresa: "",
        fecha: "",
        croquisOficina: null,
        value: "",
      },
    };
  },
  methods: {
    enviar() {
      console.log(this.form.nombre);
      console.log("hola Mundo");
      axios
        .post("http://10.13.123.94:8010/api/v1/prueba", this.form)
        .then((response) => {
          console.log(response);
          this.resetForm();
        })
        .catch((error) => {
          console.log(error);
        });
    },
    getValidationState({ dirty, validated, valid = null }) {
      return dirty || validated ? valid : null;
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
      };
      this.$nextTick(() => {
        this.$refs.observer.reset();
      });
    },
    onSubmit() {
      // alert('Formulado Envíado!')
      console.log("Envìando Formulario");
      //this.$bvModal.show("alerta")
      //this.enviar();
    },
  },
};
</script>

<style lang="scss" scoped>
.boton {
  border-color: #235b4e !important;
  background-color: #235b4e !important;
  font-weight: bolder;
  width: 270px;
}
.buzon {
  font-weight: bolder;
}
body {
  font-family: "Montserrat", sans-serif;
}

.label-sm {
  font-size: 12px;
  font-weight: 600;
  color: #5e5873;
}

.label-xs {
  font-size: 10.5px;
  font-weight: 600;
  color: #5e5873;
}

.button {
  text-align: center;
  padding: 8px 18px;
  border-radius: 5px;
  font-size: 14px;
  font-weight: 500;
  margin-left: 80px;
  margin-right: 250px;
}

.button-outline-secondary {
  border: 3px solid #9f2241;
  background-color: transparent;
  color: #9f2241;
}

.button-primary {
  border-color: #235b4e;
  background-color: #235b4e;
  color: white;
  padding: 10px 10px;
}

.button-outline-primary {
  border: 1px solid #9f2241;
  background-color: transparent;
  color: #9f2241;
}

header {
  background-color: #ffffff;
  width: 100%;
  position: fixed;
  top: 0;
  z-index: 100;
  -webkit-box-shadow: 0 2px 15px 0 rgba(0, 0, 0, 0.089);
  box-shadow: 0 2px 15px 0 rgba(0, 0, 0, 0.089);
}
header .header-content {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}
header .header-content .header-logo {
  width: 500px;
}
header .header-content .header-menu {
  width: 10%;
  margin-left: 60%;
}
header .header-content .header-menu ul {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: end;
  -ms-flex-pack: end;
  justify-content: flex-end;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  padding: 0;
  list-style: none;
  margin: 0;
  height: 80px;
}
header .header-content .header-menu ul a {
  margin-right: 100px;
  padding: 2px 0;
  border-bottom: 1px solid white;
  -webkit-transition: 0.2s ease-in-out all;
  transition: 0.2s ease-in-out all;
  text-decoration: none;
  color: gray;
}
header .header-content .header-menu ul a li {
  font-weight: 600;
  font-size: 10.8px;
  -webkit-transition: 0.2s ease-in-out all;
  transition: 0.2s ease-in-out all;
}
header .header-content .header-menu ul a:hover {
  border-bottom: 2px solid #235b4e;
  color: #235b4e;
}
header .header-content .header-menu ul a:last-child {
  margin-right: 0;
}
header .header-content .header-menu ul li:last-child {
  margin-right: 0;
}
header .header-content .header-icon {
  display: none;
}
header .responsive-header-menu {
  display: none;
  width: 100%;
}
header .responsive-header-menu ul {
  height: 100vh;
  display: block;
  padding: 0;
  list-style: none;
  margin: 0;
}
header .responsive-header-menu ul li {
  font-size: 10.8px;
  text-align: center;
  border-top: 1px solid #e6e6e6;
}
header .responsive-header-menu ul li a {
  display: block;
  padding: 32px 0;
  color: black;
  font-weight: 600;
  -webkit-transition: 0.2s ease-in-out all;
  transition: 0.2s ease-in-out all;
}
header .responsive-header-menu ul li a:hover {
  color: #235b4e;
  text-decoration: none;
  margin-right: 90%;
}
header .responsive-header-menu ul li:last-child {
  margin-right: 0;
}

@media (max-width: 1180px) {
  header {
    background-color: #ffffff;
  }
  header .header-content {
    height: 100px;
  }
  header .header-content .header-menu {
    display: none;
  }
  header .header-content .header-logo {
    width: 243px;
  }
  header .header-content .header-icon {
    display: block;
    cursor: pointer;
    font-size: 18px;
  }
}
.content {
  margin-top: 100px;
}

.card-title-background {
  width: 100%;
  background-color: #235b4e;
  padding: 30px 34px 64px 34px;
  border-radius: 10px;
  background-repeat: no-repeat;
  background-position: bottom;
  background-size: 1450px;
}
.card-title-background .title {
  font-size: 26px;
  font-weight: 600;
  color: #c99f50;
  margin: 0;
}

.title-card-form {
  font-size: 16px;
  font-weight: 600;
  color: #196957;
}

.footer-div {
  background-color: #bc955c;
  height: 7px;
  width: 100%;
}

.footer-container {
  background-color: #235b4e;
  color: #aec3be;
  padding: 30px 0;
  font-size: 12px;
}
.footer-container .footer-img {
  width: 260px;
}
.footer-container .title {
  color: white;
  font-weight: 500;
}
.footer-container .info p:last-child {
  margin-bottom: 0;
}
.footer-container ul {
  list-style: none;
  padding-left: 0;
}
.footer-container ul li {
  margin-bottom: 6px;
}
.footer-container ul li a {
  color: #aec3be;
  text-decoration: none;
  -webkit-transition: 0.2s ease-in-out all;
  transition: 0.2s ease-in-out all;
}
.footer-container ul li a:hover {
  color: white;
}
.footer-container .social-links {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}
.footer-container .social-links li {
  margin-right: 24px;
}
.footer-container .social-links li:last-child {
  margin-right: 0;
}
.footer-container .social-links li a {
  font-size: 24px;
}

@media (max-width: 750px) {
  .footer-container {
    text-align: center;
  }

  .social-links {
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
  }
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
  width: 90%;
  margin-left: 50px;
  margin-right: 400px;
  font-weight: bold;
}

.correo {
  width: 97%;
  margin-left: -10px;
  margin-right: 50px;
  font-weight: bold;
}
.descripcion {
  width: 91%;
  margin-left: 51px;
  margin-right: 10px;
  font-weight: bold;
}
.apartado {
  width: 91%;
  margin-left: 47px;
  margin-right: -50px;
  font-weight: bold;
}
.hechos {
  width: 91%;
  margin-left: 47px;
  margin-right: -50px;
  font-weight: bold;
}
.empresa {
  width: 130%;
  margin-left: 47px;
  margin-right: -50px;
  font-weight: bold;
}

.fecha {
  width: 115%;
  margin-right: 400px;
  margin-left: -190px;
  font-weight: bold;
}

.croquis {
  width: 130%;
  margin-right: 200px;
  margin-left: -150px;
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
  margin-left: -65%;
  font-weight: bold;
}
</style>
