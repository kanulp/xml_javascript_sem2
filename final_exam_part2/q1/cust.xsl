<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title>Title of the page</title>
         </head>
         <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
              }
              
              th{
                  color : yellow;
                  background-color : blue;
              }

             td, th {
            border: 1px solid #ddd;
            padding: 8px;
                }   

             tr:nth-child(even){background-color: #f2f2f2;}
              
            </style>
         <body>

             <h1>XSLT Answer 1</h1>
             <table border="1">
                <tr>
                    <th> Customer ID </th>
                    <th> FName </th>
                    <th> LName </th>
                    <th> Product </th>
                    <th> Invoice No </th>
                </tr>
                <xsl:for-each select="customers/customer">
                    <tr>
                        <td>
                            <xsl:value-of select="customerID"/>
                        </td>
                        <td>
                            <xsl:value-of select="fname"/>
                        </td>
                        <td>
                            <xsl:value-of select="lname"/>
                        </td>
                        <td>
                            <xsl:value-of select="product"/>
                        </td>
                        <td>
                            <xsl:value-of select="invoiceNo"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
         </body>

      </html>
   </xsl:template>
</xsl:stylesheet>
