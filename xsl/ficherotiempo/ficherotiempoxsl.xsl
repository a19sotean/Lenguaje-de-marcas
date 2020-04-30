<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  
<html>
<head>
<style>
body {
background-color: #FFF26E;
}
table {
border: 1px;
}
th {
background-color: #5CFFA9;
}
tr {
background-color: #CAFF7B;
}
</style>
</head>
<body>
 <h1>El tiempo en Córdoba </h1>
 <table>
 <tr >
 <th>Día</th>
 <th>Temperatura máxima</th>
 <th>Temperatura mínima</th>
 </tr>
 <xsl:for-each select="/root/prediccion/dia">
 <tr>
 <td><xsl:value-of select="@fecha"/></td>
 <td><xsl:value-of select="temperatura/maxima"/></td>
 <td><xsl:value-of select="temperatura/minima"/></td>
 </tr>
 </xsl:for-each>
 </table>
 </body>
</html>  
  
  </xsl:template>
</xsl:stylesheet>
