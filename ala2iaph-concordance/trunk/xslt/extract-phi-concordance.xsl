<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" version="1.0" indent="yes"/>

    <xsl:template match="xquery">
        <list>
            <xsl:for-each select="//bibl[@n='PHI']">
                <xsl:sort select="substring-after(following-sibling::epidoc, 'iAph')"
                    data-type="number"/>
                <item>
                    <ref n="IAph2007">
                        <xsl:value-of select="following-sibling::epidoc"/>
                    </ref>
                    <ref n="PHI-number">
                        <xsl:value-of select="biblScope[1]"/>
                    </ref>
                    <ref n="PHI-id">
                        <xsl:text>http://epigraphy.packhum.org/inscriptions/main?url=oi%3Fikey%3D</xsl:text>
                        <xsl:value-of
                            select="document('../xml/phi-ids.xml')//item[./phino=current()/biblScope[1]]/phiid"
                        />
                    </ref>
                </item>
            </xsl:for-each>
        </list>
    </xsl:template>

</xsl:stylesheet>
