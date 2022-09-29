<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"/> <!-- el method ha de ser xml, html o text -->

    <!-- 3. Crea una versió reduïda del document courses que contingui la informació sobre el departament de Electrical Engineering (EE). 
    Per a cada curs, recupera l'element Course amb el seu número (Number) i títol (Title) com atributs, 
    la seva descripció (Description) com a subelement i el cognom de cada professor (Instructor) com un subelement Instructor. 
    Descarta tota la informació sobre el nom del departament (title), caps (chairs), matrícules i prerrequisits. Transformar a fitxer XML -->

    <xsl:template match="/">
        <Courses>
		<xsl:apply-templates select ="Course_Catalog/Department[@Code='EE']/Course"/>
		</Courses>
    </xsl:template>

	<!-- Me pongo en la ruta Department con código EE -->
    <xsl:template match="Course">
        <!-- Por cada elemento, hago una copia -->
        <xsl:copy>
        
            <!-- Creo un atributo vacío Title -->
            <xsl:attribute name ="Title">
                <!-- Le asigno el valor de la tabla original "Title" -->
                <xsl:value-of select="Title"/>
            </xsl:attribute>

            <xsl:attribute name="Number">			
                <xsl:value-of select="@Number"/>
            </xsl:attribute>

            <!-- Creo un elemento vacío Description-->
            <xsl:element name="Description">
                <!-- Le asigno el valor de Description -->
                <xsl:value-of select="Description"/>
            </xsl:element>   

            <!-- Creo un elemento vacío Instructor -->         
            <xsl:element name ="Instructor">
                <!-- Le asigno el valor de Last_Name -->
                <xsl:value-of select ="Instructors/Professor/Last_Name"/>
            </xsl:element>       

        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>