<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    Employee Management System
                </title>
                <style>
                    h2
                    {
                        text-align:center;
                        padding:1rem;
                        font-family:"Poppins";
                        font-size:50px;
                    }

                    table
                    {
                        width:50%;
                        height:50%;
                        text-align: center;
                        margin-left: 24rem;
                        font-family:"Poppins";
                    }

                </style>
            </head>
            <body>
                <h2>Profile Details</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Name</th>
                        <th>Tagline</th>
                        <th>DOB</th>
                        <th>Codes</th>

                        
                    </tr>
                    <xsl:for-each select="Profile_Details/profile">    
                    <tr>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="tagline" />
                            </td>
                            <td>
                                <xsl:value-of select="dob" />
                            </td>
                            <td>
                                <xsl:value-of select="codes" />
                            </td>
                            
                    </tr>
                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>