<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="utf-8" indent="yes"/> <!-- el method ha de ser xml, html o text -->

<!--2. Retorna una llista amb els elements departaments. 
Aquests elements no hauran de tenir atributs i sí dos subelements: 
el nom del departament (Title) i l'informació del seu cap (subelement Chair sencer). 
Transformar a fitxer XML-->

    <!--Me pongo en la ruta del departamento -->
    <xsl:template match="/Course_Catalog/Department">
    <!-- Copio el elemento de la ruta en la que estoy -->
        <xsl:copy>  
            <!--Añado un elemento que se llama Title-->
            <xsl:element name="Title"> 
                <!-- Copio el valor del elemento Title-->
                <xsl:value-of select="Title"/>
                <!-- Copio todos los elementos de Chair-->
                <xsl:copy-of select="Chair"/>
            </xsl:element>
        </xsl:copy>
    </xsl:template>   
</xsl:stylesheet>