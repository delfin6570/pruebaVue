<template>
  <div class="magenFin">
    <div class="footer-div" />
    <div class="footer-container">
      <b-row>
        <b-col>
          <div class="margen">
            <b-img
              :src="require('@/imagenes/cdmx-ssc.svg')"
              alt="Image 1"
              :height="50"
            />
          </div>
        </b-col>
        <b-col>
          <div class="info">
            <p class="title">
              Dirección General de Seguridad Privada
            </p>
            <p>
              Dirección: Calle Ermita 5, Piso 2, <br>
              Colonia Narvarte Poniente, <br>
              Alcaldía Benito Juárez, C.P. 03020, <br>
              Ciudad de México.
            </p>
            <p>
              Teléfono: <br>
              52425100 Ext 5267, 5258
            </p>
            <p>
              Correo electrónico: <br>
              dgsegpriv01@ssp.cdmx.gob.mx <br>
              masuarez@ssp.cdmx.gob.mx
            </p>
          </div>
        </b-col>

        <b-col>
          <p class="title">
            Redes Sociales
          </p>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24px"
            height="24px"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
            class="feather feather-facebook"
          >
            <path
              d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"
            />
          </svg>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24px"
            height="24px"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
            class="feather feather-youtube ml-1"
          >
            <path
              d="M22.54 6.42a2.78 2.78 0 0 0-1.94-2C18.88 4 12 4 12 4s-6.88 0-8.6.46a2.78 2.78 0 0 0-1.94 2A29 29 0 0 0 1 11.75a29 29 0 0 0 .46 5.33A2.78 2.78 0 0 0 3.4 19c1.72.46 8.6.46 8.6.46s6.88 0 8.6-.46a2.78 2.78 0 0 0 1.94-2 29 29 0 0 0 .46-5.25 29 29 0 0 0-.46-5.33z"
            />
            <polygon points="9.75 15.02 15.5 11.75 9.75 8.48 9.75 15.02" />
          </svg>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24px"
            height="24px"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
            class="feather feather-instagram ml-1"
          >
            <rect
              x="2"
              y="2"
              width="20"
              height="20"
              rx="5"
              ry="5"
            />
            <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z" />
            <line
              x1="17.5"
              y1="6.5"
              x2="17.51"
              y2="6.5"
            />
          </svg>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24px"
            height="24px"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
            class="feather feather-twitter ml-1"
          >
            <path
              d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"
            />
          </svg>
        </b-col>
        <b-col>
          <div class="lista">
            <p class="title">
              Sitios Relacionados
            </p>
            <ul>
              <li>
                <a href="#"> Portal de la Secretaría de Seguridad Ciudadana </a>
              </li>
              <li>
                <a href="#">
                  Empresas registradas para servicio de Seguridad Privada
                </a>
              </li>
              <li>
                <a href="#"> Trámites en Línea </a>
              </li>
              <li>
                <a href="#"> Estrado Electrónico </a>
              </li>
            </ul>
          </div>
        </b-col>
      </b-row>
    </div>
  </div>
</template>
<script>
import { BCol, BRow, BImg } from 'bootstrap-vue'

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
.footer-div {
  background-color: #bc955c;
  height: 10px;
  width: 100%;
}

.footer-container {
  background-color: #235b4e;
  color: #aec3be;
  padding: 30px 0;
  font-size: 15px;
  border-bottom-left-radius: 15px 15px;
  border-bottom-right-radius: 15px 15px;
  
}
.footer-container .footer-img {
  width: 150px;
}
.footer-container .title {
  color: white;
  font-weight: 700;
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
  .footer-div {
    background-color: #bc955c;
    height: 7px;
    width: 100%;
    
  }
}

.margen {
  margin-left: 15%;
}

.magenFin{
  margin-top: 2%;
}
</style>
