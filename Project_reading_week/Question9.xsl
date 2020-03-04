<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <head>
            <title>Element Page</title>
            <style>body {
			        	margin-right: 20%;
						margin-left: 20%;
						background-color: lightgrey;
						margin-top: 20px;
						}
				th 	{
					 background-color: blue; 
					 color: cornsilk;
					 }
				td 	{ 
						border-bottom: none; 
						text-align:center; 
                  height:20px;
					}
				h1 	{	text-align:center;	
					}
				table {
						background-color: khaki;
						}</style>
         </head>
         <body>
            <h1>QUESTION 9</h1>
            <table border="1">
  
  <th>Customer ID</th>
  <th>Status</th>
  <th>Items </th>
  
  
  <xsl:for-each select="orders/order">
  
  <tr>
    <td><xsl:value-of select="customerid"/></td>

    <td><xsl:value-of select="status"/></td>
  

    <td>
      <table border="1" width="500">
        <td>In Stock</td>
        <td>Item Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Qty</td>
          <xsl:for-each select="item">
          <xsl:sort select="@itemid"/>

          <tr>

           <xsl:choose>
            <xsl:when test="@instock ='N'">

            <td bgcolor="red">
            <xsl:value-of select="@instock"/>
            </td>
            <td  bgcolor="red">
            <xsl:value-of select="@itemid"/>
            </td>

            <td  bgcolor="red">
            <xsl:value-of select="name"/>
            </td>
            
            <td  bgcolor="red">
            <xsl:value-of select="price"/>
            </td>
            
            <td bgcolor="red">
            <xsl:value-of select="qty"/>
            </td>

            </xsl:when>
            
            <xsl:otherwise>
            <td>
            <xsl:value-of select="@instock"/>
            </td>
            <td>
            <xsl:value-of select="@itemid"/>
            </td>
            <td>
            <xsl:value-of select="name"/>
            </td>
            <td>
            <xsl:value-of select="price"/>
            </td>
            <td>
            <xsl:value-of select="qty"/>
            </td>
            </xsl:otherwise>
            </xsl:choose>
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