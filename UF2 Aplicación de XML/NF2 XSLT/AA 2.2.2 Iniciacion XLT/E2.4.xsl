<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"/> <!-- el method ha de ser xml, html o text -->

    <!--4. Mostra una llista dels països que tenen més de 3 idiomes. 
    Es recuperarà el nom del país com atribut i el número d'idiomes com a subelement. 
    Ordena els elements en ordre descendent per número d'idiomes.-->
    
    <!-- Siempre empiezo desde la raiz -->
    <xsl:template match="/">
        <!-- Esta primera parte la hago yo, es la raíz, la pongo MANUAL -->
        <countries>    

            <!-- Ahora iría countries, así que los filtro ya, por CADA UNO -->    
            <xsl:for-each select="countries/country[count(language)&gt;3]">

            <!-- Una vez los tengo, los ordeno de más a menos -->
            <xsl:sort select="count(language)" order="descending"/>
            <!-- Este lo pondré después -->
            <xsl:apply-templates select="."/>
            </xsl:for-each>
        </countries>
    </xsl:template>

    <!-- Otra plantilla, la que iba a poner después-->
    <xsl:template match="country">

        <!-- Se crea el elemento country-->
        <xsl:copy>
            <xsl:attribute name="nom">
                <xsl:value-of select="@name"/>
            </xsl:attribute>
            <xsl:element name="idiomes">
                <xsl:value-of select="count(language)"/>
            </xsl:element>
        </xsl:copy>

    </xsl:template>
</xsl:stylesheet>