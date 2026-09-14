<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

		<div class="col-md-6">
			<h2>
				<i class="fas fa-align-justify"></i>sports
			</h2>
			<div class="row cn-slider">
				
				<div class="col-md-6">
					<div class="cn-img">
						<img src="{/rss/channel/item[1]/enclosure/@url}" />
						<div class="cn-content">
							<div class="cn-content-inner">
								<a class="cn-date" href="" dir="ltr">
									<i class="far fa-clock"></i>
									<xsl:value-of select="rss/channel/item[1]/pubDate"/>
								</a>
								<a class="cn-title" href="{/rss/channel/item[1]/link}">
									<xsl:value-of select="rss/channel/item[1]/title"/>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cn-img">
						<img src="{/rss/channel/item[2]/enclosure/@url}" />
						<div class="cn-content">
							<div class="cn-content-inner">
								<a class="cn-date" href="">
									<i class="far fa-clock"></i>
									<xsl:value-of select="rss/channel/item[2]/pubDate"/>
								</a>
								<a class="cn-title" href="{/rss/channel/item[2]/link}">
									<xsl:value-of select="rss/channel/item[2]/title"/>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cn-img">
						<img src="{/rss/channel/item[3]/enclosure/@url}" />
						<div class="cn-content">
							<div class="cn-content-inner">
								<a class="cn-date" href="">
									<i class="far fa-clock"></i>
									<xsl:value-of select="rss/channel/item[3]/pubDate"/>
								</a>
								<a class="cn-title" href="{/rss/channel/item[3]/link}">
									<xsl:value-of select="rss/channel/item[3]/title"/>

								</a>
							</div>
						</div>
					</div>
				</div>
			
			
			</div>
		</div>
		
	</xsl:template>
</xsl:stylesheet>
