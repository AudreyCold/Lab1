<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:template match="employees">
        <html>
            <head>
                <meta charset="UTF-8"></meta>
            </head>
            <body>
                <xsl:for-each select="./*">
                    <b><i><xsl:value-of select="./@id"/></i></b> <xsl:value-of select="."/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
