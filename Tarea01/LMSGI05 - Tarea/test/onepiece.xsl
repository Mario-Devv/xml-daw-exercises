<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>OnePiece</title>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="//serie/titulo" />
                    </h1>
                </header>
                <main>
                    <main>
                        <p>
                            <xsl:value-of select="//serie/sinopsis" />
                        </p>

                        <div>
                            <h2>Tripulación</h2>

                            <table border="1">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Rol</th>
                                    <th>Recompensa</th>

                                </tr>

                                <xsl:for-each select="//tripulacion/miembro">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="./nombre" />
                                        </td>

                                        <td>
                                            <xsl:value-of select="./rol" />
                                        </td>

                                        <td>
                                            <xsl:value-of select="./@recompensa" />
                                        </td>
                                    </tr>

                                    <tr>
                                    </tr>

                                </xsl:for-each>


                            </table>
                        </div>

                        <h2>
                            Eventos importantes
                        </h2>
                        <nav>
                            <ul>
                                <xsl:for-each select="//eventos/evento[@importancia='muy alta' or @importancia='alta']">
                                <li>
                                    <p>
                                        <b><xsl:value-of select="./titulo" /></b>
                                        - 
                                        <xsl:value-of select="./descripcion" />
                                    </p>
                                </li>    
                                </xsl:for-each>
                            </ul>
                        </nav>
                    </main>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>