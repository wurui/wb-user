<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.wb-user">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-wb-user" ox-mod="wb-user">
            <div class="banner" style="background-image:url({data/banner/i[1]/img})"></div>
            <xsl:variable name="user" select="data/user/i[1]"/>
            <div class="user">
            	<span class="avatar" style="background-image:url({$user/avatar})"></span>
            	<h3>
            		<b class="user-name"><xsl:value-of select="$user/name"/></b>
            		<em class="sex-{$user/sex}"></em>
            	</h3>
            	<p class="brief"><xsl:value-of select="$user/brief"/></p>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
