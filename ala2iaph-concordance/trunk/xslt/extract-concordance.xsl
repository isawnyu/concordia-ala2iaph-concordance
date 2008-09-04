<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:output method="xml" version="1.0" indent="yes"/>

<xsl:template match="xquery">
    <list>
        <xsl:for-each select="//bibl[@n='ALA' or @n='ala2004']">
            <item>
                <ref n="ala2004">
                    <xsl:text>eAla</xsl:text><xsl:choose>
                        <xsl:when test="number(biblScope[1])">
                            <xsl:number value=".//biblScope[1]" format="001" />
                        </xsl:when>
                        <xsl:when test="contains(.//biblScope[1], '.')">
                            <xsl:number value="substring-before(.//biblScope[1], '.')" format="001" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:number value="translate(.//biblScope[1], 'abc', '')" format="001" />
                        </xsl:otherwise>
                    </xsl:choose>
                </ref>
                <ref n="IAph2007">
                    <xsl:value-of select="following-sibling::epidoc"/>
                </ref>
            </item>
        </xsl:for-each>
    </list>
</xsl:template>

</xsl:stylesheet>
