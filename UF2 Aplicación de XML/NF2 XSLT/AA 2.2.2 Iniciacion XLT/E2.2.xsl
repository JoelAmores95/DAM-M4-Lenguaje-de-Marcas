<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"/> <!-- el method ha de ser xml, html o text -->
    <xsl:template match="/countries/country">
        <xsl:copy>
            <xsl:for-each select=".">
                <xsl:attribute name="languages">    
                    <xsl:value-of select="language"/>
                </xsl:attribute>    
                <xsl:attribute name="cities">    
                    <xsl:value-of select="count(city)"/>
                </xsl:attribute>   
                <xsl:element name="nom">
                    <xsl:value-of select="@name"/>
                </xsl:element>
                <xsl:element name="poblacio">
                    <xsl:value-of select="@population"/>
                </xsl:element>
                
            </xsl:for-each>
        </xsl:copy>

    </xsl:template>

</xsl:stylesheet>