<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 

<xsl:output method = "html"  doctype-system = "about:legacy-compact" /> 

<xsl:template match = "/"> 
	<html xmlns = "http://www.w3.org/1999/xhtml"> 
		<head> 
			<title><xsl:value-of select = "product/@name"/> </title> 
		</head> 
		<body> 
			<h1><xsl:value-of select = "product/product1/@name"/></h1> 
			<h2><xsl:value-of select = "product/product1/servingsize"/></h2> 
				<table border = "1" style = "background-color: #81F7F3"> 
					<thead> 
						<tr> 
							<th>Calories</th> 
							<th>Fat</th> 
							<th>Cholesterol</th> 
							<th>Sodium</th> 
							<th>Carbohydrates</th> 
							<th>Protein</th> 
						</tr> 
					</thead> 
					
					<xsl:for-each select = "product/product1"> 
					<tr> 
						<td>total: <xsl:value-of select = "calories/total"/></td> 
						<td>total: <xsl:value-of select = "fat/total"/></td> 
						<td><xsl:value-of select = "cholesterol"/></td> 
						<td><xsl:value-of select = "sodium"/></td> 
						<td>total: <xsl:value-of select = "carbohydrates/total"/></td>
						<td><xsl:value-of select = "protein"/></td> 
					</tr> 
					</xsl:for-each> 
					
					<xsl:for-each select = "product/product1"> 
					<tr> 
						<td>fat: <xsl:value-of select = "calories/fat"/></td> 
						<td>saturated: <xsl:value-of select = "fat/saturated"/></td> 
						<td></td> 
						<td></td> 
						<td>fiber: <xsl:value-of select = "carbohydrates/fiber"/></td> 
						<td></td> 
					</tr> 
					</xsl:for-each> 
					
					<xsl:for-each select = "product/product1"> 
					<tr> 
						<td></td> 
						<td></td> 
						<td></td> 
						<td></td> 
						<td>sugars: <xsl:value-of select ="carbohydrates/sugars"/></td> 
						<td></td> 
					</tr> 
				</xsl:for-each> 
			</table> 
			
<h1><xsl:value-of select = "product/product2/@name"/></h1> 
			<h2><xsl:value-of select = "product/product2/servingsize"/></h2> 
				<table border = "1" style = "background-color: yellow"> 
					<thead> 
						<tr> 
							<th>Calories</th> 
							<th>Fat</th> 
							<th>Cholesterol</th> 
							<th>Sodium</th> 
							<th>Carbohydrates</th> 
							<th>Protein</th> 
						</tr> 
					</thead> 
					
					<xsl:for-each select = "product/product2"> 
					<tr> 
						<td>total: <xsl:value-of select = "calories/total"/></td> 
						<td>total: <xsl:value-of select = "fat/total"/></td> 
						<td><xsl:value-of select = "cholesterol"/></td> 
						<td><xsl:value-of select = "sodium"/></td> 
						<td>total: <xsl:value-of select = "carbohydrates/total"/></td>
						<td><xsl:value-of select = "protein"/></td> 
					</tr> 
					</xsl:for-each> 
					
					<xsl:for-each select = "product/product2"> 
					<tr> 
						<td>fat: <xsl:value-of select = "calories/fat"/></td> 
						<td>saturated: <xsl:value-of select = "fat/saturated"/></td> 
						<td></td> 
						<td></td> 
						<td>fiber: <xsl:value-of select = "carbohydrates/fiber"/></td> 
						<td></td> 
					</tr> 
					</xsl:for-each> 
					
					<xsl:for-each select = "product/product2"> 
					<tr> 
						<td></td> 
						<td></td> 
						<td></td> 
						<td></td> 
						<td>sugars: <xsl:value-of select ="carbohydrates/sugars"/></td> 
						<td></td> 
					</tr> 
				</xsl:for-each> 
			</table> 			
			
		</body> 
		</html> 
	</xsl:template> 
</xsl:stylesheet> 