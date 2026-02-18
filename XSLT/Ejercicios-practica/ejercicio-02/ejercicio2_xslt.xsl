<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <nav>
                    <ul>
                        <xsl:for-each select="/biblioteca/libro">
                            <li>
                                <xsl:value-of select="titulo" />
                            </li>
                        </xsl:for-each>
                    </ul>
                </nav>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>