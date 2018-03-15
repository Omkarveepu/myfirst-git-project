<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:pref="URI_SOAP_WS">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:strip-space elements="*"/>

<xsl:template match="/">
    <soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope/" xmlns:pref="URI_SOAP_WS">
        <soap:Body>
            <xsl:apply-templates/>
        </soap:Body>
    </soap:Envelope>
</xsl:template>

<xsl:template match="*">
    <xsl:element name="{local-name()}">
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

</xsl:stylesheet>