<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Transformation rules -->
  <xsl:template match="/products">
    <html>
      <head>
        <title>Product Catalog</title>
      </head>
      <body>
        <h1>Product Catalog</h1>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
          </tr>
          <!-- Applying the transformation for each product -->
          <xsl:apply-templates select="product" />
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="product">
    <tr>
      <td><xsl:value-of select="id" /></td>
      <td><xsl:value-of select="name" /></td>
      <td><xsl:value-of select="price" /></td>
      <td><xsl:value-of select="description" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
