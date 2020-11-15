<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Songs</h2>
  <table border="1">
    <tr bgcolor="##BFBFBF">
      <th>Artist</th>
      <th>Song</th>
      <th>Song Popularity</th>
      <th>Popularity</th>
      <th>Duration</th>	
    </tr>
    <xsl:for-each select="Rows/Row">
    <tr>
      <td><xsl:value-of select="artist_name"/></td>
      <td><xsl:value-of select="song_name"/></td>
      <td><xsl:value-of select="song_popularity"/></td>
      <td><xsl:value-of select="popularity"/></td>
      <td><xsl:value-of select="song_duration"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>