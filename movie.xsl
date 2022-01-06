<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1 style="text-align:center">Movie Details</h1>
				<xsl:apply-templates select = "Mall/Movie" /> 
				<table border="2" align="center">
					<tr>
						<th>Movie ID</th>
		                <th>Movie Name</th>
		                <th>Language</th>
		                <th>Collection</th>
		                <th>Ratings</th>
		                <th>Price</th>
		            </tr>
		            <xsl:for-each select="Mall/Movie">
		            	<xsl:sort select="Movieid" order="ascending"/>
		            	<xsl:if test="Price &gt; 250">
		                	<tr>
		                		<td>
		                			<xsl:value-of select="Movieid"/>
		                		</td>
		                		<td>
		                			<xsl:value-of select="MovieName"/>
		                        <td>
		                            <xsl:value-of select="Language"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Collection"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Ratings"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Price"/>
		                        </td>
		                        <td>
		                        	<xsl:choose>
		                        		<xsl:when test="Ratings &gt; 3">Movie is awesome!</xsl:when>
									    <xsl:otherwise>Movie is okay</xsl:otherwise>
							        </xsl:choose>
						        </td>
					        </td>
					    </tr>
		                </xsl:if>
		            </xsl:for-each>
		        </table>
		    </body>
		</html>
</xsl:template>
        <xsl:template match = "MovieName"> 
        	<span style = "font-size = 22px;"> <xsl:value-of select = "." />     </span> <br/> 
        </xsl:template>  
</xsl:stylesheet>