<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">


		<!-- Top News Start-->
		<div class="top-news">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 tn-left">
						<div class="tn-img">
							<img src="{/rss/channel/item[1]/enclosure/@url}" />
							<div class="tn-content">
								<div class="tn-content-inner">
									<a class="tn-date" href="">
										<i class="far fa-clock"></i>
										<xsl:value-of select="rss/channel/item[1]/pubDate"/>
									</a>
									<a class="tn-title" href="{/rss/channel/item[1]/link}">
									<xsl:value-of select="rss/channel/item[1]/title"/>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 tn-right">
						<div class="row">
							<div class="col-md-6">
								<div class="tn-img">
									<img src="{/rss/channel/item[2]/enclosure/@url}" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="">
												<i class="far fa-clock"></i>
												<xsl:value-of select="rss/channel/item[2]/pubDate"/>
											</a>
											<a class="tn-title" href="{/rss/channel/item[2]/link}">
												<xsl:value-of select="rss/channel/item[2]/title"/>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="{/rss/channel/item[3]/enclosure/@url}" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="">
												<i class="far fa-clock"></i>
												<xsl:value-of select="rss/channel/item[3]/pubDate"/>
											</a>
											<a class="tn-title" href="{/rss/channel/item[3]/link}">
												<xsl:value-of select="rss/channel/item[3]/title"/>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="{/rss/channel/item[4]/enclosure/@url}" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="">
												<i class="far fa-clock"></i>
												<xsl:value-of select="rss/channel/item[4]/pubDate"/>
											</a>
											<a class="tn-title" href="{/rss/channel/item[4]/link}">
												<xsl:value-of select="rss/channel/item[4]/title"/>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="{/rss/channel/item[5]/enclosure/@url}" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="">
												<i class="far fa-clock"></i>
												<xsl:value-of select="rss/channel/item[5]/pubDate"/>
											</a>
											<a class="tn-title" href="{/rss/channel/item[5]/link}">
												<xsl:value-of select="rss/channel/item[5]/title"/>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Top News End-->
		
    </xsl:template>
</xsl:stylesheet>
