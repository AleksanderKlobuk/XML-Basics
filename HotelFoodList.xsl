<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xls>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/foodlist">    <!--  xsl:template  IS XSLT ELEMENT  / match="/" .  IS XPATH  -->


        <html>
            <body>
                <h2>Food Item List in Hotel</h2>
                <table border="1">

                    <tr>
                        <th>Name</th>
                        <th>Cost</th>
                    </tr>

                    <xsl:for-each select="foodItem">
                    <tr>
                        <td><xsl:value-of select="foodItem/name"/></td>
                        <td><xsl:value-of select="foodItem/cost"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>
