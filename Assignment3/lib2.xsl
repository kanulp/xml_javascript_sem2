<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title>Title of the page</title>
            <STYLE>
               
                    #heading{
                            background-color: lightblue;
                    }
                

        </STYLE>
         </head>
         <body>
       <table border="1">
         <tr id='heading'>
          <th> ISBN</th>
          <th> TITLE</th>
          <th> AUTHORS</th>
          <th> PUBLISHER</th>
          <th> STATUS</th>
           </tr>
         
         <xsl:for-each select="itemlist/item[type='Visual Material']">
         <xsl:sort select="authors/author"/>

          <tr>

            <td><xsl:value-of select="isbn"/> </td>
            <td><xsl:value-of select="title"/> </td>
            <td><xsl:value-of select="authors/author"/> </td>
            <td><xsl:value-of select="publisher"/> </td>
            <td><xsl:value-of select="status"/> </td>
          
          </tr>
          </xsl:for-each>
       </table>
         </body>

      </html>
   </xsl:template>
</xsl:stylesheet>
