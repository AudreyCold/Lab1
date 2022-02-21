<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
 <xsl:template match="library">
  <html>
   <head>
    <meta charset="UTF-8"></meta>
   </head>
   <body>
   	 <font color='{color}'>
	 	<xsl:value-of select="book"/>
	 </font>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>
