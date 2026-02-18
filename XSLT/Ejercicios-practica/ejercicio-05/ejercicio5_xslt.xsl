<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <thead>
                        <tr>
                            <td>Departamento</td>
                            <td>Nombre del empleado</td>
                        </tr>
                    </thead>
                    <tbody>

                        <xsl:for-each select="/empresa/departamento/empleados/empleado">
                                <tr>
                                    <td>
                                        <xsl:value-of select="../../nombre" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="." /> 
                                    </td>
                                </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>