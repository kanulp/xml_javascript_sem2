<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
         <head>
            <title>Q 6</title>
         </head>
         <body>
          <table border = "1">
          	<tr style="background-color:orange;">
          		<td>customerid</td>
          		<td>status</td>
          		<td>name</td>
          		<td>price</td>
          		<td>qty</td>
          	</tr>
			 <xsl:for-each select="order/orders[instock='N']">
				 <tr>
              <td><xsl:value-of select="customerid"/></td>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="status/@return"/></td>
              <td><xsl:value-of select="status"/></td>
              <td><xsl:value-of select="qty"/></td>
              </tr>
             <br />
			 </xsl:for-each>
         </table>
         </body>
     </html>
</xsl:template>
</xsl:stylesheet>
