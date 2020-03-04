<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <head>
            <title>Elements not in Stock</title>
            <style>
            tr,h1 {  
            color: red; 
            }
            </style>
         </head>
         <body>
         <h1>Elements not in Stock</h1>
            <table border="1">
               <thead style="background-color:lightblue">
                  <tr>
                     <th>NAME</th>
                     <th>PRICE</th>
                     <th>QTY</th>
                  </tr>
               </thead>
               <xsl:for-each select="//orders/order/item[@instock='N']">
                  <tr>
                     <td>
                        <xsl:value-of select="name" />
                     </td>
                     <td>
                        <xsl:value-of select="price" />
                     </td>
                     <td>
                        <xsl:value-of select="qty" />
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>