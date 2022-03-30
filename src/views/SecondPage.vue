<template>
  <b-card>
    <b-row>
      <b-col>
        <b-img
          :src="require('@/assets/images/icons/images.png')"
          alt="Image 1"
          :height="40"
        />
        <b-img
          :src="require('/home/delfin/Escritorio/vuexy-full-version/src/assets/images/icons/index.jpeg')"
          alt="Image 1"
          :height="40"
        />
        <a href="#">Seguridad Privada</a>
        <a href="#">Buzón de quejas</a>
        <a href="#">Estrado Electrónico</a>
      </b-col>
    </b-row>
    <div
      class="p-3 mb-2 bg-success  color = red"
    >
      <h1>Buzón de quejas</h1>
    </div>
    <label class="delfin">Llene todos los campos para levantar una queja a una Empresa de Seguridad Privada</label>

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
      <b-row>
        <!-- nombre -->
        <b-col md="12">
          <label>Descripción de los hechos</label>
          <b-form-input
            v-model="userEmail"
            placeholder="Selecciona un documento y arrastra aqui..."
          />
        </b-col></b-row>
      <b-row>
        <b-col md="12">
          <div>
            <label class="apartado">Apartado para adjuntar pruebas (fotos, documentos, etc)</label>
            <!-- Styled -->
            <b-form-file
              v-model="file"
              placeholder="Selecciona un documento y arrastra aqui..."
            />
          </div>
        </b-col></b-row>
      <b-col md="12">
        <label>Lugar de los hechos</label>

        <!-- nombre -->
        <b-form-input
          v-model="userEmail"
          placeholder="Introduce el lugar de los hechos"
        />
      </b-col>
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
          <label>Croquis de la oficina o lugar donde ocurrieron los hechos)</label>
          <b-col md="6" />
          <!-- Styled -->
          <b-form-file
            v-model="file"
            placeholder="Selecciona un documento y arrastra aqui..."
          />
        </b-col>
      </b-row>
      <b-row>

        <b-button
          class="Buzón"
          variant="outline-danger"
          align-h="center"
        >Consulta de aviso de privacidad
        </b-button>
      </b-row>
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
              >
                Enviar</b-button>
              <div>
                <b-row>
                  <b-col>

                    <b-img
                      :src="require('@/assets/images/icons/images.png')"
                      alt="Image 1"
                      :height="40"
                      align-h:left
                    />
                    <b-img
                      :src="require('/home/delfin/Escritorio/vuexy-full-version/src/assets/images/icons/index.jpeg')"
                      alt="Image 1"
                      :height="40"
                      align-h="left"
                    />
                    <b-row>
                      <b-col>Dirección General de Seguridad Privada </b-col>
                      <b-col>Dirección: Calle Ermita 5, Piso 2,
                        Colonia Narvarte Poniente,
                        Alcaldía Benito Juárez, C.P. 03020,
                        Ciudad de México.
                      </b-col>
                      <b-col>Teléfono:
                        52425100 Ext 5267, 5258
                      </b-col>
                      <b-col>Correo electrónico:
                        dgsegpriv01@ssp.cdmx.gob.mx
                        masuarez@ssp.cdmx.gob.mx
                      </b-col>
                      <b-col>Redes Sociales
                        <b-img
                          :src="require('/home/delfin/Escritorio/vuexy-full-version/src/assets/images/icons/face.png')"
                          alt="Image 1"
                          :height="40"
                          align-h="left"
                        />
                        <b-img
                          :src="require('/home/delfin/Escritorio/vuexy-full-version/src/assets/images/icons/youtube.png')"
                          alt="Image 2"
                          :height="40"
                          align-h="left"
                        />
                        <b-img
                          :src="require('/home/delfin/Escritorio/vuexy-full-version/src/assets/images/icons/instagram.jpeg')"
                          alt="Image 2"
                          :height="40"
                          align-h="left"
                        />
                        <b-img
                          :src="require('/home/delfin/Escritorio/vuexy-full-version/src/assets/images/icons/twitter22.png')"
                          alt="Image 2"
                          :height="40"
                          align-h="left"
                        />
                      </b-col>
                      <b-col>Sitios Relacionados
                      </b-col>

                      <b-col>
                        <a href="#">Portal de la Secretaría de Seguridad Ciudadana </a>

                        <a href="#">Empresas registradas para servicio de Seguridad Privada </a>
                        <a href="#">Trámites en Línea </a>
                        <a href="#">Estrado Electrónico  </a>
                      </b-col>

                    </b-row></b-col></b-row>
              </div>
            </b-row>
          </div>
        </b-col>
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
  BImg,
  BButton,
  // BIcon,
  // BNnavbar,
  // BAlert,
  // BContainer,

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
    BImg,
    BButton,
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
