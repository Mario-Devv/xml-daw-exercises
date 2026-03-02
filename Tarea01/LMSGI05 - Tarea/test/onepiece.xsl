<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet" href="./reset.css" />
                <link rel="stylesheet" href="./styles.css" />
                <title>OnePiece</title>
            </head>
            <body>
                <header class="header">
                    <div class="header__box">
                        <!-- LOGO -->
                        <img class="header__logo" src="./img/Anchor.webp" alt="Ancla" />
                        <div>
                            <h1 class="header__title">
                                <xsl:value-of select="//serie/titulo" />
                            </h1>
                            <p class="header__psinopsis">
                                <xsl:value-of select="//serie/sinopsis" />
                            </p>
                        </div>

                    </div>
                </header>

                <main class="main">

                    <div class="main__box">
                        <h2 class="main__box_title">Tripulación</h2>

                        <table class="main__box_table">
                            <tr class="box__table_thead">
                                <th>Nombre</th>
                                <th>Rol</th>
                                <th>Recompensa</th>
                            </tr>

                            <xsl:for-each select="//tripulacion/miembro">
                                <tr>
                                    <td class="nombre">
                                        <xsl:value-of select="./nombre" />
                                    </td>

                                    <td class="rol">
                                        <xsl:value-of select="./rol" />
                                    </td>

                                    <td class="recompensa">
                                        <xsl:value-of select="./@recompensa" />
                                    </td>
                                </tr>
                            </xsl:for-each>


                        </table>
                    </div>

                    <div class="box__events">

                        <h2 class="events__title">
                            Eventos importantes
                        </h2>
                        <nav>
                            <ul class="events_menu">
                                <xsl:for-each
                                    select="//eventos/evento">
                                    <xsl:if test="@importancia='muy alta' or @importancia='alta'">

                                    <li class="events__menu_list">
                                        <div>
                                            <p>
                                                <b>
                                                    <xsl:value-of select="./titulo" />
                                                </b>
                                            </p>
                                            <p>
                                                <xsl:value-of select="./descripcion" />
                                            </p>
                                        </div>
                                    </li>
                                    </xsl:if>
                                </xsl:for-each>
                            </ul>
                        </nav>
                    </div>
                </main>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>