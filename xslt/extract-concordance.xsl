<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:template match="xquery">
    <list>
        <xsl:for-each select="word/bibl[@n='ALA' or @n='ala2004']">
            <item>
                <ref n="ala2004">
                    <xsl:text>eAla</xsl:text>
                    <xsl:number select="biblScope[1]" format="000"/>
                </ref>
                <ref n="IAph2007">
                    <xsl:value-of select="following-sibling::epidoc"/>
                </ref>
            </item>
        </xsl:for-each>
    </list>
</xsl:template>

</xsl:stylesheet>
