<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- 5. Esborra les dades de tots els països l'àrea dels quals sigui superior a 40.000 i no tinguin ciutats. 
L'estructura de dades dels països serà la mateixa que a l'apartat anterior. -->

	<xsl:template match="/">
		<countries>
			<xsl:apply-templates select="countries/country[@area &lt; 40000 or city or @area = 40000]"/>
		</countries>
	</xsl:template>
    
	<xsl:template match="country">
		<xsl:copy>
			<xsl:attribute name="nom">
				<xsl:value-of select="@name"/>
			</xsl:attribute>
			<xsl:element name="extensio">
				<xsl:value-of select="@area"/>
			</xsl:element>
			<xsl:element name="cities">
				<xsl:value-of select="count(city)"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
