<template>
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
          :src="require('@/assets/images/icons/index.jpeg')"
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
</template>
<script>

import {
  BCol,
  BRow,
  BImg,

} from 'bootstrap-vue'

export default {
  components: {
    BCol,
    BRow,
    BImg,
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
