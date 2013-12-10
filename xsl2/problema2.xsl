<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="file:///C|/xampp/htdocs/solucionFNA/hechopormi/ciudad proyecto 11/bdfnaeducacion.xml" -->
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata" xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices">
<xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/">
  <xsl:for-each select="atom:feed/atom:entry/atom:content/m:properties[d:ciudadomunicipio = &apos;BUCARAMANGA&apos;]/d:universidad[not(. = preceding::d:universidad)]">
    <xsl:value-of select="."/><br />
  </xsl:for-each>
</xsl:template>
</xsl:stylesheet>