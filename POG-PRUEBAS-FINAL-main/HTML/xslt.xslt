<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/DATA">
        <html>
            <head>
                <title>Lista de Aviones</title>
            </head>
            <body>
                <h2>Lista de Aviones</h2>
                <table border="1">
                    <tr>
                        <th>Código</th>
                        <th>Fabricante</th>
                        <th>Modelo</th>
                        <th>Rango (millas)</th>
                        <th>Precio</th>
                        <th>Capacidad (kg)</th>
                        <th>Plazas</th>
                        <th>ID Hangar</th>
                    </tr>
                    <xsl:apply-templates select="ROW"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ROW">
        <tr>
            <td><xsl:value-of select="CodAvion"/></td>
            <td><xsl:value-of select="Fabricante"/></td>
            <td><xsl:value-of select="Modelo"/></td>
            <td><xsl:value-of select="Rango_millas"/></td>
            <td><xsl:value-of select="Precio"/></td>
            <td><xsl:value-of select="Capacidad_kg"/></td>
            <td><xsl:value-of select="Plazas"/></td>
            <td><xsl:value-of select="IdHangar"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>