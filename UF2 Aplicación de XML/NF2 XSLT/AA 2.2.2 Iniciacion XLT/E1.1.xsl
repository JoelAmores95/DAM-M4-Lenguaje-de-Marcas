<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes"/> <!-- el method ha de ser xml, html o text -->

<!-- 1. Retorna una llista amb els noms del departaments (Title). 
Transformar a fitxer HTML-->

    <!-- Empiezo en la raíz -->
    <xsl:template match="/">
        <html>
            <body>
                <h1>Exercici 1: Mostrar tots els Title</h1>
                <ul>
                    <!-- Hago un bucle por cada elemento Department -->
                    <xsl:for-each select="Course_Catalog/Department">
                    <!-- Cojo el valor de Title, cada uno en una línea -->
                    <li><xsl:value-of select="Title"/></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>   
</xsl:stylesheet>