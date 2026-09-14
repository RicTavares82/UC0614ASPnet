<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<xsl:for-each select="rss/channel/item">

			<h4>
				<a href="{link}" target="_blank" class="titulo">
				<xsl:value-of select="title"/>
				</a>
			</h4>			
			<b>
				<xsl:value-of select="category"/></b> - <i><xsl:value-of select="pubDate" /></i>
			<br/><img src="{enclosure/@url}" style="width:150px; height:100px"></img>

			<hr/>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
