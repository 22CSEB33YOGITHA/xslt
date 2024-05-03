--> student.xml
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="stu.xslt"?>
<students>
    <student>
        <name>John Smith</name>
        <grade>A</grade>
    </student>
    <student>
        <name>Jane Doe</name>
        <grade>B</grade>
    </student>
    <student>
        <name>Michael Johnson</name>
        <grade>A</grade>
    </student>
</students>

--> stu.xslt
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Grades</title>
            </head>
            <body>
                <h1>Student Grades</h1>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Grade</th>
                    </tr>
                    <xsl:apply-templates select="students/student"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student">
        <tr>
            <xsl:choose>
                <xsl:when test="grade='A'">
                    <xsl:attribute name="style">background-color: yellow;</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="style">background-color: transparent;</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="grade"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
