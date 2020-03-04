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
				<tr style="background-color:red">
				</tr>
               <xsl:for-each select="orders/order">
               <tr>
               <td> <xsl:value-of select="item[@instock='N']"/> 	</td>
                  
               </tr>
             </xsl:for-each>
             </table>
         </body>

      </html>
   </xsl:template>
</xsl:stylesheet>