<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title>Title of the page</title>
         </head>
         <body>
            <h1>here is the list</h1>
            <table border="1">
               <xsl:for-each select="authors/author">
                  <tr>
                     <td>
                        <xsl:value-of select="firstName"/>
                     </td>
                     <td>
                        <xsl:value-of select="lastName"/>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>

      </html>
   </xsl:template>
</xsl:stylesheet>
