<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <thead>
                        <tr>

                            <td>Nombre del producto</td>
                            <td>Stock</td>
                        </tr>
                    </thead>

                    <tbody>
                        <xsl:for-each select="/productos/producto">
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="@stock &gt; 0">
                                        <td>
                                            <xsl:value-of select="." />
                                        </td>    
                                        <td>
                                            <xsl:value-of select="@*" />
                                        </td>
                                    </xsl:when>
                                    <xsl:when test="@stock = 0">
                                        <td>
                                            <xsl:value-of select="." />
                                        </td>

                                        <td>
                                            <p>No hay stock</p>
                                        </td>
                                    </xsl:when>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>