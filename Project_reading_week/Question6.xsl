<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <head>
            <title>INSTOCK ELEMENTS</title>
            <style>
         body {
               margin-right: 20%;
               margin-left: 20%;
               background-color: darkcyan;
               margin-top: 20px;
               }
         th {
               background-color: black; 
               color: cornsilk;
               border-bottom: black;
               height:50px;
            }
         td { 
               border-bottom: black; 
               text-align:center; 
               height:30px;
               width: 70px;
               padding: 15px;
               text-transform: uppercase;
           }
         h1 {
         	   text-align:center;	
           }
         button { 
               color: greenyellow; 
               background-color: grey;
                margin-right: 45%;
               margin-left: 45%;
               }
         table {
               margin-right:30%;
               margin-left: 30%;
               display: inline-flex;
               background-color: darkturquoise ;
               border-radius: 10px;           
               }
               </style>
         </head>
         <body>
            <h1>QUESTION: 6</h1>
            <table border="1">
               <tr>
                  <th>NAME</th>
                  <th>PRICE</th>
                  <th>QTY</th>
               </tr>
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