<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="bdfnaviviendafinal.xml" -->

<!DOCTYPE xsl:stylesheet  

[<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata" xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices">
<xsl:output method="html" encoding="utf-8"/>

<xsl:template match="/">

<xsl:for-each select="atom:feed/atom:entry/atom:content/m:properties/d:RowKey">
<table width="200" border="1">
<tr><td><h4>RowKey:</h4></td>
	<td><xsl:value-of select="."/></td></tr>
<tr><td><h4>Proyecto:</h4></td>
	<td><xsl:value-of select="../d:nombreproyecto"/></td>
</tr><tr><td><h4>Dirección:</h4></td>
	<td><xsl:value-of select="../d:direccionproyecto"/></td></tr>
<tr><td><h4>Barrio:</h4></td>
	<td><xsl:value-of select="../d:barrio"/></td></tr>
</table><br />
</xsl:for-each>

</xsl:template>
</xsl:stylesheet>