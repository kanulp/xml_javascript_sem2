<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <head>
            <title>Item List</title>
         </head>
         <body>
            <table border="1">
               <tr bgcolor="#8fef8e">
                  <th>Customer ID</th>
                  <th>Status</th>
                  <th>Items</th>
               </tr>
               <xsl:for-each select="orders/order">
                  <tr>
                     <td><xsl:value-of select="customerid" /></td>
                     <td><xsl:value-of select="status" /></td>
							<td>
                     <table border='1' width='500px'>
                     <tr><th>Item Name</th>
                     <th>Item Price</th>
                     <th>Item Quantity</th>
                    </tr>
                     <xsl:for-each select="item">
                     <tr>
                     <td><xsl:value-of select="name"/></td>
                     <td><xsl:value-of select="price"/></td>
                     <td><xsl:value-of select="qty"/></td>
                     </tr>
                     </xsl:for-each>
                     </table>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>