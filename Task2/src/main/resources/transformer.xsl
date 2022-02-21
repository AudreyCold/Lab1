<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:template match="root">
        <html>
            <head>
                <meta charset="UTF-8"></meta>
            </head>
            <body>
                <xsl:for-each select="./*">
                    <p>
                        <xsl:value-of select="name()"/> id=<xsl:value-of select="./@id"/>
                    </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
