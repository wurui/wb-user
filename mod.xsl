<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.wb-user">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-wb-user" ox-mod="wb-user">
            
            <xsl:variable name="user" select="data/user-ext/i[1]"/>
            
            <div class="banner" style="background-image:url({$user/img})"></div>
            <div class="user">
            	<span class="avatar" style="background-image:url(http://i.oxm1.cc/uploads/{login/uid}/user/avatar.png@!w60)"></span>
            	<h3>
            		<b class="user-name"><xsl:value-of select="login/nick"/></b>
            		<em class="sex-{$user/sex}"></em>
            	</h3>
            	<p class="brief"><xsl:value-of select="$user/slogan"/></p>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
