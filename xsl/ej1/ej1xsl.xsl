<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
 <h2>My CD Collection</h2>
 <table>
 <tr >
 <th>Title</th>
 <th>Artist</th>
 </tr>
 <xsl:for-each select="catalog/cd">
 <--! Para que solo muestre los discos de Bob Dylan -->
 <xsl:for-each select="/catalog/cd[artist='Bob Dylan']">
 <xsl:sort select = "artist" />
 <tr>
 <td><xsl:value-of select="title"/></td>
 <td><xsl:value-of select="artist"/></td>
 </tr>
 </xsl:for-each>
 </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>