<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <!-- Tus reglas de transformación van aquí -->
    <html>
            <body>
                <Header>
                    <h1>Detalle de potencias contratadas en el punto de suministro:</h1>
                </Header>

                <main>
                    <nav>
                        <ul>
                            <li> Referencia CPUS: <xsl:value-of
                                    select="//Codigo[starts-with(text(), 'ES') and contains(text(), 'CUPS')]" />
                            </li>
                            <li> Número de serie del contador: <xsl:value-of select="//NumeroSerie" />
                            </li>
                        </ul>
                    </nav>

                    <h2>Periodo watios</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Periodo</th>
                                <th>Watios</th>
                            </tr>
                        </thead>

                        <tbody>
                            <xsl:for-each select="//TerminoPotencia/Periodo">
                                <tr>
                                    <td>
                                        <xsl:value-of select="@nombre"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="./PotenciaContratada"></xsl:value-of>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>

                    </table>
                </main>

            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>