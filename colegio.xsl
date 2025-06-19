<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Colegio</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css"/>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

        <script>
          $(document).ready(function () {
            $('#tablaColegio').DataTable();
            $('#tablaAlumnos').DataTable();
            $('#tablaProfesores').DataTable();
            $('#tablaAsignaturas').DataTable();
          });
        </script>
      </head>
      <body class="p-4">
        <div class="container">
          <h1 class="mb-4"><b>INFORMACION DEL COLEGIO</b></h1>

          <!-- Tabla Colegio -->
          <table id="tablaColegio" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Dirección</th>
                <th>Teléfono</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="colegios/colegio">
                <tr>
                  <td><xsl:value-of select="@codigo"/></td>
                  <td><xsl:value-of select="nombre"/></td>
                  <td><xsl:value-of select="direccion"/></td>
                  <td><xsl:value-of select="telefono"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>

          <!-- Tabla Alumnos -->
          <h3>Alumnos</h3>
          <table id="tablaAlumnos" class="table table-striped">
            <thead>
              <tr>
                <th>Número Expediente</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Curso</th>
                <th>Nota Media</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="colegios/colegio/alumnos/alumno">
                <tr>
                  <td><xsl:value-of select="@num_exp"/></td>
                  <td><xsl:value-of select="nombre"/></td>
                  <td><xsl:value-of select="apellidos"/></td>
                  <td><xsl:value-of select="curso"/></td>
                  <td><xsl:value-of select="notaMedia"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>

          <!-- Tabla Profesores -->
          <h3>Profesores</h3>
          <table id="tablaProfesores" class="table table-striped">
            <thead>
              <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Asignatura</th>
                <th>Teléfono</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="colegios/colegio/profesores/profesor">
                <tr>
                  <td><xsl:value-of select="@codigo"/></td>
                  <td><xsl:value-of select="nombre"/></td>
                  <td><xsl:value-of select="apellidos"/></td>
                  <td><xsl:value-of select="asignatura"/></td>
                  <td><xsl:value-of select="telefono"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>

          <!-- Tabla Asignaturas -->
          <h3>Asignaturas</h3>
          <table id="tablaAsignaturas" class="table table-striped">
            <thead>
              <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Código interno</th>
                <th>Créditos</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="colegios/colegio/asignaturas/asignatura">
                <tr>
                  <td><xsl:value-of select="@codigo"/></td>
                  <td><xsl:value-of select="nombre"/></td>
                  <td><xsl:value-of select="codigo"/></td>
                  <td><xsl:value-of select="creditos"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>

        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
