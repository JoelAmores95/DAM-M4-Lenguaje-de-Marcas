<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"/> 

    <!-- 3. Mostra els països on es parla un idioma que continguin la cadena "ian". 
    Per aquests països, recupera'ls dins d'un nou element country on guardis el seu nom i el seu idioma com a subelements. -->

    <xsl:template match="/*">
        <!-- Elemento countries-->
        <countries>
            <!-- Filtro las lenguas que tienen 'ian', aquí irá la parte de abajo-->
            <xsl:apply-templates select="/countries/country/language[contains(text(),'ian')]/.."/>
        </countries>
    </xsl:template>

    
    <xsl:template match="country">
        <!-- Elemento fijo country-->
        <country>    
            <!-- Creo el nom-->
            <xsl:element name="nom">
                <xsl:value-of select="@name"/>
            </xsl:element>
            <!-- Creo el language-->
            <xsl:element name="llenguatge">
                <xsl:value-of select="language[contains(text(),'ian')]"/>
            </xsl:element>
        </country>
    </xsl:template>
</xsl:stylesheet>