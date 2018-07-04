<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.wb-user">
    	<xsl:param name="link_edit" oxm:comment="用户设置页面"/>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-wb-user" ox-mod="wb-user">
            
            <xsl:variable name="user" select="data/user-ext/i[1]"/>
            <xsl:variable name="login_uid" select="login/uid"/>
            <xsl:choose>
            	<xsl:when test="$user">
            		<div class="banner" style="background-image:url({$user/img})">
            			<xsl:if test=" $login_uid = $user/uid">
	            			<a href="{$link_edit}" class="bt-set">设置</a>
	            		</xsl:if>
            		</div>
		            <div class="user">
		            	<span class="avatar" style="background-image:url({$user/avatar})"></span>
		            	<div class="text">
		            		<h3>
			            		<b class="user-name"><xsl:value-of select="$user/nick"/></b>
			            		<em class="sex-{$user/sex}"></em>
			            	</h3>
			            	<p class="brief"><xsl:value-of select="$user/slogan"/></p>
		            	</div>
		            </div>
            	</xsl:when>
            	<xsl:otherwise>
            		<div class="nodata">
            			<div class="banner">
                            <xsl:if test="$login_uid">
                                <a href="{$link_edit}" class="bt-set">我的主页</a>    
                            </xsl:if>
                            <xsl:if test="not($login_uid)">
                                <b class="J_login bt-set">登录</b>
                            </xsl:if>
            			</div>
			            <div class="user">
			            	<span class="avatar"></span>
			            </div>
            		</div>
            		
            	</xsl:otherwise>
            </xsl:choose>
            
        </div>
    </xsl:template>
</xsl:stylesheet>
