<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Warm up</title>
                <style>
                    .tableHead{
                        background-color:yellow;
                    }
                </style>
            </head>
            <body>
                <h1>List of not available </h1>
                <table border="1">
                    <tr class="tableHead">
                        <td>ISBN</td>
                        <td>Title</td>
                        <td>Return</td>
                        <td>Publisher</td>
                        <td>Collection</td>
                    </tr>
                    <xsl:for-each select="itemlist/item[status !='Available']">
                        <tr>
                            <td>
                                <xsl:value-of select="isbn"/>
                            </td>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="status/@return"/>
                            </td>
                            <td>
                                <xsl:value-of select="publisher"/>
                            </td>
                            <td>
                                <xsl:value-of select="collection"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>