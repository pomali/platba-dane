<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
	<xsl:output method="text" indent="yes" omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*" />
	<xsl:template match="dokument">
		<xsl:text>DAŇOVÉ PRIZNANIE K DANI Z PRÍJMOV FYZICKEJ OSOBY - TYP A</xsl:text>
		<xsl:text>
pre daňovníka, ktorý má príjmy len zo závislej činnosti
podľa § 5 zákona č. 595/2003 Z. z. o dani z príjmov v znení neskorších predpisov (ďalej len „zákon”)</xsl:text>
		<xsl:text>
    </xsl:text>
		<xsl:text>
Druh daňového priznania</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Daňové priznanie: </xsl:text>
		<xsl:call-template name="booleanCheckboxToString">
			<xsl:with-param name="boolValue" select="hlavicka/typDP/rdp" />
		</xsl:call-template>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Opravné daňové priznanie: </xsl:text>
		<xsl:call-template name="booleanCheckboxToString">
			<xsl:with-param name="boolValue" select="hlavicka/typDP/odp" />
		</xsl:call-template>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Dodatočné daňové priznanie: </xsl:text>
		<xsl:call-template name="booleanCheckboxToString">
			<xsl:with-param name="boolValue" select="hlavicka/typDP/ddp" />
		</xsl:call-template>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>


		<xsl:text>&#xA;</xsl:text>
		<xsl:text>DIČ (ak nie je pridelené, uvádza sa rodné číslo): </xsl:text>
		<xsl:value-of select="hlavicka/DICaleboRodneCislo"/>
		<xsl:text>&#xA;</xsl:text>

		<xsl:text>Dátum narodenia: </xsl:text>
		<xsl:value-of select="hlavicka/datumNarodenia"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="dokument/hlavicka/DICaleboRodneCislo">
	</xsl:template>
	<xsl:template match="dokument/hlavicka/datumNarodenia">
	</xsl:template>
	<xsl:template match="dokument/hlavicka/typDP/rdp">
	</xsl:template>
	<xsl:template match="dokument/hlavicka/typDP/odp">
	</xsl:template>
	<xsl:template match="dokument/hlavicka/typDP/ddp">
	</xsl:template>

	<xsl:template match="dokument/hlavicka/zdanovacieObdobie">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zdanovacieObdobie/rok">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Za rok: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zdanovacieObdobie/datumDDP">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Dátum zistenia skutočnosti na podanie dodatočného daňového priznania: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/priezvisko">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>I. ODDIEL - ÚDAJE O DAŇOVNÍKOVI</xsl:text>
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Priezvisko: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/meno">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Meno: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/titul">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Titul (pred menom): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/titulZa">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Titul (za priezviskom): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaTrvPobytu">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Adresa trvalého pobytu v deň podania daňového priznania na území Slovenskej republiky alebo v zahraničí</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaTrvPobytu/ulica">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Ulica: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaTrvPobytu/cislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Súpisné/orientačné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaTrvPobytu/psc">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>PSČ: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaTrvPobytu/obec">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Obec: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaTrvPobytu/stat">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Štát: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/nerezident">
		<!-- Tento template kontroluje, či je nerezident 1 -->
		<xsl:apply-templates select="nerezident" />
		<xsl:if test="nerezident = '1'">
			<!-- Ak je nerezident rovný 1, zobrazia sa tieto elementy -->
			<xsl:apply-templates select="TIN | datumOd | datumDo" />
		</xsl:if>
	</xsl:template>

	<xsl:template match="dokument/hlavicka/nerezident/nerezident">
		<!-- Tento template sa vždy vykoná -->
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Sekcia nerezident</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daňový nerezident: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template match="dokument/hlavicka/nerezident/datumOd">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Od: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template match="dokument/hlavicka/nerezident/datumDo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Do: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template match="dokument/hlavicka/nerezident/TIN">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Identifikačné číslo na daňové účely (TIN), pridelené v štáte daňovej rezidencie: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template match="dokument/hlavicka/adresaObvPobytu">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Adresa bydliska alebo adresa pobytu na území Slovenskej republiky, kde sa daňovník zdržiaval v zdaňovacom období</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaObvPobytu/ulica">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Ulica: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaObvPobytu/cislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Súpisné/orientačné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaObvPobytu/psc">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>PSČ: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/adresaObvPobytu/obec">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Obec: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>II. ODDIEL - ÚDAJE O ZÁKONNOM ZÁSTUPCOVI ALEBO DEDIČOVI ALEBO ZÁSTUPCOVI, KTORÝ PODÁVA DAŇOVÉ PRIZNANIE (ďalej len ”zástupca”)</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/priezvisko">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Priezvisko: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/meno">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Meno: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/titul">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Titul (pred menom): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/titulZa">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Titul (za priezviskom): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/rodneCislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Rodné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/ulica">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Ulica: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/cislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Súpisné/orientačné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/psc">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>PSČ: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/obec">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Obec: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/stat">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Štát: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/tel">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Telefónne číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/hlavicka/zastupca/email">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Emailová adresa: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/r27">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>III. ODDIEL - ÚDAJE NA UPLATNENIE ZNÍŽENIA ZÁKLADU DANE (§ 11 zákona) A DAŇOVÉHO BONUSU (§ 33 zákona)</xsl:text>
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Údaje o poberaní dôchodkov uvedených v § 11 ods. 6 zákona</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Poberal (a) som na začiatku zdaňovacieho obdobia dôchodok (ky) uvedený (é) v § 11 ods. 6 zákona alebo mi bol (i) tento (tieto) dôchodok (ky) priznaný (é) spätne k začiatku príslušného zdaňovacieho obdobia: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r28">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Úhrnná suma dôchodku (ov) uvedeného (ných) v § 11 ods. 6 zákona za zdaňovacie obdobie v eurách (vypĺňa sa, len ak sa uplatňuje zníženie základu dane): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r29">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Údaje o manželke (manželovi), ktorá (ý) žije s daňovníkom v domácnosti na uplatnenie nezdaniteľnej časti základu dane</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/r29/priezviskoMeno">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Priezvisko a meno: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r29/rodneCislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Rodné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r30/uplatnujemNaManzelku">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Uplatňujem nezdaniteľnú časť základu dane na manželku (manžela) podľa § 11 ods. 3 zákona: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r30/vlastnePrijmy">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Vlastné príjmy (v eurách): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r30/pocetMesiacov">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Počet Mesiacov: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Údaje o vyživovaných deťoch žijúcich s daňovníkom v domácnosti na uplatnenie daňového zvýhodnenia na vyživované dieťa podľa § 33 zákona (ďalej len 'daňový bonus podľa zákona')</xsl:text>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Dieťa</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/priezviskoMeno">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Priezvisko a meno: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/rodneCislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Rodné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m00">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daňový bonus podľa zákona uplatňujem v mesiacoch</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 1-12: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m01">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 01: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m02">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 02: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m03">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 03: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m04">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 04: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m05">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 05: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m06">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 06: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m07">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 07: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m08">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 08: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m09">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 09: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m10">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 10: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m11">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 11: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31/dieta/m12">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 12: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r31a">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Údaje o ďalších vyživovaných deťoch uvádzam v IX. oddiele v členení podľa r. 31: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/uplatnujemPar33Ods8">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>Údaje druhej oprávnenej osoby vyživujúcej dieťa (deti) v domácnosti uvedené na r. 31</xsl:text>
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Uplatňujem postup podľa § 33 ods. 8 zákona: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/priezviskoMeno">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Priezvisko a meno: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/rodneCislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Rodné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m00">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Mesiace, na začiatku ktorých druhá oprávnená osoba splnila podmienky na uplatnenie daňového bonusu podľa zákona:</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 1-12: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m01">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 01: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m02">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 02: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m03">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 03: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m04">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 04: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m05">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 05: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m06">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 06: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m07">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 07: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m08">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 08: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m09">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 09: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m10">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 10: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m11">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 11: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/m12">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;&#09;&#09;&#09;</xsl:text>
			<xsl:text>Mesiac 12: </xsl:text>
			<xsl:value-of select="."/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/druhaOsobaPodalaDPvSR">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Oznamujem, že druhá oprávnená osoba uvedená na r. 32 podala daňové priznanie na území Slovenskej republiky: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/dokladRocZuct">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Druhá oprávnená osoba uvedená na r. 32 na území Slovenskej republiky nepodala daňové priznanie, preto k daňovému priznaniu prikladám: 
	        kópiu dokladu o vykonanom ročnom zúčtovaní preddavkov na daň z príjmov zo závislej činnosti podľa zákona (ďalej len "ročné zúčtovanie") druhej oprávnenej osoby: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32/dokladVyskaDane">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>kópiu dokladu preukazujúceho výšku základu dane z príjmov podľa § 5 zákona druhej oprávnenej osoby, ktorej ročné zúčtovanie nebolo vykonané, a nemala povinnosť podať daňové priznanie: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r32a">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Základ dane (čiastkový základ dane) z príjmov zo závislej činnosti alebo z príjmov z podnikania alebo z inej samostatnej zárobkovej činnosti alebo ich úhrn druhej oprávnenej osoby z r. 32, pre uplatnenie daňového bonusu podľa zákona: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r33/uplatnujemBonusPar33a">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>IV. ODDIEL - ÚDAJE NA UPLATNENIE DAŇOVÉHO BONUSU NA ZAPLATENÉ ÚROKY (§ 33a zákona)</xsl:text>
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Uplatňujem daňový bonus na zaplatené úroky podľa § 33a zákona: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r33/zaplateneUroky">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Zaplatené úroky za zdaňovacie obdobie (v eurách): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r33/pocetMesiacov">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Počet mesiacov: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r33/datumZacatiaUroceniaUveru">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Dátum začatia úročenia úveru: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r33/datumUzavretiaZmluvyOUvere">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Dátum uzavretia zmluvy o úvere na bývanie: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r34">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>V. ODDIEL - VÝPOČET ZÁKLADU DANE Z PRÍJMOV ZO ZÁVISLEJ ČINNOSTI (§ 5 zákona) - v eurách</xsl:text>
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Úhrn príjmov od všetkých zamestnávateľov: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r35">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Z toho úhrn príjmov plynúcich na základe dohôd o prácach vykonávaných mimo pracovného pomeru: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r36">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Úhrn povinného poistného (§ 5 ods. 8 zákona): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r37">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Z toho</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>úhrn poistného na sociálne poistenie (zabezpečenie): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r38">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>úhrn poistného na zdravotné poistenie: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r39">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Základ dane podľa § 5 ods. 8 zákona (r. 34 - r. 36): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r40">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>VI. ODDIEL - VÝPOČET DANE podľa § 15 zákona - v eurách</xsl:text>
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Zníženie základu dane podľa § 11 zákona</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Ods. 2 - na daňovníka: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r41">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Ods. 3 - na manželku (manžela): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r42">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Ods. 8 - na preukázateľne zaplatené príspevky na celoeurópsky osobný dôchodkový produkt a príspevky na doplnkové dôchodkové sporenie maximálne v úhrnnej výške 180 eur: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r43">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Spolu (r. 40 + r. 41 + r.42) maximálne do výšky základu dane v r.39: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r44">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Základ dane z r. 39 znížený o sumu z r. 43 a zvýšený o sumu príspevkov, o ktorú sa zvyšuje základ dane podľa § 11 ods. 11 a § 52zza ods. 2 zákona: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r45">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň podľa § 15 zákona zo základu dane z r. 44: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r46">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Zamestnanecká prémia: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r47">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Suma zamestnaneckej prémie nesprávne vyplatenej zamestnávateľom alebo správcom dane: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r48">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Výpočet dane po vyňatí príjmov zo zdrojov v zahraničí</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Úhrn vyňatých príjmov (základov dane): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r49">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Základ dane znížený o úhrn vyňatých príjmov (základov dane) (r. 44 - r. 48) (ak je rozdiel r. 44 a r. 48 záporný, uvádza sa v r. 49 nula): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r50">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň podľa § 15 zákona po vyňatí príjmov zo zdrojov v zahraničí zo základu dane z r. 49: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r51">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Výpočet dane uznanej na zápočet na tuzemskú daňovú povinnosť zo zaplatenej dane v zahraničí</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Úhrn príjmov (základov dane) zo zdrojov v zahraničí: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r52">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň zaplatená v zahraničí z príjmov z r. 51: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r53">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Výpočet percenta dane na účely zápočtu r. 51 : [(r. 39 - r. 48) alebo r. 39] x 100: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r54">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Z dane zaplatenej v zahraničí možno započítať [(r. 50 alebo r. 45) x r. 53) : 100]: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r55">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň uznaná na zápočet (r. 54 maximálne do sumy na r. 52): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r56">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň (daňová povinnosť) (r. 45 alebo r. 50 alebo r. 45 - r. 55 alebo r. 50 - r. 55): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r56a">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Navýšený základ dane na účely výpočtu daňového bonusu podľa zákona (r. 32a / 12 × počet zaškrtnutých mesiacov v r. 32 + r. 39): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r57">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Nárok na daňový bonus podľa zákona (na jedno dieťa alebo úhrn na viac vyživovaných detí): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r58">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň (daňová povinnosť) znížená o daňový bonus podľa zákona (r. 56 - r. 57): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r59">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Suma daňového bonusu podľa zákona priznaného a vyplateného zamestnávateľom: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r60">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text disable-output-escaping="yes">Rozdiel r. 57 - r. 59 > 0: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r61">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text disable-output-escaping="yes">Suma daňového bonusu podľa zákona na poukázanie správcom dane r. 60 - r. 56 > 0: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r62">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text disable-output-escaping="yes">Suma daňového bonusu podľa zákona vyplatená zamestnávateľom nesprávne alebo vo vyššej sumer. 59 - r. 57 > 0: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r63">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Nárok na daňový bonus na zaplatené úroky podľa § 33a zákona: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r64">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň (daňová povinnosť) znížená o daňový bonus podľa zákona a o daňový bonus na zaplatené úroky podľa § 33a zákona (r. 58 - r. 63): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r65">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Suma daňového bonusu na zaplatené úroky podľa § 33a zákona priznaného a vyplateného zamestnávateľom: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r66">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text disable-output-escaping="yes">Rozdiel r. 63 - r. 65 > 0: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r67">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text disable-output-escaping="yes">Suma daňového bonusu na zaplatené úroky podľa § 33a zákona na poukázanie správcom dane r. 66 - r. 58 > 0: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r68">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Úhrn preddavkov na daň</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>zaplatených podľa § 34 zákona: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r69">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>zrazených podľa § 35 zákona (neuvádzajú sa preddavky podľa § 35 ods. 10 a 11 zákona): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r70">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>zaplatených podľa § 35 ods. 10 a 11 zákona: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r71">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň na úhradu vrátane zamestnávateľom nesprávne vyplatených daňových bonusov alebo zamestnaneckej prémie r. 56 - r. 57 + r. 59 + r. 61 - r. 63 + r. 65 + r. 67 - r. 68 - r. 69 - r. 70 + r. 47 (+) : </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r72">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daňový preplatok znížený o zamestnávateľom nesprávne vyplatené daňové bonusy alebo zamestnaneckú prémiu r. 56 - r. 57 + r. 59 + r. 61 - r. 63 + r. 65 + r. 67 - r. 68 - r. 69 - r. 70 + r. 47 (-): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r73">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>VII. ODDIEL - ROZDIELY Z DODATOČNÉHO DAŇOVÉHO PRIZNANIA - v eurách</xsl:text>
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň (daňová povinnosť) z r. 56 daňového priznania alebo r. 116 daňového priznania fyzickej osoby typ B alebo r. 06 ročného zúčtovania: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r74">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Zvýšenie (+) alebo zníženie (-) dane (r. 56 - r. 73): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r75">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Daň na úhradu alebo daňový preplatok z r. 71 alebo r. 72 daňového priznania alebo r. 135 alebo r. 136 daňového priznania fyzickej osoby typ B alebo r. 21 z ročného zúčtovania: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r76">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text disable-output-escaping="yes">Daň na úhradu (+) alebo daňový preplatok (-) (r. 71 alebo r. 72) - r. 75 + [(r. 83 daňového priznania - 2% alebo 3% z r. 64) > 0] alebo (r. 71 alebo r. 72) - r. 75 + [(r. 13 vyhlásenia o poukázaní sumy podielu zaplatenej dane - 2 % alebo 3 % z r. 64) > 0] alebo (r. 71 alebo r. 72) - r. 75 + [(r. 151 daňového priznania fyzickej osoby typ B - 2 % alebo 3 % z r. 64) > 0]: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r77">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Suma daňového bonusu podľa zákona na poukázanie správcom dane z r. 61 daňového priznania alebo r. 121 daňového priznania fyzickej osoby typ B alebo r. 12 ročného zúčtovania: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r78">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Rozdiel súm daňového bonusu podľa zákona na poukázanie správcom dane (+), na vrátenie správcovi dane (-)   (r. 61 - r. 77): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r79">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Suma daňového bonusu na zaplatené úroky podľa § 33a zákona na poukázanie správcom dane z r. 67 daňového priznania alebo r. 127 daňového priznania fyzickej osoby typ B alebo r. 16 ročného zúčtovania preddavkov: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r80">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Rozdiel súm daňového bonusu na zaplatené úroky podľa § 33a zákona na poukázanie správcom dane (+), na vrátenie správcovi dane (–) (r. 67 – r. 79): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template match="dokument/telo/r81/neuplatnujemPar50">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>VIII. ODDIEL - VYHLÁSENIE o poukázaní podielu zaplatenej dane z príjmov fyzickej osoby podľa § 50 a § 50aa zákona</xsl:text>
		<xsl:if test="./text()">
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Neuplatňujem postup podľa § 50 zákona: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r81/ico">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>IČO: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r81/obchodneMeno">
		<xsl:if test="./riadok[1]/text() or ./riadok[2]/text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Obchodn&#233; meno (n&#225;zov): </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="concat(./riadok[1], ./riadok[2])" />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>	
	<xsl:template match="dokument/telo/r81/splnam3per">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Spĺňam podmienky na poukázanie 3 % z dane: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r81/suhlasSoZaslanim">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>súhlasím so zaslaním údajov (meno, priezvisko a trvalý pobyt) mnou určenému prijímateľovi podielu zaplatenej dane uvedenému v r. 81 podľa § 50 ods. 8 zákona: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
    <xsl:template match="dokument/telo/r82">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>2 % alebo 3 %23) zo zaplatenej dane (minimálne 3 eurá) z r. 64: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r83/neuplatnujemPar50aa">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>neuplatňujem postup podľa &#167; 50aa z&#225;kona: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r83/rodicA/rodneCislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>ÚDAJE O RODIČOVI / RODIČOCH</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>A</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Rodné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r83/rodicA/priezvisko">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Priezvisko: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r83/rodicA/meno">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Meno: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r83/rodicB/rodneCislo">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>B</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Rodné číslo: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r83/rodicB/priezvisko">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Priezvisko: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r83/rodicB/meno">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Meno: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/dokument/telo/r83/bolZverenyDoStarostlivosti">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>bol som zverený do starostlivosti nahrádzajúcej starostlivosť rodičov na základe rozhodnutia príslušného orgánu: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'&#10;'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/osobitneZaznamy">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>IX. ODDIEL - MIESTO NA OSOBITNÉ ZÁZNAMY DAŇOVNÍKA</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/osobitneZaznamy/uvadza">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Uvádzam osobitné záznamy: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>

			<xsl:text>Údaje o príjmoch zo závislej činnosti z r. 34 daňovníka s neobmedzenou daňovou povinnosťou plynúcich zo zdrojov v zahraničí, ktoré sú súčasťou základu dane, pričom sa uvádza číselný kód štátu podľa vyhlášky Štatistického úradu Slovenskej republiky č. 112/2012 Z. z., ktorou sa vydáva Štatistický číselník krajín v znení vyhlášky č. 108/2014 Z. z.: </xsl:text>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/osobitneZaznamy/udajeOprijmoch">
		<xsl:text>&#09;</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/osobitneZaznamy/udajeOprijmoch/kodStatu">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Kód štátu: </xsl:text>
			<xsl:choose>
				<xsl:when test=".='004'">004 - Afganistan</xsl:when>
				<xsl:when test=".='008'">008 - Albánsko</xsl:when>
				<xsl:when test=".='010'">010 - Antarktída</xsl:when>
				<xsl:when test=".='012'">012 - Alžírsko</xsl:when>
				<xsl:when test=".='016'">016 - Americká Samoa</xsl:when>
				<xsl:when test=".='020'">020 - Andorra</xsl:when>
				<xsl:when test=".='024'">024 - Angola</xsl:when>
				<xsl:when test=".='028'">028 - Antigua a Barbuda</xsl:when>
				<xsl:when test=".='031'">031 - Azerbajdžan</xsl:when>
				<xsl:when test=".='032'">032 - Argentína</xsl:when>
				<xsl:when test=".='036'">036 - Austrália</xsl:when>
				<xsl:when test=".='040'">040 - Rakúsko</xsl:when>
				<xsl:when test=".='044'">044 - Bahamy</xsl:when>
				<xsl:when test=".='048'">048 - Bahrajn</xsl:when>
				<xsl:when test=".='050'">050 - Bangladéš</xsl:when>
				<xsl:when test=".='051'">051 - Arménsko</xsl:when>
				<xsl:when test=".='052'">052 - Barbados</xsl:when>
				<xsl:when test=".='056'">056 - Belgicko</xsl:when>
				<xsl:when test=".='060'">060 - Bermudy</xsl:when>
				<xsl:when test=".='064'">064 - Bhután</xsl:when>
				<xsl:when test=".='068'">068 - Bolívia</xsl:when>
				<xsl:when test=".='070'">070 - Bosna a Hercegovina</xsl:when>
				<xsl:when test=".='072'">072 - Botswana</xsl:when>
				<xsl:when test=".='074'">074 - Bouvetov ostrov</xsl:when>
				<xsl:when test=".='076'">076 - Brazília</xsl:when>
				<xsl:when test=".='084'">084 - Belize</xsl:when>
				<xsl:when test=".='086'">086 - Britské indickooceánske územie</xsl:when>
				<xsl:when test=".='090'">090 - Šalamúnove ostrovy</xsl:when>
				<xsl:when test=".='092'">092 - Britské Panenské ostrovy</xsl:when>
				<xsl:when test=".='096'">096 - Brunejsko-darussalamský štát</xsl:when>
				<xsl:when test=".='100'">100 - Bulharsko</xsl:when>
				<xsl:when test=".='104'">104 - Mjanmarsko</xsl:when>
				<xsl:when test=".='108'">108 - Burundi</xsl:when>
				<xsl:when test=".='112'">112 - Bielorusko</xsl:when>
				<xsl:when test=".='116'">116 - Kambodža</xsl:when>
				<xsl:when test=".='120'">120 - Kamerun</xsl:when>
				<xsl:when test=".='124'">124 - Kanada</xsl:when>
				<xsl:when test=".='132'">132 - Kapverdy</xsl:when>
				<xsl:when test=".='136'">136 - Kajmanie ostrovy</xsl:when>
				<xsl:when test=".='140'">140 - Stredoafrická republika</xsl:when>
				<xsl:when test=".='144'">144 - Srí Lanka</xsl:when>
				<xsl:when test=".='148'">148 - Čad</xsl:when>
				<xsl:when test=".='152'">152 - Čile</xsl:when>
				<xsl:when test=".='156'">156 - Čína</xsl:when>
				<xsl:when test=".='158'">158 - Taiwan</xsl:when>
				<xsl:when test=".='162'">162 - Vianočný ostrov</xsl:when>
				<xsl:when test=".='166'">166 - Kokosové ostrovy</xsl:when>
				<xsl:when test=".='170'">170 - Kolumbia</xsl:when>
				<xsl:when test=".='174'">174 - Komory</xsl:when>
				<xsl:when test=".='175'">175 - Mayotte</xsl:when>
				<xsl:when test=".='178'">178 - Kongo</xsl:when>
				<xsl:when test=".='180'">180 - Kongo (býv. Zair)</xsl:when>
				<xsl:when test=".='184'">184 - Cookove ostrovy</xsl:when>
				<xsl:when test=".='188'">188 - Kostarika</xsl:when>
				<xsl:when test=".='191'">191 - Chorvátsko</xsl:when>
				<xsl:when test=".='192'">192 - Kuba</xsl:when>
				<xsl:when test=".='196'">196 - Cyprus</xsl:when>
				<xsl:when test=".='203'">203 - Česko</xsl:when>
				<xsl:when test=".='204'">204 - Benin</xsl:when>
				<xsl:when test=".='208'">208 - Dánsko</xsl:when>
				<xsl:when test=".='212'">212 - Dominika</xsl:when>
				<xsl:when test=".='214'">214 - Dominikánska republika</xsl:when>
				<xsl:when test=".='218'">218 - Ekvádor</xsl:when>
				<xsl:when test=".='222'">222 - Salvádor</xsl:when>
				<xsl:when test=".='226'">226 - Rovníková Guinea</xsl:when>
				<xsl:when test=".='231'">231 - Etiópia</xsl:when>
				<xsl:when test=".='232'">232 - Eritrea</xsl:when>
				<xsl:when test=".='233'">233 - Estónsko</xsl:when>
				<xsl:when test=".='234'">234 - Faerské ostrovy</xsl:when>
				<xsl:when test=".='238'">238 - Falklandy</xsl:when>
				<xsl:when test=".='239'">239 - Južná Georgia a Južné Sandwichove ostrovy</xsl:when>
				<xsl:when test=".='242'">242 - Fidži</xsl:when>
				<xsl:when test=".='246'">246 - Fínsko</xsl:when>
				<xsl:when test=".='248'">248 - Alandy</xsl:when>
				<xsl:when test=".='250'">250 - Francúzsko</xsl:when>
				<xsl:when test=".='254'">254 - Francúzska Guyana</xsl:when>
				<xsl:when test=".='258'">258 - Francúzska Polynézia</xsl:when>
				<xsl:when test=".='260'">260 - Francúzske južné územia</xsl:when>
				<xsl:when test=".='262'">262 - Džibutsko</xsl:when>
				<xsl:when test=".='266'">266 - Gabon</xsl:when>
				<xsl:when test=".='268'">268 - Gruzínsko</xsl:when>
				<xsl:when test=".='270'">270 - Gambia</xsl:when>
				<xsl:when test=".='275'">275 - Palestína</xsl:when>
				<xsl:when test=".='276'">276 - Nemecko</xsl:when>
				<xsl:when test=".='288'">288 - Ghana</xsl:when>
				<xsl:when test=".='292'">292 - Gibraltár</xsl:when>
				<xsl:when test=".='296'">296 - Karibati</xsl:when>
				<xsl:when test=".='300'">300 - Grécko</xsl:when>
				<xsl:when test=".='304'">304 - Grónsko</xsl:when>
				<xsl:when test=".='308'">308 - Grenada</xsl:when>
				<xsl:when test=".='312'">312 - Guadaloupe</xsl:when>
				<xsl:when test=".='316'">316 - Guam</xsl:when>
				<xsl:when test=".='320'">320 - Guatemala</xsl:when>
				<xsl:when test=".='324'">324 - Guinea</xsl:when>
				<xsl:when test=".='328'">328 - Guyana</xsl:when>
				<xsl:when test=".='332'">332 - Haiti</xsl:when>
				<xsl:when test=".='334'">334 - Heardov ostrov a Macdonaldove ostrovy</xsl:when>
				<xsl:when test=".='336'">336 - Vatikán</xsl:when>
				<xsl:when test=".='340'">340 - Honduras</xsl:when>
				<xsl:when test=".='344'">344 - Hongkong</xsl:when>
				<xsl:when test=".='348'">348 - Maďarsko</xsl:when>
				<xsl:when test=".='352'">352 - Island</xsl:when>
				<xsl:when test=".='356'">356 - India</xsl:when>
				<xsl:when test=".='360'">360 - Indonézia</xsl:when>
				<xsl:when test=".='364'">364 - Irán</xsl:when>
				<xsl:when test=".='364'">364 - Irak</xsl:when>
				<xsl:when test=".='372'">372 - Írsko</xsl:when>
				<xsl:when test=".='376'">376 - Izrael</xsl:when>
				<xsl:when test=".='380'">380 - Taliansko</xsl:when>
				<xsl:when test=".='384'">384 - Pobrežie Slonoviny</xsl:when>
				<xsl:when test=".='388'">388 - Jamajka</xsl:when>
				<xsl:when test=".='392'">392 - Japonsko</xsl:when>
				<xsl:when test=".='398'">398 - Kazachstan</xsl:when>
				<xsl:when test=".='400'">400 - Jordánsko</xsl:when>
				<xsl:when test=".='404'">404 - Keňa</xsl:when>
				<xsl:when test=".='408'">408 - Kórejská ľudovodemokratická republika</xsl:when>
				<xsl:when test=".='410'">410 - Kórejská republika</xsl:when>
				<xsl:when test=".='414'">414 - Kuvajt</xsl:when>
				<xsl:when test=".='417'">417 - Kirgizsko</xsl:when>
				<xsl:when test=".='418'">418 - Laos</xsl:when>
				<xsl:when test=".='422'">422 - Libanon</xsl:when>
				<xsl:when test=".='426'">426 - Lesotho</xsl:when>
				<xsl:when test=".='428'">428 - Lotyšsko</xsl:when>
				<xsl:when test=".='430'">430 - Libéria</xsl:when>
				<xsl:when test=".='434'">434 - Líbya</xsl:when>
				<xsl:when test=".='438'">438 - Lichtenštajnsko</xsl:when>
				<xsl:when test=".='440'">440 - Litva</xsl:when>
				<xsl:when test=".='442'">442 - Luxembursko</xsl:when>
				<xsl:when test=".='446'">446 - Macao</xsl:when>
				<xsl:when test=".='450'">450 - Madagaskar</xsl:when>
				<xsl:when test=".='454'">454 - Malawi</xsl:when>
				<xsl:when test=".='458'">458 - Malajzia</xsl:when>
				<xsl:when test=".='462'">462 - Maldivy</xsl:when>
				<xsl:when test=".='466'">466 - Mali</xsl:when>
				<xsl:when test=".='470'">470 - Malta</xsl:when>
				<xsl:when test=".='470'">470 - Martinik</xsl:when>
				<xsl:when test=".='478'">478 - Mauritánia</xsl:when>
				<xsl:when test=".='480'">480 - Maurícius</xsl:when>
				<xsl:when test=".='484'">484 - Mexiko</xsl:when>
				<xsl:when test=".='492'">492 - Monako</xsl:when>
				<xsl:when test=".='496'">496 - Mongolsko</xsl:when>
				<xsl:when test=".='498'">498 - Moldavsko</xsl:when>
				<xsl:when test=".='499'">499 - Čierna Hora</xsl:when>
				<xsl:when test=".='500'">500 - Montserrat</xsl:when>
				<xsl:when test=".='504'">504 - Maroko</xsl:when>
				<xsl:when test=".='508'">508 - Mozambik</xsl:when>
				<xsl:when test=".='512'">512 - Omán</xsl:when>
				<xsl:when test=".='516'">516 - Namíbia</xsl:when>
				<xsl:when test=".='520'">520 - Nauru</xsl:when>
				<xsl:when test=".='524'">524 - Nepál</xsl:when>
				<xsl:when test=".='528'">528 - Holandsko</xsl:when>
				<xsl:when test=".='531'">531 - Curaçao</xsl:when>
				<xsl:when test=".='533'">533 - Aruba</xsl:when>
				<xsl:when test=".='534'">534 - Svätý Martin (holandská časť)</xsl:when>
				<xsl:when test=".='535'">535 - Bonaire, Svätý Eustach a Saba</xsl:when>
				<xsl:when test=".='540'">540 - Nová Kaledónia</xsl:when>
				<xsl:when test=".='548'">548 - Vanuatu</xsl:when>
				<xsl:when test=".='554'">554 - Nový Zéland</xsl:when>
				<xsl:when test=".='558'">558 - Nikaragua</xsl:when>
				<xsl:when test=".='562'">562 - Niger</xsl:when>
				<xsl:when test=".='566'">566 - Nigéria</xsl:when>
				<xsl:when test=".='570'">570 - Niue</xsl:when>
				<xsl:when test=".='574'">574 - Norfolk</xsl:when>
				<xsl:when test=".='578'">578 - Nórsko</xsl:when>
				<xsl:when test=".='580'">580 - Severné Mariány</xsl:when>
				<xsl:when test=".='581'">581 - Menšie odľahlé ostrovy USA</xsl:when>
				<xsl:when test=".='583'">583 - Mikronézia</xsl:when>
				<xsl:when test=".='584'">584 - Marshallove ostrovy</xsl:when>
				<xsl:when test=".='585'">585 - Palau</xsl:when>
				<xsl:when test=".='586'">586 - Pakistan</xsl:when>
				<xsl:when test=".='591'">591 - Panama</xsl:when>
				<xsl:when test=".='598'">598 - Papua-Nová Guinea</xsl:when>
				<xsl:when test=".='600'">600 - Paraguaj</xsl:when>
				<xsl:when test=".='604'">604 - Peru</xsl:when>
				<xsl:when test=".='608'">608 - Filipíny</xsl:when>
				<xsl:when test=".='612'">612 - Pitcairnove ostrovy</xsl:when>
				<xsl:when test=".='616'">616 - Poľsko</xsl:when>
				<xsl:when test=".='620'">620 - Portugalsko</xsl:when>
				<xsl:when test=".='624'">624 - Guinea-Bissau</xsl:when>
				<xsl:when test=".='626'">626 - Východný Timor</xsl:when>
				<xsl:when test=".='630'">630 - Portoriko</xsl:when>
				<xsl:when test=".='634'">634 - Katar</xsl:when>
				<xsl:when test=".='638'">638 - Réunion</xsl:when>
				<xsl:when test=".='642'">642 - Rumunsko</xsl:when>
				<xsl:when test=".='643'">643 - Rusko</xsl:when>
				<xsl:when test=".='646'">646 - Rwanda</xsl:when>
				<xsl:when test=".='652'">652 - Svätý Bartolomej</xsl:when>
				<xsl:when test=".='654'">654 - Svätá Helena</xsl:when>
				<xsl:when test=".='659'">659 - Svätý Krištof a Nevis</xsl:when>
				<xsl:when test=".='660'">660 - Anguilla</xsl:when>
				<xsl:when test=".='662'">662 - Svätá Lucia</xsl:when>
				<xsl:when test=".='663'">663 - Svätý Martin (francúzska časť)</xsl:when>
				<xsl:when test=".='666'">666 - Saint Pierre a Miquelon</xsl:when>
				<xsl:when test=".='670'">670 - Svätý Vincent a Grenadíny</xsl:when>
				<xsl:when test=".='674'">674 - San Maríno</xsl:when>
				<xsl:when test=".='678'">678 - Svätý Tomáš a Princov ostrov</xsl:when>
				<xsl:when test=".='682'">682 - Saudská Arábia</xsl:when>
				<xsl:when test=".='686'">686 - Senegal</xsl:when>
				<xsl:when test=".='688'">688 - Srbsko</xsl:when>
				<xsl:when test=".='690'">690 - Seychely</xsl:when>
				<xsl:when test=".='694'">694 - Sierra Leone</xsl:when>
				<xsl:when test=".='702'">702 - Singapur</xsl:when>
				<xsl:when test=".='703'">703 - Slovensko</xsl:when>
				<xsl:when test=".='704'">704 - Vietnam</xsl:when>
				<xsl:when test=".='705'">705 - Slovinsko</xsl:when>
				<xsl:when test=".='706'">706 - Somálsko</xsl:when>
				<xsl:when test=".='710'">710 - Južná Afrika</xsl:when>
				<xsl:when test=".='716'">716 - Zimbabwe</xsl:when>
				<xsl:when test=".='724'">724 - Španielsko</xsl:when>
				<xsl:when test=".='728'">728 - Južný Sudán</xsl:when>
				<xsl:when test=".='729'">729 - Sudán</xsl:when>
				<xsl:when test=".='732'">732 - Západná Sahara</xsl:when>
				<xsl:when test=".='740'">740 - Surinam</xsl:when>
				<xsl:when test=".='744'">744 - Svalbard a Jan Mayen</xsl:when>
				<xsl:when test=".='748'">748 - Svazijsko</xsl:when>
				<xsl:when test=".='752'">752 - Švédsko</xsl:when>
				<xsl:when test=".='756'">756 - Švajčiarsko</xsl:when>
				<xsl:when test=".='760'">760 - Sýria</xsl:when>
				<xsl:when test=".='762'">762 - Tadžikistan</xsl:when>
				<xsl:when test=".='764'">764 - Thajsko</xsl:when>
				<xsl:when test=".='768'">768 - Togo</xsl:when>
				<xsl:when test=".='772'">772 - Tokelau</xsl:when>
				<xsl:when test=".='776'">776 - Tonga</xsl:when>
				<xsl:when test=".='780'">780 - Trinidad a Tobago</xsl:when>
				<xsl:when test=".='784'">784 - Spojené arabské emiráty</xsl:when>
				<xsl:when test=".='788'">788 - Tunisko</xsl:when>
				<xsl:when test=".='792'">792 - Turecko</xsl:when>
				<xsl:when test=".='795'">795 - Turkménsko</xsl:when>
				<xsl:when test=".='796'">796 - Turks a Caicos</xsl:when>
				<xsl:when test=".='798'">798 - Tuvalu</xsl:when>
				<xsl:when test=".='800'">800 - Uganda</xsl:when>
				<xsl:when test=".='804'">804 - Ukrajina</xsl:when>
				<xsl:when test=".='807'">807 - Macedónsko</xsl:when>
				<xsl:when test=".='818'">818 - Egypt</xsl:when>
				<xsl:when test=".='826'">826 - Spojené kráľovstvo</xsl:when>
				<xsl:when test=".='831'">831 - Guernsey</xsl:when>
				<xsl:when test=".='832'">832 - Jersey</xsl:when>
				<xsl:when test=".='833'">833 - Man</xsl:when>
				<xsl:when test=".='834'">834 - Tanzánia</xsl:when>
				<xsl:when test=".='840'">840 - Spojené štáty americké</xsl:when>
				<xsl:when test=".='850'">850 - Americké Panenské ostrovy</xsl:when>
				<xsl:when test=".='854'">854 - Burkina</xsl:when>
				<xsl:when test=".='858'">858 - Uruguaj</xsl:when>
				<xsl:when test=".='860'">860 - Uzbekistan</xsl:when>
				<xsl:when test=".='862'">862 - Venezuela</xsl:when>
				<xsl:when test=".='876'">876 - Wallis a Futuna</xsl:when>
				<xsl:when test=".='882'">882 - Samoa</xsl:when>
				<xsl:when test=".='887'">887 - Jemen</xsl:when>
				<xsl:when test=".='894'">894 - Zambia</xsl:when>
			</xsl:choose>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/osobitneZaznamy/udajeOprijmoch/prijmy">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Príjmy: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/osobitneZaznamy/udajeOprijmoch/vydavky">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Výdavky: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/osobitneZaznamy/udajeOprijmoch/zTohoVydavky">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Z toho výdavky: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/osobitneZaznamy/zaznamy">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Záznamy: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r84">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>X. ODDIEL - ĎALŠIE ÚDAJE O DAŇOVNÍKOVI</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Štát daňovej rezidencie: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r85">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Úhrn všetkých zdaniteľných príjmov plynúcich zo zdrojov na území Slovenskej republiky a zo zdrojov v zahraničí v eurách: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r85a">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Z toho</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>úhrn všetkých zdaniteľných príjmov plynúcich zo zdrojov na území Slovenskej republiky: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/r86">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Počet príloh: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/datumVyhlasenia">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Vyhlasujem, že všetky údaje uvedené v daňovom priznaní sú správne a úplné.</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Dátum vyhlásenia: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>XI. ODDIEL - ŽIADOSŤ O VYPLATENIE DAŇOVÉHO BONUSU, O VRÁTENIE DAŇOVÉHO PREPLATKU ALEBO VYPLATENIE ZAMESTNANECKEJ PRÉMIE</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/vyplatitDanovyBonus">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Žiadam o vyplatenie daňového bonusu alebo rozdielu daňového bonusu podľa zákona (r. 61 alebo rozdiel z r. 78, ak je kladný): </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/vyplatitZamPremiu">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Žiadam o vyplatenie zamestnaneckej prémie podľa § 32a zákona (z r. 46): </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/vyplatitDanovyBonusUroky">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Žiadam o vyplatenie daňového bonusu na zaplatené úroky alebo rozdielu daňového bonusu na zaplatené úroky podľa § 33a zákona (r. 67 alebo rozdiel z r. 80, ak je kladný): </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/vratitDanPreplatok">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Žiadam o vrátenie daňového preplatku podľa § 79 zákona č. 563/2009 Z. z. o správe daní (daňový poriadok) a o zmene a doplnení niektorých zákonov v znení neskorších predpisov (z r. 72 alebo rozdiel z r. 76, ak je záporný): </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/sposobPlatby">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#09;</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/sposobPlatby/poukazka">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Poštovou poukážkou: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/sposobPlatby/ucet">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Na účet: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/sposobPlatby/ucetZahranicnyIny">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Na účet v zahraničí, ktorého nie som majiteľom: </xsl:text>
			<xsl:call-template name="booleanCheckboxToString">
				<xsl:with-param name="boolValue" select="." />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/bankovyUcet">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/bankovyUcet/IBAN">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>IBAN: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template match="dokument/telo/danovyPreplatokBonus/datum">
		<xsl:if test="./text()">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>&#09;</xsl:text>
			<xsl:text>Dátum: </xsl:text>
			<xsl:call-template name="string-replace-all">
				<xsl:with-param name="text" select="." />
				<xsl:with-param name="replace" select="'%0A'" />
				<xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template name="formatToSkDate">
		<xsl:param name="date" />
		<xsl:variable name="dateString" select="string($date)" />
		<xsl:choose>
			<xsl:when test="$dateString != '' and string-length($dateString)=10 and string(number(substring($dateString, 1, 4))) != 'NaN' ">
				<xsl:value-of select="concat(substring($dateString, 9, 2), '.', substring($dateString, 6, 2), '.', substring($dateString, 1, 4))" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$dateString"></xsl:value-of>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="booleanCheckboxToString">
		<xsl:param name="boolValue" />
		<xsl:variable name="boolValueString" select="string($boolValue)" />
		<xsl:choose>
			<xsl:when test="$boolValueString = '1' ">
				<xsl:text>Áno</xsl:text>
			</xsl:when>
			<xsl:when test="$boolValueString = '0' ">
				<xsl:text>Nie</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$boolValueString"></xsl:value-of>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="formatTimeTrimMinutes">
		<xsl:param name="time" />
		<xsl:variable name="timeString" select="string($time)" />
		<xsl:if test="$timeString != ''">
			<xsl:value-of select="substring($timeString, 1, 5)" />
		</xsl:if>
	</xsl:template>
	<xsl:template name="string-replace-all">
		<xsl:param name="text"/>
		<xsl:param name="replace"/>
		<xsl:param name="by"/>
		<xsl:choose>
			<xsl:when test="contains($text, $replace)">
				<xsl:value-of select="substring-before($text,$replace)"/>
				<xsl:value-of select="$by"/>
				<xsl:call-template name="string-replace-all">
					<xsl:with-param name="text" select="substring-after($text,$replace)"/>
					<xsl:with-param name="replace" select="$replace"/>
					<xsl:with-param name="by" select="$by" />
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>

