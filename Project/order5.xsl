<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:template match="/">
      <html>
         <head>
            <title>Title</title>
         </head>
         <body>
			 <table border="1" > 
				<tr style="background-color:yellow">
				<th>Customer Id</th>
				<th>Status</th>
				<th>Name</th>
				<th>Price</th>
				<th>Qty</th>
				</tr>
			 <xsl:for-each select="orders/order"> 
				 <tr>
                  <td><xsl:value-of select="customerid"/></td>
                  <td><xsl:value-of select="status"/></td>
                  <xsl:for-each select="item"> 

				  <td><xsl:value-of select="name"/></td>
				  <td><xsl:value-of select="price"/></td>
                  <td><xsl:value-of select="qty"/></td>
                    </xsl:for-each>
				 </tr>
			 </xsl:for-each>
			 </table>
         </body>

      </html>
   </xsl:template>
</xsl:stylesheet>