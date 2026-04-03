<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xml:lang="en" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:d = "http://docbook.org/ns/docbook" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:exsl="http://exslt.org/common"  exclude-result-prefixes="d" version="1.0">
  <xsl:template match="/">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">      
		<fo:layout-master-set>
    <fo:simple-page-master master-name="even"
      page-height="297mm" page-width="210mm"
      margin-top="20mm" margin-bottom="20mm"
      margin-left="25mm" margin-right="25mm">
      <fo:region-body margin-bottom="20mm"/>
      <fo:region-after region-name="footer-even" extent="10mm"/>
    </fo:simple-page-master>
    <fo:simple-page-master master-name="odd"
      page-height="297mm" page-width="210mm"
      margin-top="20mm" margin-bottom="20mm"
      margin-left="25mm" margin-right="25mm">
      <fo:region-body margin-bottom="20mm"/>
      <fo:region-after region-name="footer-odd" extent="10mm"/>
    </fo:simple-page-master>
    <fo:page-sequence-master master-name="document">
      <fo:repeatable-page-master-alternatives>
        <fo:conditional-page-master-reference odd-or-even="even"
          master-reference="even"/>
        <fo:conditional-page-master-reference odd-or-even="odd"
          master-reference="odd"/>
      </fo:repeatable-page-master-alternatives>
    </fo:page-sequence-master>
  </fo:layout-master-set>
  <fo:page-sequence master-reference="document" font-family="Arial">
    <fo:static-content flow-name="footer-even">
      <fo:block text-align="end"><fo:page-number/></fo:block>
    </fo:static-content>
    <fo:static-content flow-name="footer-odd">
      <fo:block text-align-last="end"><fo:page-number/></fo:block>
    </fo:static-content>
          <fo:flow flow-name="xsl-region-body">							     				
										<xsl:for-each select="/DPFOA2025/DPFOA_Nadpis">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='235px'/><fo:table-column column-width='235px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>DAŇOVÉ PRIZNANIE</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>K DANI Z PRÍJMOV FYZICKEJ OSOBY</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>pre daňovníka, ktorý má príjmy len zo závislej činnosti</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>podľa § 5 zákona č. 595/2003 Z. z. o dani z príjmov v znení neskorších predpisov (ďalej len "zákon")</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/DPFOA_DruhDP">
    			<fo:block background-color='black' color='white'>Druh daňového priznania *</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='73px'/><fo:table-column column-width='73px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>daňové priznanie</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_DruhDP/rbDruhVykazuRiadny[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>opravné daňové priznanie</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_DruhDP/rbDruhVykazuOpravny[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>dodatočné daňové priznanie1)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_DruhDP/rbDruhVykazuDodatocny[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/DPFOA_DicDatum">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='105px'/><fo:table-column column-width='105px'/><fo:table-column column-width='118px'/><fo:table-column column-width='118px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>01 - DIČ (ak nie je pridelené, uvádza sa rodné číslo)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_DicDatum/cmbDic1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>02 - Dátum narodenia</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_DicDatum/dtpDatumNarodenia2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Riadok 02 sa vypĺňa, len ak ide o daňovníka, ktorý nemá pridelené DIČ ani rodné číslo</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/DPFOA_ZaRok">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='27px'/><fo:table-column column-width='27px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='155px'/><fo:table-column column-width='155px'/><fo:table-column column-width='110px'/><fo:table-column column-width='110px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Za rok</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_ZaRok/cmbRok'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Dátum zistenia skutočnosti na podanie dodatočného daňového priznania</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_ZaRok/tpDatumDDP'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1">
    			<fo:block background-color='black' color='white'>I. ODDIEL - ÚDAJE O DAŇOVNÍKOVI</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./UdajeODanovnikovi">
    			
						<xsl:for-each select="./UdajeODanovnikoviS">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='53px'/><fo:table-column column-width='53px'/><fo:table-column column-width='42px'/><fo:table-column column-width='42px'/><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>03 - Priezvisko</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>04 - Meno</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>05 -Titul pred menom/za priezviskom</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS/tbPriezvisko3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS/tbMeno4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS/tbTitul5_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS/tbTitul5_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./AdresaTrvalyPobyt">
    			<fo:block background-color='black' color='white'>Adresa trvalého pobytu v deň podania daňového priznania na území Slovenskej republiky alebo v zahraničí</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./AdresaTrvaly1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='42px'/><fo:table-column column-width='42px'/><fo:table-column column-width='38px'/><fo:table-column column-width='38px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>06 - Ulica</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>07 - Súpisné/orientačné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>06 - Ulica</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly1/tbUlica6'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>07 - Súpisné/orientačné číslo</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly1/tbCisloDomu7'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./AdresaTrvaly2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='35px'/><fo:table-column column-width='35px'/><fo:table-column column-width='40px'/><fo:table-column column-width='40px'/><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>08 - PSČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>09 - Obec</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>10 - Štát</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>08 - PSČ</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly2/tbPSC8'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>09 - Obec</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly2/tbObec9'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>10 - Štát</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly2/tbStat10'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./ObmedzenaPovinnost">
    			
						<xsl:for-each select="./ObmedzenaPovinnostS11_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='443px'/><fo:table-column column-width='443px'/><fo:table-column column-width='25px'/><fo:table-column column-width='25px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>11 - Daňový nerezident2)</fo:block></fo:table-cell><fo:table-cell><fo:block>áno</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_1/cbNerezident[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Identitifikačné číslo na daňové účely (TIN), pridelené v štáte daňovej rezidencie</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./ObmedzenaPovinnostS11_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>od</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_2/ObmedzenaPovinnostOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>do</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_2/ObmedzenaPovinnostDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_2/TIN'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./AdresaPobytSR">
    			<fo:block background-color='black' color='white'>Adresa bydliska alebo adresa pobytu na území Slovenskej republiky, kde sa daňovník zdržiaval v zdaňovacom období3)</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./AdresaPobytSR1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='42px'/><fo:table-column column-width='42px'/><fo:table-column column-width='38px'/><fo:table-column column-width='38px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>12 - Ulica</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>13 - Súpisné/orientačné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>12 - Ulica</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR1/tbUlica12'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>13 - Súpisné/orientačné číslo</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR1/tbCisloDomu13'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./AdresaPobytSR2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='35px'/><fo:table-column column-width='35px'/><fo:table-column column-width='40px'/><fo:table-column column-width='40px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>14 - PSČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>15 - Obec</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>14 - PSČ</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR2/tbPSC14'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>15 - Obec</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR2/tbObec15'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel2">
    			<fo:block background-color='black' color='black'>|</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1) Ak sa podáva dodatočné daňové priznanie z dôvodov uvedených v § 32 ods. 8, 9 a 11 alebo § 40 ods. 7 zákona, uvádzajú sa tieto dôvody v IX. oddiele.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>2) Vyznačí sa, ak ide o daňovníka s obmedzenou daňovou povinnosťou (nerezidenta) na území Slovenskej republiky podľa § 2 písm. e) bod 1 a 2 zákona a príslušného článku zmluvy o zamedzení dvojitého zdanenia; vypĺňa sa aj X. oddiel. Ako dátum od - do sa uvedie tá časť zdaňovacieho obdobia, počas ktorej bol daňovník na území Slovenskej republiky daňovníkom s obmedzenou daňovou povinnosťou.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>3) Vypĺňa sa, len ak daňovník nemá trvalý pobyt na území Slovenskej republiky.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>4) Ak daňové priznanie podáva daňovník sám, uvádza sa v tomto riadku jeho telefónne číslo a emailová adresa. Ak za daňovníka podáva daňové priznanie zástupca, v tomto riadku sa uvádza telefónne číslo a emailová adresa tohto zástupcu, ak sa s daňovníkom nedohodli inak. Údaje v r. 25 a 26 nie sú podľa § 32 ods. 7 zákona povinné.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./UdajeZastupca">
    			
						<xsl:for-each select="./DPFOA2012_DanovePriznanie_FOA_2panel5">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='0px'/><fo:table-column column-width='0px'/><fo:table-column column-width='0px'/><fo:table-column column-width='0px'/><fo:table-column column-width='0px'/><fo:table-column column-width='0px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>16 - Priezvisko</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>17 - Meno</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>18 - Titul pred menom/za priezviskom</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>16 - Priezvisko</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5/tbPriezvisko16'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>17 - Meno</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5/tbMeno17'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5/tbTitul18P'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5/tbTitul18Z'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./UdajeZastupca_Adresa">
    			
						<xsl:for-each select="./ZastupcaAdresa1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='73px'/><fo:table-column column-width='73px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>19 - Rodné číslo</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>20 - Ulica</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>21 - Súpisné/orientačné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1/tbRodneCislo19_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1/tbRodneCislo19_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1/tbUlica20'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>21 - Súpisné/orientačné číslo</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1/tbCislo21'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./ZastupcaAdresa2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='35px'/><fo:table-column column-width='35px'/><fo:table-column column-width='40px'/><fo:table-column column-width='40px'/><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>22 - PSČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>23 - Obec</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>24 - Štát</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>22 - PSČ</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa2/tbPSC22'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>23 - Obec</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa2/tbObec23'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>24 - Štát</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa2/tbStat24'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./ZastupcaKontakt1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='59px'/><fo:table-column column-width='59px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>25 - Telefónne číslo4)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>26 - Emailová adresa4)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./ZastupcaKontakt2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/ZastupcaKontakt2/t25Telefon'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel2/ZastupcaKontakt2/t26Mail'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3">
    			<fo:block background-color='black' color='white'>III. ODDIEL - ÚDAJE NA UPLATNENIE ZNÍŽENIA ZÁKLADU DANE (§ 11 zákona) A DAŇOVÉHO BONUSU (§ 33 zákona)</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='443px'/><fo:table-column column-width='443px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>5) Vypĺňa sa, len ak si daňovník uplatňuje nezdaniteľnú časť základu dane na manželku (manžela) podľa § 11 ods. 3 zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>6) Uvádzajú sa vlastné príjmy manželky (manžela) za celé zdaňovacie obdobie, za ktoré sa podáva daňové priznanie t. j. príjmy znížené o zaplatené poistné a príspevky, ktoré manželka (manžel) v tomto zdaňovacom období bola (bol) povinná (povinný) zaplatiť z týchto príjmov a v stĺpci počet mesiacov sa uvádza počet kalendárnych mesiacov v zdaňovacom období (kalendárnom roku), počas ktorých manželka (manžel) splnila podmienky uvedené v § 11 ods. 4 zákona, pričom do počtu mesiacov sa započítava každý kalendárny mesiac, na začiatku ktorého boli splnené ustanovené podmienky. Ak sú súčasne splnené dve a viac podmienok v tom istom kalendárnom mesiaci, do počtu mesiacov sa započíta takýto mesiac len jedenkrát.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>7) Uvádzajú sa údaje o vyživovanom dieťati (deťoch), na ktoré za rovnaké obdobie kalendárneho roka neuplatnil iný daňovník nárok na daňový bonus podľa zákona. Prílohou daňového priznania sú aj doklady preukazujúce nárok na daňový bonus podľa zákona (§ 32 ods. 10 zákona). To neplatí, ak už boli predložené správcovi dane a nedošlo k zmene údajov v nich uvedených. Ak daňovník v zdaňovacom období, za ktoré podáva daňové priznanie, takéto doklady predložil svojmu zamestnávateľovi a neuplatňuje si daňový bonus podľa zákona ani jeho pomernú časť podaním daňového priznania, uvedené doklady nie sú prílohou daňového priznania.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>7a) Prílohou daňového priznania je aj doklad preukazujúci oprávnenosť nároku na priznanie daňového bonusu podľa zákona druhou oprávnenou osobou, okrem rodného listu dieťaťa, ktorý bol vydaný na území SR.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>7b) Daňovník zaškrtne políčko v prípade, ak druhá oprávnená osoba podala daňové priznanie, v ktorom vykázala základ dane na účely výpočtu daňového bonusu podľa zákona, a to bez ohľadu na skutočnosť, či mala povinnosť podať daňové priznanie podľa § 32 zákona alebo nie, okrem prípadov uvedených v odkaze 7c.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>7c) Ak daňovník uplatňuje postup podľa § 33 ods. 8 zákona, t. j. navyšuje svoj základ dane o základ dane druhej oprávnenej osoby, môže tak v čase podania daňového priznania spraviť len v prípade, ak môže preukázať základ dane druhej oprávnenej osoby pre účely uplatnenia daňového bonusu, v súlade s citovaným znením zákona. Uvedené znamená, že ak druhá oprávnená osoba nepodala daňové priznanie na území Slovenskej republiky, potom daňovník k daňovému priznaniu priloží kópiu dokladu o ročnom zúčtovaní alebo kópiu dokladu preukazujúceho výšku základu dane z príjmov zo závislej činnosti podľa § 5 zákona druhej oprávnenej osoby, ktorej ročné zúčtovanie nebolo vykonané a nemala povinnosť podať daňové priznanie.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>7d) Vypĺňa sa na základe dokladov uvedených v odkaze 7b alebo 7c preukazujúcich výšku základu dane druhej oprávnenej osoby, pričom doklady uvedené v odkaze 7c sú prílohou daňového priznania.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./UdajePoberanieDochodku">
    			<fo:block background-color='black' color='white'>Údaje o poberaní dôchodkov uvedených v § 11 ods. 6 zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Riadok27">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='325px'/><fo:table-column column-width='325px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='35px'/><fo:table-column column-width='35px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Poberal (a) som na začiatku zdaňovacieho obdobia dôchodok (ky) uvedený (é) v § 11 ods. 6 zákona alebo mi bol (i) tento (tieto) dôchodok (ky) priznaný (é) spätne k začiatku príslušného zdaňovacieho obdobia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>27</fo:block></fo:table-cell><fo:table-cell><fo:block>áno</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajePoberanieDochodku/Riadok27/cbR27[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok28">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='250px'/><fo:table-column column-width='250px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='94px'/><fo:table-column column-width='94px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrnná suma dôchodku (ov) uvedeného (ných) v § 11 ods. 6 zákona za zdaňovacie obdobie v eurách (vypĺňa sa, len ak sa uplatňuje zníženie základu dane)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>28</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajePoberanieDochodku/Riadok28/t28'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./UdajeManzelka">
    			<fo:block background-color='black' color='white'>Údaje o manželke (manželovi), ktorá (ý) žije s daňovníkom v domácnosti5) na uplatnenie nezdaniteľnej časti základu dane</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./ManzelkaMeno">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='73px'/><fo:table-column column-width='73px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>29 - Priezvisko a meno</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Rodné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaMeno/tPriezvisko29_1_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./ManzelkaRodneCislo">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='6px'/><fo:table-column column-width='6px'/><fo:table-column column-width='47px'/><fo:table-column column-width='47px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaMeno/ManzelkaRodneCislo/tbRodneCisloR29_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaMeno/ManzelkaRodneCislo/tbRodneCisloR29_3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./ManzelkaPrijmy">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-column column-width='23px'/><fo:table-column column-width='23px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>30</fo:block></fo:table-cell><fo:table-cell><fo:block>uplatňujem nezdaniteľnú časť základu dane na manželku (manžela) podľa § 11 ods. 3 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaPrijmy/chr30[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>Vlastné príjmy (v eurách)6)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaPrijmy/tPrijmy29_4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>Počet mesiacov6)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaPrijmy/tMesiace29_5'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./UdajeDeti">
    			<fo:block background-color='black' color='black'>|</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekDeti">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='73px'/><fo:table-column column-width='73px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>31 - Priezvisko a meno</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Rodné číslo</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Daňový bonus podľa zákona uplatňujem v mesiacoch</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Dieta">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='6px'/><fo:table-column column-width='6px'/><fo:table-column column-width='47px'/><fo:table-column column-width='47px'/><fo:table-column column-width='18px'/><fo:table-column column-width='18px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='tPriezvisko31_1_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='tbRodneCislo31_1_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='tbRodneCislo31_1_3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM00_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM01_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM02_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM03_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM04_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM05_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM06_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM07_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM08_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM09_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM10_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM11_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="cbM12_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>1-12</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>3</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>4</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>5</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>6</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>7</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>8</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>9</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>10</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>11</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>12</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok31">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='190px'/><fo:table-column column-width='190px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>31a</fo:block></fo:table-cell><fo:table-cell><fo:block>Údaje o ďalších vyživovaných deťoch uvádzam v IX. oddiele v členení podľa r. 31</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Riadok31/cbViacAko4[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./UdajeOpravnenaOsoba">
    			<fo:block background-color='black' color='white'>Údaje druhej oprávnenej osoby vyživujúcej dieťa (deti) v domácnosti uvedené na r. 31</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekUplatPostup">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatňujem postup podľa § 33 ods. 8 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekUplatPostup/cbUplatPostup[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekOpravOsoba">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>32 - Priezvisko a meno7a)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Rodné číslo</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Mesiace, na začiatku ktorých druhá oprávnená osoba splnila podmienky na uplatnenie daňového bonusu podľa zákona</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./OpravnenaOsoba">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/tbPriezvisko32_1_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/tbRodneCislo32_1_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/tbRodneCislo32_1_3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_12_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_2[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_3[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_4[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_5[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_6[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_7[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_8[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_9[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_10[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_11[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_12[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>1-12</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>3</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>4</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>5</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>6</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>7</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>8</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>9</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>10</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>11</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>12</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekDodatUdajeOO">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Oznamujem, že druhá oprávnená osoba uvedená na r. 32 podala daňové priznanie na území Slovenskej republiky7b)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekDodatUdajeOO/cbOznDOO[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./sekPom">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Druhá oprávnená osoba uvedená na r. 32 na území Slovenskej republiky nepodala daňové priznanie, preto k daňovému priznaniu prikladám:</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>kópiu dokladu o vykonanom ročnom zúčtovaní preddavkov na daň z príjmov zo závislej činnosti podľa zákona (ďalej len &quot;ročné zúčtovanie&quot;) druhej oprávnenej osoby7c)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekDodatUdajeOO/sekPom/cbKopDokRZD[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>kópiu dokladu preukazujúceho výšku základu dane z príjmov podľa § 5 zákona druhej oprávnenej osoby, ktorej ročné zúčtovanie nebolo vykonané, a nemala povinnosť podať daňové priznanie 7c)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekDodatUdajeOO/sekPom/cbKopDokVZD[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok32a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane (čiastkový základ dane) z príjmov zo závislej činnosti alebo z príjmov z podnikania alebo z inej samostatnej zárobkovej činnosti alebo ich úhrn druhej oprávnenej osoby z r. 32, pre uplatnenie daňového bonusu podľa zákona7d)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>32a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/Riadok32a/t32a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/Oddiel4">
    			<fo:block background-color='black' color='white'>IV. ODDIEL - ÚDAJE NA UPLATNENIE DAŇOVÉHO BONUSU NA ZAPLATENÉ ÚROKY (§ 33a zákona)</fo:block><fo:block color='white'>|</fo:block>
				<fo:block text-align='justify'>8) R. 33 sa vypĺňa, ak si daňovník uplatňuje nárok na daňové zvýhodnenie na zaplatené úroky pri úveroch na bývanie podľa § 33a zákona (ďalej len "daňový bonus na zaplatené úroky podľa § 33a zákona“). Suma zaplatených úrokov za zdaňovacie obdobie, dátum uzavretia zmluvy o úvere a dátum začatia úročenia úveru sa uvádza podľa potvrdenia vydaného veriteľom podľa § 26a zákona č. 90/2016 Z. z. o úveroch na bývanie a o zmene a doplnení niektorých zákonov v znení neskorších predpisov, kópia potvrdenia je prílohou daňového priznania. V stĺpci počet mesiacov sa uvádza počet kalendárnych mesiacov v zdaňovacom období (kalendárnom roku), v ktorých má daňovník nárok na uplatnenie daňového bonusu na zaplatené úroky podľa § 33a zákona.</fo:block><fo:block color='white'>|</fo:block>		<xsl:for-each select="./SekRiadok33">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-column column-width='23px'/><fo:table-column column-width='23px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>33</fo:block></fo:table-cell><fo:table-cell><fo:block>uplatňujem daňový bonus na zaplatené úroky podľa § 33a zákona8)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel4/SekRiadok33/chr33[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>Zaplatené úroky za zdaňovacie obdobie (v eurách)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel4/SekRiadok33/t33_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>Počet mesiacov</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel4/SekRiadok33/t33_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./SekDatumZacUrUv">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Dátum začatia úročenia úveru</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel4/SekDatumZacUrUv/DatumZacUroUve'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Dátum uzavretiazmluvy o úvere na bývanie</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel4/SekDatumZacUrUv/DatumUzavZmluUverByv'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/Oddiel5">
    			<fo:block background-color='black' color='white'>V. ODDIEL - VÝPOČET ZÁKLADU DANE Z PRÍJMOV ZO ZÁVISLEJ ČINNOSTI (§ 5 zákona) - v eurách</fo:block><fo:block color='white'>|</fo:block>
				<fo:block text-align='justify'>9) Vypĺňa sa na základe všetkých potvrdení (dokladov) o príjmoch zo závislej činnosti plynúcich zo zdrojov na území Slovenskej republiky a zo zdrojov v zahraničí a o zaplatenom povinnom poistnom preukazujúcich uvádzané skutočnosti vrátane dostatočnej identifikácie daňovníka. Údaje o príjmoch zo zdrojov v zahraničí sa uvádzajú v IX. oddiele. Súčasťou príjmov v r. 34 sú aj príjmy podľa § 5 ods. 7 zákona, pri ktorých nie sú v príslušnom zdaňovacom období splnené podmienky pre ich oslobodenie od dane. Kópie potvrdení (dokladov) sú prílohami daňového priznania.</fo:block><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Riadok34">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn príjmov od všetkých zamestnávateľov9)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>34</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel5/Riadok34/t34'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Ztoho32a">
    			<fo:block background-color='black' color='white'>Z toho</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Riadok35">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='16px'/><fo:table-column column-width='16px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>úhrn príjmov plynúcich na základe dohôd o prácach vykonávaných mimo pracovného pomeru</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>35</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel5/Ztoho32a/Riadok35/t35'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok36">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn povinného poistného (§ 5 ods. 8 zákona)9)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>36</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel5/Riadok36/tbR36'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Ztoho33a">
    			<fo:block background-color='black' color='white'>Z toho</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Riadok37">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='101px'/><fo:table-column column-width='101px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>úhrn poistného na sociálne poistenie (zabezpečenie)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>37</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel5/Ztoho33a/Riadok37/tbR37'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok38">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='16px'/><fo:table-column column-width='16px'/><fo:table-column column-width='101px'/><fo:table-column column-width='101px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>úhrn poistného na zdravotné poistenie</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>38</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel5/Ztoho33a/Riadok38/tbR38'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok39">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='135px'/><fo:table-column column-width='135px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane podľa § 5 ods. 8 zákona (r. 34 - r. 36)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>39</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel5/Riadok39/t39'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/Oddiel6">
    			<fo:block background-color='black' color='white'>VI. ODDIEL - VÝPOČET DANE podľa § 15 zákona - v eurách</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>10) Ak daňovník neuplatňuje nárok na daňový bonus podľa zákona alebo daňový bonus na zaplatené úroky podľa § 33a zákona a suma v r. 56 nepresiahne 17 eur alebo ak daňovník neuplatňuje nárok na daňový bonus podľa zákona alebo daňový bonus na zaplatené úroky podľa § 33a zákona a jeho celkové zdaniteľné príjmy nepresiahnu 50 % sumy podľa § 11 ods. 2 písm. a) zákona alebo ide o daňovníka uvedeného v § 11 ods. 6 zákona, ktorý uplatňuje postup podľa § 46a zákona, v r. 56 sa uvádza nula.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>10a) Vypĺňa sa, len ak daňovník postupuje podľa § 33 ods. 8 zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>11) Ak sa uplatňuje daňový bonus podľa zákona, uvádza sa suma daňového bonusu na jedno dieťa alebo úhrn súm na viac detí (podľa údajov uvedených v III. a IX. oddiele).</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>12)  Ak je suma v r. 57 vyššia ako suma v r. 56, uvádza sa nula.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>13) Ak je v r. 61 suma daňového bonusu podľa zákona na vyplatenie správcom dane alebo v r. 78 dodatočného daňového priznania kladné číslo, vypĺňa sa žiadosť o jej vyplatenie v XI. oddiele.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>14) Ak daňovník uplatňuje daňový bonus na zaplatené úroky a zmluvu o úvere na bývanie uzavrel najneskôr do 31.12.2023, daňovým bonusom na zaplatené úroky je suma vo výške 50% zo zaplatených úrokov v príslušnom zdaňovacom období, najviac však do výšky 400 eur za rok. Ak daňovník uplatňuje daňový bonus na zaplatené úroky a zmluvu o úvere na bývanie uzavrel najskôr po 31.12.2023, daňovým bonusom na zaplatené úroky je suma vo výške 50% zo zaplatených úrokov v prílušnom zdaňovacom období, najviac však do výšky 1200 eur za rok. Ak obdobie úročenia úveru na bývanie, počas ktorého má daňovník nárok na tento daňový bonus, začalo alebo skončilo v priebehu zdaňovacieho obdobia, uvádza sa v r. 63 suma zodpovedajúca pomernej časti daňového bonusu na zaplatené úroky podľa § 33a zákona z maximálnej sumy určenej zákonom pripadajúca na počet kalendárnych mesiacov, v ktorých vznikol nárok na jeho uplatnenie.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>15) Ak je suma v r. 63 vyššia ako suma v r. 58, uvádza sa nula.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>16) Vypĺňa sa, ak bolo podané daňové priznanie po vykonaní ročného zúčtovania.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>17) Ak je v r. 67 suma daňového bonusu na zaplatené úroky podľa § 33a zákona na vyplatenie správcom dane alebo v r. 82 dodatočného daňového priznania kladné číslo, vypĺňa sa žiadosť o jej vyplatenie v XI. oddiele.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>18)  Preddavok (preddavky) z potvrdení (dokladov) o zdaniteľných príjmoch zo závislej činnosti, ktoré sú prílohami daňového priznania. V r. 69 sa neuvádzajú preddavky zrazené podľa daňových právnych predpisov platných v zahraničí, a tiež preddavky, ktoré nie sú zrazené v súlade s § 35 zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>19) Daň na úhradu sa neplatí, ak nepresiahne 5 eur, a to aj vtedy, ak daňovník použije postup podľa § 50 alebo § 50aa zákona, pričom v tomto riadku sa uvádza nula.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./ZnizenieDane">
    			<fo:block background-color='black' color='white'>Zníženie základu dane podľa § 11 zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Riadok40">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='102px'/><fo:table-column column-width='102px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>ods. 2 - na daňovníka</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>40</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/ZnizenieDane/Riadok40/t40'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok41">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='102px'/><fo:table-column column-width='102px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>ods. 3 - na manželku (manžela)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>41</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/ZnizenieDane/Riadok41/t41'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok42">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>ods. 8 - na preukázateľne zaplatené príspevky na celoeurópsky osobný dôchodkový produkt a príspevky na doplnkové dôchodkové sporenie maximálne v úhrnnej výške 180 eur</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>42</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/ZnizenieDane/Riadok42/t42'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok43">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='158px'/><fo:table-column column-width='158px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='97px'/><fo:table-column column-width='97px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Spolu (r. 40 + r. 41 + r.42) maximálne do výšky základu dane v r.39</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>43</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/ZnizenieDane/Riadok43/t43'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok44">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane z r. 39 znížený o sumu z r. 43 a zvýšený o sumu príspevkov, o ktorú sa zvyšuje základ dane podľa § 11 ods. 11 a § 52zza ods. 2 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>44</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok44/t44'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok45">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='182px'/><fo:table-column column-width='182px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň podľa § 15 zákona zo základu dane z r. 44</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>45</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok45/t45'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok46">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='69px'/><fo:table-column column-width='69px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zamestnanecká prémia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>46</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok46/t46'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok47">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='69px'/><fo:table-column column-width='69px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma zamestnaneckej prémie nesprávne vyplatenej zamestnávateľom alebo správcom dane</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>47</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok47/t47'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./VypocetDane">
    			<fo:block background-color='black' color='white'>Výpočet dane po vyňatí príjmov zo zdrojov v zahraničí</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Riadok48">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='136px'/><fo:table-column column-width='136px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn vyňatých príjmov (základov dane)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>48</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/VypocetDane/Riadok48/t48'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok49">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='139px'/><fo:table-column column-width='139px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane znížený o úhrn vyňatých príjmov (základov dane) (r. 44 - r. 48) (ak je rozdiel r. 44 a r. 48 záporný, uvádza sa v r. 49 nula)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>49</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/VypocetDane/Riadok49/t49'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok50">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='197px'/><fo:table-column column-width='197px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň podľa § 15 zákona po vyňatí príjmov zo zdrojov v zahraničí zo základu dane z r. 49</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>50</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok50/t50'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./DPFOA2012_DanovePriznanie_FOA_3panel27">
    			<fo:block background-color='black' color='white'>Výpočet dane uznanej na zápočet na tuzemskú daňovú povinnosť zo zaplatenej dane v zahraničí</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Riadok51">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='136px'/><fo:table-column column-width='136px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn príjmov (základov dane) zo zdrojov v zahraničí</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>51</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok51/t51'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok52">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='136px'/><fo:table-column column-width='136px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zaplatená v zahraničí z príjmov z r. 51</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>52</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok52/t52'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok53">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='136px'/><fo:table-column column-width='136px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='68px'/><fo:table-column column-width='68px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výpočet percenta dane na účely zápočtu r. 51 : [(r. 39 - r. 48) alebo r. 39] x 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>53</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok53/t53'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok54">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='139px'/><fo:table-column column-width='139px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Z dane zaplatenej v zahraničí možno započítať [(r. 50 alebo r. 45) x r. 53) : 100]</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>54</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok54/t54'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok55">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='197px'/><fo:table-column column-width='197px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň uznaná na zápočet (r. 54 maximálne do sumy v r. 52)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>55</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok55/t55'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok56">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='168px'/><fo:table-column column-width='168px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (daňová povinnosť) (r. 45 alebo r. 50 alebo r. 45 - r. 55 alebo r. 50 - r. 55)10)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>56</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok56/t56'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok56a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Navýšený základ dane na účely výpočtu daňového bonusu podľa zákona (r. 32a / 12 × počet zaškrtnutých mesiacov v r. 32 + r. 39)10a)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>56a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok56a/t56a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok57">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='197px'/><fo:table-column column-width='197px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Nárok na daňový bonus podľa zákona (na jedno dieťa alebo úhrn na viac vyživovaných detí)11)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>57</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok57/t57'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok58">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='186px'/><fo:table-column column-width='186px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (daňová povinnosť) znížená o daňový bonus podľa zákona (r. 56 - r. 57)12)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>58</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok58/t58'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok59">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='160px'/><fo:table-column column-width='160px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma daňového bonusu podľa zákona priznaného a vyplateného zamestnávateľom</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>59</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok59/t59'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok63">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='167px'/><fo:table-column column-width='167px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Nárok na daňový bonus na zaplatené úroky podľa § 33a zákona14)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>63</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok63/t63'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok64">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='167px'/><fo:table-column column-width='167px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (daňová povinnosť) znížená o daňový bonus podľa zákona a o daňový bonus na zaplatené úroky podľa § 33a zákona (r. 58 - r. 63)15)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>64</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok64/t64'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok65">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='167px'/><fo:table-column column-width='167px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma daňového bonusu na zaplatené úroky podľa § 33a zákona priznaného a vyplateného zamestnávateľom16)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>65</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok65/t65'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sek_UhrPreddavkov">
    			<fo:block background-color='black' color='white'>Úhrn preddavkov na daň</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Riadok68">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='83px'/><fo:table-column column-width='83px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>zaplatených podľa § 34 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>68</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok68/t68'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok69">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='83px'/><fo:table-column column-width='83px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>zrazených podľa § 35 zákona18) (neuvádzajú sa preddavky podľa § 35 ods. 10 a 11 zákona)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>69</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok69/t69'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok70">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='98px'/><fo:table-column column-width='98px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>zaplatených podľa § 35 ods. 10 a 11 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>70</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok70/t70'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok71">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='203px'/><fo:table-column column-width='203px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='8px'/><fo:table-column column-width='8px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň na úhradu vrátane zamestnávateľom nesprávne vyplatených daňových bonusov alebo zamestnaneckej prémie  r. 56 - r. 57 + r. 59 + r. 61 - r. 63 + r. 65 + r. 67 - r. 68 - r. 69 - r. 70 + r. 47 (+)19)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>71</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>+</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok71/t71'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok72">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='7px'/><fo:table-column column-width='7px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daňový preplatok znížený o zamestnávateľom nesprávne vyplatené daňové bonusy alebo zamestnaneckú prémiu r. 56 - r. 57 + r. 59 + r. 61 - r. 63 + r. 65 + r. 67 - r. 68 - r. 69 - r. 70 + r. 47 (-)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>72</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>-</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel6/Riadok72/t72'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/Oddiel7">
    			<fo:block background-color='black' color='white'>VII. ODDIEL - ROZDIELY Z DODATOČNÉHO DAŇOVÉHO PRIZNANIA - v eurách</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='446px'/><fo:table-column column-width='446px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>20) Daňové priznanie podané v lehote na podanie daňového priznania podľa § 49 zákona alebo bezprostredne predchádzajúce dodatočné daňové priznanie, ak daňovník podal ďalšie dodatočné daňové priznanie.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>21) Ak daňovník uplatňoval postup podľa § 50aa zákona, daňový preplatok je potrebné upraviť v súlade s § 50aa ods. 8 zákona.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Riadok73">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='203px'/><fo:table-column column-width='203px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (daňová povinnosť) z r. 56 daňového priznania20) alebo r. 116 daňového priznania fyzickej osoby typ B20) alebo r. 06 ročného zúčtovania</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>73</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel7/Riadok73/t73'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok74">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='192px'/><fo:table-column column-width='192px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zvýšenie (+) alebo zníženie (-) dane (r. 56 - r. 73)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>74</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel7/Riadok74/t74'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok75">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='203px'/><fo:table-column column-width='203px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň na úhradu alebo daňový preplatok z r. 71 alebo r. 72 daňového priznania20) alebo r. 135 alebo r. 136 daňového priznania fyzickej osoby typ B alebo r. 21 ročného zúčtovania</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>75</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel7/Riadok75/t75'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok76">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='192px'/><fo:table-column column-width='192px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň na úhradu (+) alebo daňový preplatok (-) (r. 71 alebo r. 72) - r. 75 + [(r. 82 daňového priznania20) - 2% alebo 3% z r. 64) > 0]21)  alebo (r. 71 alebo r. 72) - r. 75 + [(r. 13 vyhlásenia o poukázaní sumy podielu zaplatenej dane - 2 % alebo 3 % z r. 64) > 0]21) alebo (r. 71 alebo r. 72) - r. 75 + [(r. 152 daňového priznania fyzickej osoby typ B20) - 2 % alebo 3 % z r. 64) > 0]21)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>76</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel7/Riadok76/t76'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok77">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='79px'/><fo:table-column column-width='79px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma daňového bonusu podľa zákona na poukázanie správcom dane z r. 61 daňového priznania20) alebo r. 121 daňového priznania fyzickej osoby typ B20) alebo r. 12 ročného zúčtovania</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>77</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel7/Riadok77/t77'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok78">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='192px'/><fo:table-column column-width='192px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='93px'/><fo:table-column column-width='93px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Rozdiel súm daňového bonusu podľa zákona na poukázanie správcom dane (+), na vrátenie správcovi dane (-) (r. 61 - r. 77)13)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>78</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel7/Riadok78/t78'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok79">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='79px'/><fo:table-column column-width='79px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma daňového bonusu na zaplatené úroky podľa § 33a zákona na poukázanie správcom dane z r. 67 daňového priznania20) alebo r. 127 daňového priznania fyzickej osoby typ B20) alebo r. 16 ročného zúčtovania preddavkov</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>79</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel7/Riadok79/t79'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok80">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='192px'/><fo:table-column column-width='192px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='93px'/><fo:table-column column-width='93px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Rozdiel súm daňového bonusu na zaplatené úroky podľa § 33a zákona na poukázanie správcom dane (+), na vrátenie správcovi dane (-) (r. 67 - r. 79)17)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>80</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel7/Riadok80/t80'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/Oddiel8">
    			<fo:block background-color='black' color='white'>VIII. ODDIEL - VYHLÁSENIE o poukázaní podielu zaplatenej dane z príjmov fyzickej osoby  podľa § 50 a § 50aa zákona</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>súhlasím so zaslaním údajov (meno, priezvisko a trvalý pobyt) mnou určenému prijímateľovi podielu zaplatenej dane uvedenému v r. 81 podľa § 50 ods. 8 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel8/chb_SuhlasUdaje[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>bol som zverený do starostlivosti nahrádzajúcej starostlivosť rodičov na základe rozhodnutia príslušného orgánu24)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel8/chNahrStar[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>22) IČO sa zarovnáva sprava a ak obsahuje menej ako 12 čísiel, nepoužité polia zostávajú prázdne.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>23) Podiel do výšky 3 % dane podľa § 50 ods. 1 písm. a) zákona môže prijímateľovi poukázať fyzická osoba, ktorá v zdaňovacom období vykonávala dobrovoľnícku činnosť podľa zákona č. 406/2011 Z. z. o dobrovoľníctve a o zmene a doplnení niektorých zákonov v znení neskorších predpisov počas najmenej 40 hodín, pričom písomné potvrdenie o výkone tejto činnosti je prílohou daňového priznania.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>24) Kópia rozhodnutia príslušného orgánu o zverení do starostlivosti nahrádzajúcej starostlivosť rodičov je prílohou daňového priznania.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./DPFOA2012_DanovePriznanie_FOA_5panel21">
    			<fo:block background-color='black' color='white'>81 - ÚDAJE O PRIJÍMATEĽOVI</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekNeP50a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='107px'/><fo:table-column column-width='107px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>neuplatňujem postup podľa § 50 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/sekNeP50a/cbParagraf50[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok81">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='0px'/><fo:table-column column-width='0px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>IČO22)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/Riadok81/ico76'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>(prehľad prijímateľov)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./ObchodneMeno">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='417px'/><fo:table-column column-width='417px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Obchodné meno (názov)</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/ObchodneMeno/ObchMeno76'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok82">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='107px'/><fo:table-column column-width='107px'/><fo:table-column column-width='107px'/><fo:table-column column-width='107px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='107px'/><fo:table-column column-width='107px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>spĺňam podmienky na poukázanie 3 % z dane23)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel8/Riadok82/cbSplnam3per[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>2 % alebo 3 %23) zo zaplatenej dane (minimálne 3 eurá) z r. 64</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>82</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok82/t82'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok83">
    			<fo:block background-color='black' color='white'>83 - ÚDAJE O RODIČOVI / RODIČOCH</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekNeP50aa">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>neuplatňujem postup podľa § 50aa zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel8/Riadok83/sekNeP50aa/cbParagraf50aa[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekRodiciaHl">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Označenie</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Rodné číslo</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Priezvisko</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Meno</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekciaRodic">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/tbRodneCislo83A_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/tbRodneCislo83A_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/Priezvisko83A'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/Meno83A'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>b</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/tbRodneCislo83B_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/tbRodneCislo83B_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/Priezvisko83B'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/Meno83B'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/Oddiel9">
    			<fo:block background-color='black' color='white'>IX. ODDIEL - MIESTO NA OSOBITNÉ ZÁZNAMY DAŇOVNÍKA</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='98px'/><fo:table-column column-width='98px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uvádzam osobitné záznamy</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel9/cbUvadzam[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Údaje o príjmoch zo závislej činnosti z r. 34 daňovníka s neobmedzenou daňovou povinnosťou plynúcich zo zdrojov v zahraničí, ktoré sú súčasťou základu dane, pričom sa uvádza číselný kód štátu podľa vyhlášky Štatistického úradu Slovenskej republiky č. 112/2012 Z. z., ktorou sa vydáva Štatistický číselník krajín v znení vyhlášky č. 108/2014 Z. z.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>25) Výdavky na povinné poistné a príspevky preukázateľne zaplatené v Slovenskej republike a v zahraničí, ktoré je povinný platiť zamestnanec.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>26) Výdavky na povinné poistné a príspevky preukázateľne zaplatené v zahraničí, ktoré je povinný platiť zamestnanec.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt'>Osobitne záznamy</fo:block></fo:table-cell></fo:table-row>
                                        <fo:table-row height='100px'><fo:table-cell border-width='0.1mm' border-style='solid' background-color='white'><fo:block padding-left='1pt' hyphenate='true'><xsl:value-of select='/DPFOA2025/Oddiel9/OsobitneZaznamy'/></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./secPom">
    			
						<xsl:for-each select="./UdajePrijem9_lbl">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Kód štátu</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Príjmy</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Výdavky25)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z toho výdavky26)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./UdajePrijem9">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:if test="KodStatu[text()='004']">004 - Afganistan</xsl:if><xsl:if test="KodStatu[text()='008']">008 - Albánsko</xsl:if><xsl:if test="KodStatu[text()='010']">010 - Antarktída</xsl:if><xsl:if test="KodStatu[text()='012']">012 - Alžírsko</xsl:if><xsl:if test="KodStatu[text()='016']">016 - Americká Samoa</xsl:if><xsl:if test="KodStatu[text()='020']">020 - Andorra</xsl:if><xsl:if test="KodStatu[text()='024']">024 - Angola</xsl:if><xsl:if test="KodStatu[text()='028']">028 - Antigua a Barbuda</xsl:if><xsl:if test="KodStatu[text()='031']">031 - Azerbajdžan</xsl:if><xsl:if test="KodStatu[text()='032']">032 - Argentína</xsl:if><xsl:if test="KodStatu[text()='036']">036 - Austrália</xsl:if><xsl:if test="KodStatu[text()='040']">040 - Rakúsko</xsl:if><xsl:if test="KodStatu[text()='044']">044 - Bahamy</xsl:if><xsl:if test="KodStatu[text()='048']">048 - Bahrajn</xsl:if><xsl:if test="KodStatu[text()='050']">050 - Bangladéš</xsl:if><xsl:if test="KodStatu[text()='051']">051 - Arménsko</xsl:if><xsl:if test="KodStatu[text()='052']">052 - Barbados</xsl:if><xsl:if test="KodStatu[text()='056']">056 - Belgicko</xsl:if><xsl:if test="KodStatu[text()='060']">060 - Bermudy</xsl:if><xsl:if test="KodStatu[text()='064']">064 - Bhután</xsl:if><xsl:if test="KodStatu[text()='068']">068 - Bolívia</xsl:if><xsl:if test="KodStatu[text()='070']">070 - Bosna a Hercegovina</xsl:if><xsl:if test="KodStatu[text()='072']">072 - Botswana</xsl:if><xsl:if test="KodStatu[text()='074']">074 - Bouvetov ostrov</xsl:if><xsl:if test="KodStatu[text()='076']">076 - Brazília</xsl:if><xsl:if test="KodStatu[text()='084']">084 - Belize</xsl:if><xsl:if test="KodStatu[text()='086']">086 - Britské indickooceánske územie</xsl:if><xsl:if test="KodStatu[text()='090']">090 - Šalamúnove ostrovy</xsl:if><xsl:if test="KodStatu[text()='092']">092 - Britské Panenské ostrovy</xsl:if><xsl:if test="KodStatu[text()='096']">096 - Brunejsko-darussalamský štát</xsl:if><xsl:if test="KodStatu[text()='100']">100 - Bulharsko</xsl:if><xsl:if test="KodStatu[text()='104']">104 - Mjanmarsko</xsl:if><xsl:if test="KodStatu[text()='108']">108 - Burundi</xsl:if><xsl:if test="KodStatu[text()='112']">112 - Bielorusko</xsl:if><xsl:if test="KodStatu[text()='116']">116 - Kambodža</xsl:if><xsl:if test="KodStatu[text()='120']">120 - Kamerun</xsl:if><xsl:if test="KodStatu[text()='124']">124 - Kanada</xsl:if><xsl:if test="KodStatu[text()='132']">132 - Kapverdy</xsl:if><xsl:if test="KodStatu[text()='136']">136 - Kajmanie ostrovy</xsl:if><xsl:if test="KodStatu[text()='140']">140 - Stredoafrická republika</xsl:if><xsl:if test="KodStatu[text()='144']">144 - Srí Lanka</xsl:if><xsl:if test="KodStatu[text()='148']">148 - Čad</xsl:if><xsl:if test="KodStatu[text()='152']">152 - Čile</xsl:if><xsl:if test="KodStatu[text()='156']">156 - Čína</xsl:if><xsl:if test="KodStatu[text()='158']">158 - Taiwan</xsl:if><xsl:if test="KodStatu[text()='162']">162 - Vianočný ostrov</xsl:if><xsl:if test="KodStatu[text()='166']">166 - Kokosové ostrovy</xsl:if><xsl:if test="KodStatu[text()='170']">170 - Kolumbia</xsl:if><xsl:if test="KodStatu[text()='174']">174 - Komory</xsl:if><xsl:if test="KodStatu[text()='175']">175 - Mayotte</xsl:if><xsl:if test="KodStatu[text()='178']">178 - Kongo</xsl:if><xsl:if test="KodStatu[text()='180']">180 - Kongo (býv. Zair)</xsl:if><xsl:if test="KodStatu[text()='184']">184 - Cookove ostrovy</xsl:if><xsl:if test="KodStatu[text()='188']">188 - Kostarika</xsl:if><xsl:if test="KodStatu[text()='191']">191 - Chorvátsko</xsl:if><xsl:if test="KodStatu[text()='192']">192 - Kuba</xsl:if><xsl:if test="KodStatu[text()='196']">196 - Cyprus</xsl:if><xsl:if test="KodStatu[text()='203']">203 - Česko</xsl:if><xsl:if test="KodStatu[text()='204']">204 - Benin</xsl:if><xsl:if test="KodStatu[text()='208']">208 - Dánsko</xsl:if><xsl:if test="KodStatu[text()='212']">212 - Dominika</xsl:if><xsl:if test="KodStatu[text()='214']">214 - Dominikánska republika</xsl:if><xsl:if test="KodStatu[text()='218']">218 - Ekvádor</xsl:if><xsl:if test="KodStatu[text()='222']">222 - Salvádor</xsl:if><xsl:if test="KodStatu[text()='226']">226 - Rovníková Guinea</xsl:if><xsl:if test="KodStatu[text()='231']">231 - Etiópia</xsl:if><xsl:if test="KodStatu[text()='232']">232 - Eritrea</xsl:if><xsl:if test="KodStatu[text()='233']">233 - Estónsko</xsl:if><xsl:if test="KodStatu[text()='234']">234 - Faerské ostrovy</xsl:if><xsl:if test="KodStatu[text()='238']">238 - Falklandy</xsl:if><xsl:if test="KodStatu[text()='239']">239 - Južná Georgia a Južné Sandwichove ostrovy</xsl:if><xsl:if test="KodStatu[text()='242']">242 - Fidži</xsl:if><xsl:if test="KodStatu[text()='246']">246 - Fínsko</xsl:if><xsl:if test="KodStatu[text()='248']">248 - Alandy</xsl:if><xsl:if test="KodStatu[text()='250']">250 - Francúzsko</xsl:if><xsl:if test="KodStatu[text()='254']">254 - Francúzska Guyana</xsl:if><xsl:if test="KodStatu[text()='258']">258 - Francúzska Polynézia</xsl:if><xsl:if test="KodStatu[text()='260']">260 - Francúzske južné územia</xsl:if><xsl:if test="KodStatu[text()='262']">262 - Džibutsko</xsl:if><xsl:if test="KodStatu[text()='266']">266 - Gabon</xsl:if><xsl:if test="KodStatu[text()='268']">268 - Gruzínsko</xsl:if><xsl:if test="KodStatu[text()='270']">270 - Gambia</xsl:if><xsl:if test="KodStatu[text()='275']">275 - Palestína</xsl:if><xsl:if test="KodStatu[text()='276']">276 - Nemecko</xsl:if><xsl:if test="KodStatu[text()='288']">288 - Ghana</xsl:if><xsl:if test="KodStatu[text()='292']">292 - Gibraltár</xsl:if><xsl:if test="KodStatu[text()='296']">296 - Karibati</xsl:if><xsl:if test="KodStatu[text()='300']">300 - Grécko</xsl:if><xsl:if test="KodStatu[text()='304']">304 - Grónsko</xsl:if><xsl:if test="KodStatu[text()='308']">308 - Grenada</xsl:if><xsl:if test="KodStatu[text()='312']">312 - Guadaloupe</xsl:if><xsl:if test="KodStatu[text()='316']">316 - Guam</xsl:if><xsl:if test="KodStatu[text()='320']">320 - Guatemala</xsl:if><xsl:if test="KodStatu[text()='324']">324 - Guinea</xsl:if><xsl:if test="KodStatu[text()='328']">328 - Guyana</xsl:if><xsl:if test="KodStatu[text()='332']">332 - Haiti</xsl:if><xsl:if test="KodStatu[text()='334']">334 - Heardov ostrov a Macdonaldove ostrovy</xsl:if><xsl:if test="KodStatu[text()='336']">336 - Vatikán</xsl:if><xsl:if test="KodStatu[text()='340']">340 - Honduras</xsl:if><xsl:if test="KodStatu[text()='344']">344 - Hongkong</xsl:if><xsl:if test="KodStatu[text()='348']">348 - Maďarsko</xsl:if><xsl:if test="KodStatu[text()='352']">352 - Island</xsl:if><xsl:if test="KodStatu[text()='356']">356 - India</xsl:if><xsl:if test="KodStatu[text()='360']">360 - Indonézia</xsl:if><xsl:if test="KodStatu[text()='364']">364 - Irak</xsl:if><xsl:if test="KodStatu[text()='364']">364 - Irán</xsl:if><xsl:if test="KodStatu[text()='372']">372 - Írsko</xsl:if><xsl:if test="KodStatu[text()='376']">376 - Izrael</xsl:if><xsl:if test="KodStatu[text()='380']">380 - Taliansko</xsl:if><xsl:if test="KodStatu[text()='384']">384 - Pobrežie Slonoviny</xsl:if><xsl:if test="KodStatu[text()='388']">388 - Jamajka</xsl:if><xsl:if test="KodStatu[text()='392']">392 - Japonsko</xsl:if><xsl:if test="KodStatu[text()='398']">398 - Kazachstan</xsl:if><xsl:if test="KodStatu[text()='400']">400 - Jordánsko</xsl:if><xsl:if test="KodStatu[text()='404']">404 - Keňa</xsl:if><xsl:if test="KodStatu[text()='408']">408 - Kórejská ľudovodemokratická republika</xsl:if><xsl:if test="KodStatu[text()='410']">410 - Kórejská republika</xsl:if><xsl:if test="KodStatu[text()='414']">414 - Kuvajt</xsl:if><xsl:if test="KodStatu[text()='417']">417 - Kirgizsko</xsl:if><xsl:if test="KodStatu[text()='418']">418 - Laos</xsl:if><xsl:if test="KodStatu[text()='422']">422 - Libanon</xsl:if><xsl:if test="KodStatu[text()='426']">426 - Lesotho</xsl:if><xsl:if test="KodStatu[text()='428']">428 - Lotyšsko</xsl:if><xsl:if test="KodStatu[text()='430']">430 - Libéria</xsl:if><xsl:if test="KodStatu[text()='434']">434 - Líbya</xsl:if><xsl:if test="KodStatu[text()='438']">438 - Lichtenštajnsko</xsl:if><xsl:if test="KodStatu[text()='440']">440 - Litva</xsl:if><xsl:if test="KodStatu[text()='442']">442 - Luxembursko</xsl:if><xsl:if test="KodStatu[text()='446']">446 - Macao</xsl:if><xsl:if test="KodStatu[text()='450']">450 - Madagaskar</xsl:if><xsl:if test="KodStatu[text()='454']">454 - Malawi</xsl:if><xsl:if test="KodStatu[text()='458']">458 - Malajzia</xsl:if><xsl:if test="KodStatu[text()='462']">462 - Maldivy</xsl:if><xsl:if test="KodStatu[text()='466']">466 - Mali</xsl:if><xsl:if test="KodStatu[text()='470']">470 - Malta</xsl:if><xsl:if test="KodStatu[text()='470']">470 - Martinik</xsl:if><xsl:if test="KodStatu[text()='478']">478 - Mauritánia</xsl:if><xsl:if test="KodStatu[text()='480']">480 - Maurícius</xsl:if><xsl:if test="KodStatu[text()='484']">484 - Mexiko</xsl:if><xsl:if test="KodStatu[text()='492']">492 - Monako</xsl:if><xsl:if test="KodStatu[text()='496']">496 - Mongolsko</xsl:if><xsl:if test="KodStatu[text()='498']">498 - Moldavsko</xsl:if><xsl:if test="KodStatu[text()='499']">499 - Čierna Hora</xsl:if><xsl:if test="KodStatu[text()='500']">500 - Montserrat</xsl:if><xsl:if test="KodStatu[text()='504']">504 - Maroko</xsl:if><xsl:if test="KodStatu[text()='508']">508 - Mozambik</xsl:if><xsl:if test="KodStatu[text()='512']">512 - Omán</xsl:if><xsl:if test="KodStatu[text()='516']">516 - Namíbia</xsl:if><xsl:if test="KodStatu[text()='520']">520 - Nauru</xsl:if><xsl:if test="KodStatu[text()='524']">524 - Nepál</xsl:if><xsl:if test="KodStatu[text()='528']">528 - Holandsko</xsl:if><xsl:if test="KodStatu[text()='531']">531 - Curaçao</xsl:if><xsl:if test="KodStatu[text()='533']">533 - Aruba</xsl:if><xsl:if test="KodStatu[text()='534']">534 - Svätý Martin (holandská časť)</xsl:if><xsl:if test="KodStatu[text()='535']">535 - Bonaire, Svätý Eustach a Saba</xsl:if><xsl:if test="KodStatu[text()='540']">540 - Nová Kaledónia</xsl:if><xsl:if test="KodStatu[text()='548']">548 - Vanuatu</xsl:if><xsl:if test="KodStatu[text()='554']">554 - Nový Zéland</xsl:if><xsl:if test="KodStatu[text()='558']">558 - Nikaragua</xsl:if><xsl:if test="KodStatu[text()='562']">562 - Niger</xsl:if><xsl:if test="KodStatu[text()='566']">566 - Nigéria</xsl:if><xsl:if test="KodStatu[text()='570']">570 - Niue</xsl:if><xsl:if test="KodStatu[text()='574']">574 - Norfolk</xsl:if><xsl:if test="KodStatu[text()='578']">578 - Nórsko</xsl:if><xsl:if test="KodStatu[text()='580']">580 - Severné Mariány</xsl:if><xsl:if test="KodStatu[text()='581']">581 - Menšie odľahlé ostrovy USA</xsl:if><xsl:if test="KodStatu[text()='583']">583 - Mikronézia</xsl:if><xsl:if test="KodStatu[text()='584']">584 - Marshallove ostrovy</xsl:if><xsl:if test="KodStatu[text()='585']">585 - Palau</xsl:if><xsl:if test="KodStatu[text()='586']">586 - Pakistan</xsl:if><xsl:if test="KodStatu[text()='591']">591 - Panama</xsl:if><xsl:if test="KodStatu[text()='598']">598 - Papua-Nová Guinea</xsl:if><xsl:if test="KodStatu[text()='600']">600 - Paraguaj</xsl:if><xsl:if test="KodStatu[text()='604']">604 - Peru</xsl:if><xsl:if test="KodStatu[text()='608']">608 - Filipíny</xsl:if><xsl:if test="KodStatu[text()='612']">612 - Pitcairnove ostrovy</xsl:if><xsl:if test="KodStatu[text()='616']">616 - Poľsko</xsl:if><xsl:if test="KodStatu[text()='620']">620 - Portugalsko</xsl:if><xsl:if test="KodStatu[text()='624']">624 - Guinea-Bissau</xsl:if><xsl:if test="KodStatu[text()='626']">626 - Východný Timor</xsl:if><xsl:if test="KodStatu[text()='630']">630 - Portoriko</xsl:if><xsl:if test="KodStatu[text()='634']">634 - Katar</xsl:if><xsl:if test="KodStatu[text()='638']">638 - Réunion</xsl:if><xsl:if test="KodStatu[text()='642']">642 - Rumunsko</xsl:if><xsl:if test="KodStatu[text()='643']">643 - Rusko</xsl:if><xsl:if test="KodStatu[text()='646']">646 - Rwanda</xsl:if><xsl:if test="KodStatu[text()='652']">652 - Svätý Bartolomej</xsl:if><xsl:if test="KodStatu[text()='654']">654 - Svätá Helena</xsl:if><xsl:if test="KodStatu[text()='659']">659 - Svätý Krištof a Nevis</xsl:if><xsl:if test="KodStatu[text()='660']">660 - Anguilla</xsl:if><xsl:if test="KodStatu[text()='662']">662 - Svätá Lucia</xsl:if><xsl:if test="KodStatu[text()='663']">663 - Svätý Martin (francúzska časť)</xsl:if><xsl:if test="KodStatu[text()='666']">666 - Saint Pierre a Miquelon</xsl:if><xsl:if test="KodStatu[text()='670']">670 - Svätý Vincent a Grenadíny</xsl:if><xsl:if test="KodStatu[text()='674']">674 - San Maríno</xsl:if><xsl:if test="KodStatu[text()='678']">678 - Svätý Tomáš a Princov ostrov</xsl:if><xsl:if test="KodStatu[text()='682']">682 - Saudská Arábia</xsl:if><xsl:if test="KodStatu[text()='686']">686 - Senegal</xsl:if><xsl:if test="KodStatu[text()='688']">688 - Srbsko</xsl:if><xsl:if test="KodStatu[text()='690']">690 - Seychely</xsl:if><xsl:if test="KodStatu[text()='694']">694 - Sierra Leone</xsl:if><xsl:if test="KodStatu[text()='702']">702 - Singapur</xsl:if><xsl:if test="KodStatu[text()='703']">703 - Slovensko</xsl:if><xsl:if test="KodStatu[text()='704']">704 - Vietnam</xsl:if><xsl:if test="KodStatu[text()='705']">705 - Slovinsko</xsl:if><xsl:if test="KodStatu[text()='706']">706 - Somálsko</xsl:if><xsl:if test="KodStatu[text()='710']">710 - Južná Afrika</xsl:if><xsl:if test="KodStatu[text()='716']">716 - Zimbabwe</xsl:if><xsl:if test="KodStatu[text()='724']">724 - Španielsko</xsl:if><xsl:if test="KodStatu[text()='728']">728 - Južný Sudán</xsl:if><xsl:if test="KodStatu[text()='729']">729 - Sudán</xsl:if><xsl:if test="KodStatu[text()='732']">732 - Západná Sahara</xsl:if><xsl:if test="KodStatu[text()='740']">740 - Surinam</xsl:if><xsl:if test="KodStatu[text()='744']">744 - Svalbard a Jan Mayen</xsl:if><xsl:if test="KodStatu[text()='748']">748 - Svazijsko</xsl:if><xsl:if test="KodStatu[text()='752']">752 - Švédsko</xsl:if><xsl:if test="KodStatu[text()='756']">756 - Švajčiarsko</xsl:if><xsl:if test="KodStatu[text()='760']">760 - Sýria</xsl:if><xsl:if test="KodStatu[text()='762']">762 - Tadžikistan</xsl:if><xsl:if test="KodStatu[text()='764']">764 - Thajsko</xsl:if><xsl:if test="KodStatu[text()='768']">768 - Togo</xsl:if><xsl:if test="KodStatu[text()='772']">772 - Tokelau</xsl:if><xsl:if test="KodStatu[text()='776']">776 - Tonga</xsl:if><xsl:if test="KodStatu[text()='780']">780 - Trinidad a Tobago</xsl:if><xsl:if test="KodStatu[text()='784']">784 - Spojené arabské emiráty</xsl:if><xsl:if test="KodStatu[text()='788']">788 - Tunisko</xsl:if><xsl:if test="KodStatu[text()='792']">792 - Turecko</xsl:if><xsl:if test="KodStatu[text()='795']">795 - Turkménsko</xsl:if><xsl:if test="KodStatu[text()='796']">796 - Turks a Caicos</xsl:if><xsl:if test="KodStatu[text()='798']">798 - Tuvalu</xsl:if><xsl:if test="KodStatu[text()='800']">800 - Uganda</xsl:if><xsl:if test="KodStatu[text()='804']">804 - Ukrajina</xsl:if><xsl:if test="KodStatu[text()='807']">807 - Macedónsko</xsl:if><xsl:if test="KodStatu[text()='818']">818 - Egypt</xsl:if><xsl:if test="KodStatu[text()='826']">826 - Spojené kráľovstvo</xsl:if><xsl:if test="KodStatu[text()='831']">831 - Guernsey</xsl:if><xsl:if test="KodStatu[text()='832']">832 - Jersey</xsl:if><xsl:if test="KodStatu[text()='833']">833 - Man</xsl:if><xsl:if test="KodStatu[text()='834']">834 - Tanzánia</xsl:if><xsl:if test="KodStatu[text()='840']">840 - Spojené štáty americké</xsl:if><xsl:if test="KodStatu[text()='850']">850 - Americké Panenské ostrovy</xsl:if><xsl:if test="KodStatu[text()='854']">854 - Burkina</xsl:if><xsl:if test="KodStatu[text()='858']">858 - Uruguaj</xsl:if><xsl:if test="KodStatu[text()='860']">860 - Uzbekistan</xsl:if><xsl:if test="KodStatu[text()='862']">862 - Venezuela</xsl:if><xsl:if test="KodStatu[text()='876']">876 - Wallis a Futuna</xsl:if><xsl:if test="KodStatu[text()='882']">882 - Samoa</xsl:if><xsl:if test="KodStatu[text()='887']">887 - Jemen</xsl:if><xsl:if test="KodStatu[text()='894']">894 - Zambia</xsl:if><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='cast9prijmy1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='cast9vydavky1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='cast9vydavky2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/Oddiel10">
    			<fo:block background-color='black' color='white'>X. ODDIEL - ĎALŠIE ÚDAJE O DAŇOVNÍKOVI</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='443px'/><fo:table-column column-width='443px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>27) Vypĺňa sa, ak ide o daňovníka s obmedzenou daňovou povinnosťou.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>28) Vypĺňa sa, ak ide o daňovníka s neobmedzenou daňovou povinnosťou (rezidenta), ktorý uplatňuje postup podľa § 33 ods. 9 zákona a ak ide o daňovníka s obmedzenou daňovou povinnosťou (nerezidenta), ktorý uplatňuje postup podľa § 11 ods. 7, § 33 ods. 9, § 33a ods. 10 a § 46a zákona a ak ide o daňovníka (rezidenta aj nerezidenta), ktorý je druhou oprávnenou osobou pre účely uplatnenia § 33 ods. 8 zákona. V riadku sa uvádzajú aj zdaniteľné príjmy, z ktorých sa daň vyberá zrážkou.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Riadok84">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='144px'/><fo:table-column column-width='144px'/><fo:table-column column-width='440px'/><fo:table-column column-width='440px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>84 - Štát daňovej rezidencie27)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel10/Riadok84/t84'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok85">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='199px'/><fo:table-column column-width='199px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn všetkých zdaniteľných príjmov plynúcich zo zdrojov na území Slovenskej republiky a zo zdrojov v zahraničí v eurách28)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>85</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel10/Riadok85/t85'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Ztoho85a">
    			<fo:block background-color='black' color='white'>Z toho</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Riadok85a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>úhrn všetkých zdaniteľných príjmov plynúcich zo zdrojov na území Slovenskej republiky28)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>85a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel10/Ztoho85a/Riadok85a/t85a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok86">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='48px'/><fo:table-column column-width='48px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='21px'/><fo:table-column column-width='21px'/><fo:table-column column-width='154px'/><fo:table-column column-width='154px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Počet príloh</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>86</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel10/Riadok86/t86'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Uvádza sa počet všetkých príloh, ktoré sú súčasťou daňového priznania.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Vyhlasenie">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='211px'/><fo:table-column column-width='211px'/><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-column column-width='106px'/><fo:table-column column-width='106px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Vyhlasujem, že všetky údaje uvedené v daňovom priznaní sú správne a úplné.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Dátum</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel10/Vyhlasenie/tbDatumVyhlasenie'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOA2025/Oddiel11">
    			<fo:block background-color='black' color='white'>XI. ODDIEL - ŽIADOSŤ O VYPLATENIE DAŇOVÉHO BONUSU, O VRÁTENIE DAŇOVÉHO PREPLATKU ALEBO VYPLATENIE ZAMESTNANECKEJ PRÉMIE</fo:block><fo:block color='white'>|</fo:block>
				<fo:block font-size='10,4px' line-height='20pt'>U daňovníka, ktorý žiada vyplatenie daňového bonusu podľa zákona, vyplatenie zamestnaneckej prémie, vyplatenie daňového bonusu na zaplatené úroky podľa § 33a zákona alebo vrátenie daňového preplatku na bankový účet vedený v zahraničí (cezhraničný prevod finančných prostriedkov) v inom formáte ako IBAN, uvádza sa v IX. oddiele číslo účtu, SWIFT/BIC kód, názov banky, mesto a štát banky alebo pobočky banky daňovníka. Ak daňovník nie je majiteľom bankového účtu, uvádza sa v IX. oddiele názov bankového účtu príjemcu.</fo:block><fo:block color='white'>|</fo:block>		<xsl:for-each select="./ZiadamoOddiel11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='375px'/><fo:table-column column-width='375px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Žiadam o vyplatenie daňového bonusu alebo rozdielu daňového bonusu podľa zákona (r. 61 alebo rozdiel z r. 78, ak je kladný)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbVyplatitRozdiel[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Žiadam o vyplatenie zamestnaneckej prémie podľa § 32a zákona (z r. 46)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbVyplatitZamPremiu[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Žiadam o vyplatenie daňového bonusu na zaplatené úroky alebo rozdielu daňového bonusu na zaplatené úroky podľa § 33a zákona (r. 67 alebo rozdiel z r. 80, ak je kladný)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbBonus[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Žiadam o vrátenie daňového preplatku podľa § 79 zákona č. 563/2009 Z. z. o správe daní (daňový poriadok) a o zmene a doplnení niektorých zákonov v znení neskorších predpisov (z r. 72 alebo rozdiel z r. 76, ak je záporný)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbVratit[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>poštovou poukážkou (do výšky 15 000 eur vrátane)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbPoukazkaDB[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>na účet</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbUcetDB[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>na účet v zahraničí, ktorého nie som majiteľom</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbUcetZahDB[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./IbanOddiel11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>IBAN</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel11/IbanOddiel11/cast11IBAN'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./DatumOddiel11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-column column-width='106px'/><fo:table-column column-width='106px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Dátum</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOA2025/Oddiel11/DatumOddiel11/dtpDatumDB'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
						

			</fo:flow>
           </fo:page-sequence>
          </fo:root>
         </xsl:template>
        </xsl:stylesheet>
