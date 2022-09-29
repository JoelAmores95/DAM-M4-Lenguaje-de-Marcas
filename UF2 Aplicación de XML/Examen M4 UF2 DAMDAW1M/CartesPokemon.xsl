<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" indent="yes"/> <!-- el method ha de ser xml, html o text -->

    <xsl:template match="/">
    <html>
        <head>
            <meta charset="utf-8"/>
            <title>Pokemon</title>
            <style>
                    body{
                        display: flex;
                flex-wrap: wrap;
                    }
                    .card {
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                    width: 250px;
                        background: #39394a;
                        border-radius: 6px;
                        margin: 20px;
                        border: 5px solid #9494a4;
                        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    }

                    .pokemon-name {
                        text-transform: capitalize;
                        font-size: 2em;
                        color: #f66a6a;
                    }

                    .pokemon-image {
                    max-width: 80%;
                    }

                    .pokemon-stats {
                        font-size: 1.8rem;
                        color: #ffffff;
                    }
            </style>
        </head>
        <body>           

            <xsl:for-each select="pokedex/pokemon">
                <div class="card">
                    <h3 class="pokemon-name"><xsl:value-of select = "nom"/></h3>

                    <img class = "pokemon-image">                    
                        <xsl:attribute name="src"> 
                            <xsl:value-of select ="imatge"/>
                        </xsl:attribute>
                    </img>

                    <p class ="pokemon-stats"><xsl:value-of select ="experiencia"/></p>
                </div>
            </xsl:for-each>            

        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>




