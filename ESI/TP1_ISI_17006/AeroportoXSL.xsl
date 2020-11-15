<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="ISO-8859-1"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Passageiros</title>
      </head>
      <body>
        <h1>Passageiros</h1>
        <table border="3">
          <tr>
            <th>ID_Passageiro</th>
            <th>Nome_Completo</th>
            <th>Nacionalidade</th>
            <th>Idade</th>
            <th>Género</th>
            <th>Número_Telemóvel</th>
            <th>Email</th>
            <th>Companhia_Aéria</th>
            <th>Id_Avião</th>
            <th>Data_Hora</th>
            <th>Destino</th>
            <th>Preço</th>
            <th>Covid19</th>
            <th>Lugar</th>
            <th></th>
          </tr>
          <xsl:for-each select="Passageiros/Passageiro">
            <tr>
              <td>
                <xsl:apply-templates select="ID_Passageiro"/>
              </td>
              <td>
                <xsl:apply-templates select="Nome_Completo"/>
              </td>
              <td>
                <xsl:apply-templates select="Nacionalidade"/>
              </td>
              <td>
                <xsl:apply-templates select="Idade"/>
              </td>
              <td>
                <xsl:apply-templates select="Género"/>
              </td>
              <td>
                <xsl:apply-templates select="Número_Telemóvel"/>
              </td>
              <td>
                <xsl:apply-templates select="Email"/>
              </td>
              <td>
                <xsl:apply-templates select="Companhia_Aéria"/>
              </td>
              <td>
                <xsl:apply-templates select="Id_Avião"/>
              </td>
              <td>
                <xsl:apply-templates select="Data_Hora"/>
              </td>
              <td>
                <xsl:apply-templates select="Destino"/>
              </td>
              <td>
                <xsl:apply-templates select="Preço"/>
              </td>
              <td>
                <xsl:apply-templates select="Covid19"/>
              </td>
              <td>
                <xsl:apply-templates select="Lugar"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
