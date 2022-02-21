<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:template match="root">
        <html>
            <head>
                <meta charset="UTF-8"></meta>
            </head>
            <body>
                <xsl:for-each select="./*">
                    <xsl:variable name="color">
                        <xsl:if test="name() = 'BBB'">red</xsl:if>
                        <xsl:if test="name() = 'CCC'">blue</xsl:if>
                        <xsl:if test="name() = 'DDD'">green</xsl:if>
                    </xsl:variable>
                    <xsl:if test="name() != 'AAA'">
                        <font color="{$color}">
                            <xsl:value-of select="name()"/> id=<xsl:value-of select="./@id"/>
                        </font>
                    </xsl:if>
                    <xsl:value-of select="position()"/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
