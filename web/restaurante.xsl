<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat" />
    <xsl:template match="reservaeventos">
        <html lang="es">

            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta charset="utf-8" />
                <meta name="description" content="Página principal" />
                <title>titulo de la web</title>
            </head>

            <body>
                <header>
                    <img src="../img/logotipo.png" alt="Reservas" />
                    <a href="teatro.xml">Teatro</a>
                    <a href="restaurante.xml">Restaurante</a>
                    <a href="festival.xml">Festival</a>
                </header>

                <main>

                    <xsl:apply-templates select="restaurante" />

                </main>

                <footer>
                    <address>&#169; 2020 desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>

    </xsl:template>
    <xsl:template match="restaurante">
        <h1>
            <xsl:value-of select="nombrerestaurante" /> - <xsl:value-of
                select="ciudad" />
        </h1>
                <xsl:apply-templates select="menu" />
    </xsl:template>

    <xsl:template match="menu">

        <article
            class="restaurante">
            <h3>
                <xsl:value-of select="@tipo" />
            </h3>
            <xsl:apply-templates select="plato" />
        </article>
    </xsl:template>

    <xsl:template match="plato">
        <p>
            <xsl:value-of select='.' />
        </p>
    </xsl:template>

</xsl:stylesheet>