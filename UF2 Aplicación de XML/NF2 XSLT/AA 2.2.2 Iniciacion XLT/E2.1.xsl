<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"/> <!-- el method ha de ser xml, html o text -->

    <!-- 1. Retorna tots els països amb un àrea entre 2000 i 10000km2. 
    Manté la mateixa estructutra dels elements country en el fitxer original. -->

    <!-- Me posiciono en country-->
    <xsl:template match="/">

        <!--Etiqueta Manual-->
        <countries>
            <!-- Por cada elemento con esas caracteristicas...-->
            <xsl:for-each select="/countries/country[@area &lt; 10000 and @area &gt; 2000]">
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </countries>
    </xsl:template>

    <!-- Mi template Cada elemento country tendrá esto -->
    <xsl:template match="country">
    <!-- Copia profunda de cada-->
        <xsl:copy-of select="."/>
    </xsl:template>
   
</xsl:stylesheet>