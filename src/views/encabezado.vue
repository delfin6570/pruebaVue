<template>
  <div class="header">
    <div class="container">
      <div class="header-content">
        <div class="header-logo">
          <a href="#inicio">
            <b-img
              :src="require('@/imagenes/cdmx-ssc-color.svg')"
              alt="Image 1"
              :height="50"
            />
          </a>
        </div>
        <div class="header-menu">
          <ul>
            <a href="#inicio" class="link">
              <li>Seguridad Privada</li>
            </a>
            <a href="#inicio" class="link" />
            <a href="#inicio" class="link">
              <li>Estrado Electrónico</li>
            </a>
          </ul>
        </div>
        <div class="header-icon">
          <i id="menu" class="fas fa-bars" />
        </div>
        <div class="responsive-header-menu">
          <ul>
            <li>
              <a href="#inicio" class="link movement">Seguridad Privada</a>
            </li>

            <li>
              <a href="#quienes-somos" class="link movement"
                >Estrado Electrónico</a
              >
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { BImg } from "bootstrap-vue";

export default {
  components: {
    BImg,
  },

  data() {
    return {
      status: null,
      file: null,
      userEmail: null,
      footer: null,
    };
  },
};
</script>

<style lang="scss" scoped>
.header-content {
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
.header-content .header-logo {
  width: 100%;
  margin: 2%;
}
.header-menu {
  width: 300%;
  margin: 10;
}
.header-menu ul {
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
  height: 10%px;
}
.header-menu ul a {
  margin-right: 20px;
  padding: 5px 0;
  border-bottom: 5px solid white;
  -webkit-transition: 0.2s ease-in-out all;
  transition: 0.2s ease-in-out all;
  text-decoration: none;
  color: gray;
}
.header-menu ul a li {
  font-weight: 600;
  font-size: 10.8px;
  -webkit-transition: 0.2s ease-in-out all;
  transition: 0.2s ease-in-out all;
}
.header-menu ul a:hover {
  border-bottom: 4px solid #235b4e;
  color: #235b4e;
}
.header-menu ul a:last-child {
  margin-right: 0px;
}
.header-menu ul li:last-child {
  margin-right: auto;
}
.header-icon {
  display: none;
}
.responsive-header-menu {
  display: none;
  width: 100%;
}
.responsive-header-menu ul {
  height: 100vh;
  display: block;
  padding: 0;
  list-style: none;
  margin: 0;
}
.responsive-header-menu ul li {
  font-size: 10.8px;
  text-align: center;
  border-top: 1px solid #e6e6e6;
}
.responsive-header-menu ul li a {
  display: block;
  padding: 32px 0;
  color: black;
  font-weight: 600;
  -webkit-transition: 0.2s ease-in-out all;
  transition: 0.2s ease-in-out all;
}
.responsive-header-menu ul li a:hover {
  color: #235b4e;
  text-decoration: none;
}
.responsive-header-menu ul li:last-child {
  margin-right: 0;
}

@media (max-width: 1180px) {
  .header-content {
    height: 80px;
  }
  .header-content .header-menu {
    display: none;
    display: block;
  }
  .header-content .header-logo {
    width: 2px;
    height: 200px;
  }
  .header-content .header-icon {
    display: block;
    cursor: pointer;
    font-size: 210%;
  }
}
.header {
  margin-bottom: 20px;
}
.container {
  width: 92%;
  margin-left: 4%;
  margin-right: 2%;
}
.contenedor {
  width: 10%;
}
</style>
