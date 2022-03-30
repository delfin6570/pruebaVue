<template>
  <b-card>>
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
                <b-card
                  footer="Card Footer"
                  footer-tag="footer"
                  footer-bg-variant="danger"
                  footer-border-variant=""
                  title=""
                  style="max-width: 20rem;"
                />
              </div>
            </b-row>
          </div>
        </b-col>
      </b-row>
    </b-form-group>
  </b-card>

</template>
