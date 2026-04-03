<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="xhtml" xpath-default-namespace="http://www.w3.org/1999/xhtml" indent="yes" omit-xml-declaration="yes"/>
<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;</xsl:text>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<title>DPFOAv25 - Daňové priznanie k dani z príjmov fyzickej osoby (typ A) za zdaňovacie obdobie 2025 (platné od 1.1.2026)</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="language" content="sk-SK" />
<style type="text/css">
body { 
	font-family: 'Open Sans', 'Segoe UI', 'Trebuchet MS', 'Geneva CE', lucida, sans-serif;
	background-color:transparent;
	color: #646464;
}
.ui-tabs {
	padding: .2em;
	position: relative;
	zoom: 1;
}
.ui-widget-content {
	background: #f9f9f9;
	border: 2px solid #d4d4d4;
	color: #3e3e3e;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px
}
.ui-widget-header {					 
	font-weight: 400;	
	border: 1px solid #5f5247;
	background-color: #5f5247;
	color: #fff;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px
}								
.clear { clear: both; }
.layoutMain {
	margin: 0px auto;
	padding: 5px 5px 5px 5px;	
}				
.layoutRow { margin-bottom: 5px; }				
.caption { /*width: 100%; border-bottom: solid 1px black;*/ }
.nocaption > .caption { border: 0px !important; }
.nocaption > .caption span {
	background: none !important;
	display: none;
} 
.caption .title { padding-left: 5px; }
.headercorrection {	
	margin: 0px;
}				
.labelVis {
	float: left;
	font-weight: bold;
	font-family: 'Open Sans', 'Segoe UI', 'Trebuchet MS', 'Geneva CE', lucida, sans-serif;
	line-height: 25px;
	margin: 0px 18px 0px 0px;
	padding: 0;
	width: 190px;
}
.contentVis {    	     
	float: left;	
	line-height: 25px;
	margin: 0px;
	padding: 0px;
	vertical-align: top;			
}
.wordwrap { 
   white-space: pre-wrap;      
   white-space: -moz-pre-wrap; 
   white-space: -pre-wrap;     
   white-space: -o-pre-wrap;   
   word-wrap: break-word;      
}				
</style>
</head>
<body>
<div id="main" class="layoutMain">
<xsl:for-each select="/DPFOA2025">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">DPFOA2025</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Nadpis/text()"><div><label class="labelVis">DPFOA_Nadpis: </label><span class="contentVis wordwrap"><xsl:value-of select="./DPFOA_Nadpis"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/DPFOA_DruhDP">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Druh daňového priznania </div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_DruhDP/g1/text()"><div><label class="labelVis">g1: </label><span class="contentVis wordwrap"><xsl:value-of select="./g1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_DicDatum">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">DIČ a dátum</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_DicDatum/cmbDic1/text()"><div><label class="labelVis">01 - DIČ (ak nie je pridelené, uvádza sa rodné číslo): </label><span class="contentVis wordwrap"><xsl:value-of select="./cmbDic1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_DicDatum/dtpDatumNarodenia2/text()"><div><label class="labelVis">02 - Dátum narodenia: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./dtpDatumNarodenia2" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_ZaRok">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Za rok</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_ZaRok/cmbRok/text()"><div><label class="labelVis">Rok: </label><span class="contentVis wordwrap"><xsl:value-of select="./cmbRok"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_ZaRok/tpDatumDDP/text()"><div><label class="labelVis">Dátum zistenia skutočnosti na podanie dodatočného daňového priznania: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./tpDatumDDP" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">I. ODDIEL - ÚDAJE O DAŇOVNÍKOVI</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Údaje o danovnikovi</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Údaje o danovníkovi - skryta</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS/tbPriezvisko3/text()"><div><label class="labelVis">03 - Priezvisko: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbPriezvisko3"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS/tbMeno4/text()"><div><label class="labelVis">04 - Meno: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbMeno4"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS/tbTitul5_1/text()"><div><label class="labelVis">05 - Titul (pred menom): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbTitul5_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/UdajeODanovnikovi/UdajeODanovnikoviS/tbTitul5_2/text()"><div><label class="labelVis">05 - Titul (za menom): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbTitul5_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Adresa trvalého pobytu v deň podania daňového priznania na území Slovenskej republiky alebo v zahraničí</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Ulica Supisne</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly1/tbUlica6/text()"><div><label class="labelVis">06 - Ulica: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbUlica6"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly1/tbCisloDomu7/text()"><div><label class="labelVis">07 - Súpisné/orientačné číslo: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbCisloDomu7"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Psc Obec Stat</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly2/tbPSC8/text()"><div><label class="labelVis">08 - PSČ: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbPSC8"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly2/tbObec9/text()"><div><label class="labelVis">09 - Obec: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbObec9"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaTrvalyPobyt/AdresaTrvaly2/tbStat10/text()"><div><label class="labelVis">10 - Štát: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbStat10"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">11 Obmedzená daňová povinnosť (nerezident)</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Obmedzena danova povinnost skrytá riadok 11_1</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_1/cbNerezident/text()"><div><label class="labelVis">áno: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbNerezident"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Obmedzena danova povinnost skrytá riadok 11_2</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_2/ObmedzenaPovinnostOd/text()"><div><label class="labelVis">od: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./ObmedzenaPovinnostOd" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_2/ObmedzenaPovinnostDo/text()"><div><label class="labelVis">do: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./ObmedzenaPovinnostDo" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/ObmedzenaPovinnost/ObmedzenaPovinnostS11_2/TIN/text()"><div><label class="labelVis">TIN: </label><span class="contentVis wordwrap"><xsl:value-of select="./TIN"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Adresa bydliska alebo adresa pobytu na území Slovenskej republiky, kde sa daňovník zdržiaval v zdaňovacom období3)</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Ulica Supisne</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR1/tbUlica12/text()"><div><label class="labelVis">12 - Ulica: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbUlica12"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR1/tbCisloDomu13/text()"><div><label class="labelVis">13 - Súpisné/orientačné číslo: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbCisloDomu13"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Psc Obec</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR2/tbPSC14/text()"><div><label class="labelVis">14 - PSČ: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbPSC14"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel1/AdresaPobytSR/AdresaPobytSR2/tbObec15/text()"><div><label class="labelVis">15 - Obec: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbObec15"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">II. ODDIEL - ÚDAJE O ZÁKONNOM ZÁSTUPCOVI ALEBO DEDIČOVI ALEBO ZÁSTUPCOVI, KTORÝ PODÁVA DAŇOVÉ PRIZNANIE (ďalej len &quot;zástupca&quot;)</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Udaje o zastupcovi</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Meno Priezvisko Titul</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5/tbPriezvisko16/text()"><div><label class="labelVis">16 - Priezvisko: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbPriezvisko16"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5/tbMeno17/text()"><div><label class="labelVis">17 - Meno: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbMeno17"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5/tbTitul18P/text()"><div><label class="labelVis">18 - Titul (pred menom): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbTitul18P"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca/DPFOA2012_DanovePriznanie_FOA_2panel5/tbTitul18Z/text()"><div><label class="labelVis">18 - Titul (za menom): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbTitul18Z"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Adresa</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">R.č. Ulica Cislo</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1/tbRodneCislo19_1/text()"><div><label class="labelVis">19 - Rodné číslo 1.časť: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo19_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1/tbRodneCislo19_2/text()"><div><label class="labelVis">19 - Rodné číslo 2.časť: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo19_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1/tbUlica20/text()"><div><label class="labelVis">20 - Ulica: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbUlica20"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa1/tbCislo21/text()"><div><label class="labelVis">21 - Súpisné/orientačné číslo: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbCislo21"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Psc Obec Stat</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa2/tbPSC22/text()"><div><label class="labelVis">22 - PSČ: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbPSC22"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa2/tbObec23/text()"><div><label class="labelVis">23 - Obec: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbObec23"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/UdajeZastupca_Adresa/ZastupcaAdresa2/tbStat24/text()"><div><label class="labelVis">24 - Štát: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbStat24"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/ZastupcaKontakt1/text()"><div><label class="labelVis">ZastupcaKontakt1: </label><span class="contentVis wordwrap"><xsl:value-of select="./ZastupcaKontakt1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel2/ZastupcaKontakt2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Kontaktne udaje</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/ZastupcaKontakt2/t25Telefon/text()"><div><label class="labelVis">25 - Telefónne číslo: </label><span class="contentVis wordwrap"><xsl:value-of select="./t25Telefon"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel2/ZastupcaKontakt2/t26Mail/text()"><div><label class="labelVis">26 - Emailová adresa: </label><span class="contentVis wordwrap"><xsl:value-of select="./t26Mail"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">III. ODDIEL - ÚDAJE NA UPLATNENIE ZNÍŽENIA ZÁKLADU DANE (§ 11 zákona) A DAŇOVÉHO BONUSU (§ 33 zákona)</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajePoberanieDochodku">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Údaje o poberaní dôchodkov uvedených v § 11 ods. 6 zákona</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajePoberanieDochodku/Riadok27">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 27</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajePoberanieDochodku/Riadok27/cbR27/text()"><div><label class="labelVis">áno: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbR27"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajePoberanieDochodku/Riadok28">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 28</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajePoberanieDochodku/Riadok28/t28/text()"><div><label class="labelVis">riadok 28: </label><span class="contentVis wordwrap"><xsl:value-of select="./t28"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Údaje o manželke (manželovi), ktorá (ý) žije s daňovníkom v domácnosti5) na uplatnenie nezdaniteľnej časti základu dane</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaMeno">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 29</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaMeno/tPriezvisko29_1_1/text()"><div><label class="labelVis">29 - Priezvisko a meno: </label><span class="contentVis wordwrap"><xsl:value-of select="./tPriezvisko29_1_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaMeno/ManzelkaRodneCislo">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Rodne cislo</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaMeno/ManzelkaRodneCislo/tbRodneCisloR29_2/text()"><div><label class="labelVis">29 - Rodné číslo 1.časť: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCisloR29_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaMeno/ManzelkaRodneCislo/tbRodneCisloR29_3/text()"><div><label class="labelVis">29 - Rodné číslo 2.časť: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCisloR29_3"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaPrijmy">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 30</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaPrijmy/chr30/text()"><div><label class="labelVis">uplatňujem nezdaniteľnú časť základu dane na manželku (manžela) podľa § 11 ods. 3 zákona: </label><span class="contentVis wordwrap"><xsl:value-of select="./chr30"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaPrijmy/tPrijmy29_4/text()"><div><label class="labelVis">Vlastné príjmy (v eurách)6): </label><span class="contentVis wordwrap"><xsl:value-of select="./tPrijmy29_4"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeManzelka/ManzelkaPrijmy/tMesiace29_5/text()"><div><label class="labelVis">Počet mesiacov6): </label><span class="contentVis wordwrap"><xsl:value-of select="./tMesiace29_5"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Údaje o vyživovaných deťoch žijúcich s daňovníkom v domácnosti na uplatnenie daňového zvýhodnenia na vyživované dieťa podľa § 33 zákona (ďalej len  &quot;daňový bonus podľa zákona&quot;)7)</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/sekDeti/text()"><div><label class="labelVis">sekDeti: </label><span class="contentVis wordwrap"><xsl:value-of select="./sekDeti"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Dieťa</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/tPriezvisko31_1_1/text()"><div><label class="labelVis">31 - Priezvisko a meno: </label><span class="contentVis wordwrap"><xsl:value-of select="./tPriezvisko31_1_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/tbRodneCislo31_1_2/text()"><div><label class="labelVis">31 - Rodné číslo 1.časť: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo31_1_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/tbRodneCislo31_1_3/text()"><div><label class="labelVis">31 - Rodné číslo 2.časť: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo31_1_3"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM00_1/text()"><div><label class="labelVis">1-12: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM00_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM01_1/text()"><div><label class="labelVis">1: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM01_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM02_1/text()"><div><label class="labelVis">2: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM02_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM03_1/text()"><div><label class="labelVis">3: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM03_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM04_1/text()"><div><label class="labelVis">4: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM04_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM05_1/text()"><div><label class="labelVis">5: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM05_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM06_1/text()"><div><label class="labelVis">6: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM06_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM07_1/text()"><div><label class="labelVis">7: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM07_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM08_1/text()"><div><label class="labelVis">8: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM08_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM09_1/text()"><div><label class="labelVis">9: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM09_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM10_1/text()"><div><label class="labelVis">10: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM10_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM11_1/text()"><div><label class="labelVis">11: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM11_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Dieta/cbM12_1/text()"><div><label class="labelVis">12: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM12_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Riadok31">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 31a</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeDeti/Riadok31/cbViacAko4/text()"><div><label class="labelVis">Údaje o ďalších vyživovaných deťoch uvádzam v IX. oddiele v členení podľa r. 31: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbViacAko4"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Údaje druhej oprávnenej osoby vyživujúcej dieťa (deti) v domácnosti uvedené na r. 31</div>
</div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekUplatPostup">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Uplatňujem postup podľa § 33 ods. 8 zákona</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekUplatPostup/cbUplatPostup/text()"><div><label class="labelVis">Uplatňujem postup podľa § 33 ods. 8 zákona: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbUplatPostup"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekOpravOsoba/text()"><div><label class="labelVis">sekOpravOsoba: </label><span class="contentVis wordwrap"><xsl:value-of select="./sekOpravOsoba"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Oprávnená osoba</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/tbPriezvisko32_1_1/text()"><div><label class="labelVis">Priezvisko a meno: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbPriezvisko32_1_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/tbRodneCislo32_1_2/text()"><div><label class="labelVis">32 - Rodné číslo 1. časť: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo32_1_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/tbRodneCislo32_1_3/text()"><div><label class="labelVis">32 - Rodné číslo 2. časť: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo32_1_3"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_12_1/text()"><div><label class="labelVis">1-12: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_12_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_1/text()"><div><label class="labelVis">1: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_2/text()"><div><label class="labelVis">2: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_3/text()"><div><label class="labelVis">3: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_3"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_4/text()"><div><label class="labelVis">4: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_4"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_5/text()"><div><label class="labelVis">5: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_5"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_6/text()"><div><label class="labelVis">6: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_6"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_7/text()"><div><label class="labelVis">7: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_7"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_8/text()"><div><label class="labelVis">8: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_8"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_9/text()"><div><label class="labelVis">9: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_9"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_10/text()"><div><label class="labelVis">10: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_10"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_11/text()"><div><label class="labelVis">11: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_11"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/OpravnenaOsoba/cbM1_12/text()"><div><label class="labelVis">12: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbM1_12"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekDodatUdajeOO">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Dodatočné údaje druhej oprávnenej osoby</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekDodatUdajeOO/cbOznDOO/text()"><div><label class="labelVis">Oznamujem, že druhá oprávnená osoba uvedená na r. 32 podala daňové priznanie na území Slovenskej republiky7b): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbOznDOO"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekDodatUdajeOO/sekPom">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Pomocná sekcia</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekDodatUdajeOO/sekPom/cbKopDokRZD/text()"><div><label class="labelVis">kópiu dokladu o vykonanom ročnom zúčtovaní preddavkov na daň z príjmov zo závislej činnosti podľa zákona (ďalej len &quot;ročné zúčtovanie&quot;) druhej oprávnenej osoby7c): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbKopDokRZD"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/sekDodatUdajeOO/sekPom/cbKopDokVZD/text()"><div><label class="labelVis">kópiu dokladu preukazujúceho výšku základu dane z príjmov podľa § 5 zákona druhej oprávnenej osoby, ktorej ročné zúčtovanie nebolo vykonané, a nemala povinnosť podať daňové priznanie 7c): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbKopDokVZD"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/Riadok32a">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 32a</div>
</div>
<xsl:if test="/DPFOA2025/DPFOA_Oddiel3/UdajeOpravnenaOsoba/Riadok32a/t32a/text()"><div><label class="labelVis">riadok 32a: </label><span class="contentVis wordwrap"><xsl:value-of select="./t32a"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel4">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">IV. ODDIEL - ÚDAJE NA UPLATNENIE DAŇOVÉHO BONUSU NA ZAPLATENÉ ÚROKY (§ 33a zákona)</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel4/SekRiadok33">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 33</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel4/SekRiadok33/chr33/text()"><div><label class="labelVis">uplatňujem daňový bonus na zaplatené úroky podľa § 33a zákona8): </label><span class="contentVis wordwrap"><xsl:value-of select="./chr33"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel4/SekRiadok33/t33_1/text()"><div><label class="labelVis">Zaplatené úroky za zdaňovacie obdobie (v eurách): </label><span class="contentVis wordwrap"><xsl:value-of select="./t33_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel4/SekRiadok33/t33_2/text()"><div><label class="labelVis">Počet mesiacov: </label><span class="contentVis wordwrap"><xsl:value-of select="./t33_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel4/SekDatumZacUrUv">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Dátum začatia úročenia úveru</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel4/SekDatumZacUrUv/DatumZacUroUve/text()"><div><label class="labelVis">Dátum začatia úročenia úveru: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./DatumZacUroUve" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel4/SekDatumZacUrUv/DatumUzavZmluUverByv/text()"><div><label class="labelVis">Dátum uzavretia zmluvy o úveru na bývanie: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./DatumUzavZmluUverByv" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel5">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">V. ODDIEL - VÝPOČET ZÁKLADU DANE Z PRÍJMOV ZO ZÁVISLEJ ČINNOSTI (§ 5 zákona) - v eurách</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel5/Riadok34">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 34</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel5/Riadok34/t34/text()"><div><label class="labelVis">riadok 34: </label><span class="contentVis wordwrap"><xsl:value-of select="./t34"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel5/Ztoho32a">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Z toho</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel5/Ztoho32a/Riadok35">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok35</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel5/Ztoho32a/Riadok35/t35/text()"><div><label class="labelVis">riadok 35: </label><span class="contentVis wordwrap"><xsl:value-of select="./t35"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel5/Riadok36">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 36</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel5/Riadok36/tbR36/text()"><div><label class="labelVis">riadok 36: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbR36"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel5/Ztoho33a">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Z toho</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel5/Ztoho33a/Riadok37">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 37</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel5/Ztoho33a/Riadok37/tbR37/text()"><div><label class="labelVis">riadok 37: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbR37"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel5/Ztoho33a/Riadok38">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 38</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel5/Ztoho33a/Riadok38/tbR38/text()"><div><label class="labelVis">riadok 38: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbR38"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel5/Riadok39">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 39</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel5/Riadok39/t39/text()"><div><label class="labelVis">riadok 39: </label><span class="contentVis wordwrap"><xsl:value-of select="./t39"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">VI. ODDIEL - VÝPOČET DANE podľa § 15 zákona - v eurách</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel6/ZnizenieDane">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Zníženie základu dane podľa § 11 zákona</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel6/ZnizenieDane/Riadok40">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 40</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/ZnizenieDane/Riadok40/t40/text()"><div><label class="labelVis">riadok 40: </label><span class="contentVis wordwrap"><xsl:value-of select="./t40"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/ZnizenieDane/Riadok41">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 41</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/ZnizenieDane/Riadok41/t41/text()"><div><label class="labelVis">riadok41: </label><span class="contentVis wordwrap"><xsl:value-of select="./t41"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/ZnizenieDane/Riadok42">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 42</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/ZnizenieDane/Riadok42/t42/text()"><div><label class="labelVis">riadok 42: </label><span class="contentVis wordwrap"><xsl:value-of select="./t42"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/ZnizenieDane/Riadok43">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 43</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/ZnizenieDane/Riadok43/t43/text()"><div><label class="labelVis">riadok 43: </label><span class="contentVis wordwrap"><xsl:value-of select="./t43"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok44">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 44</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok44/t44/text()"><div><label class="labelVis">riadok 44: </label><span class="contentVis wordwrap"><xsl:value-of select="./t44"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok45">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 45</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok45/t45/text()"><div><label class="labelVis">riadok 45: </label><span class="contentVis wordwrap"><xsl:value-of select="./t45"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok46">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 46</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok46/t46/text()"><div><label class="labelVis">riadok 46: </label><span class="contentVis wordwrap"><xsl:value-of select="./t46"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok47">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 47</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok47/t47/text()"><div><label class="labelVis">riadok 47: </label><span class="contentVis wordwrap"><xsl:value-of select="./t47"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/VypocetDane">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Výpočet dane po vyňatí príjmov zo zdrojov v zahraničí</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel6/VypocetDane/Riadok48">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 48</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/VypocetDane/Riadok48/t48/text()"><div><label class="labelVis">riadok 48: </label><span class="contentVis wordwrap"><xsl:value-of select="./t48"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/VypocetDane/Riadok49">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 49</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/VypocetDane/Riadok49/t49/text()"><div><label class="labelVis">riadok 49: </label><span class="contentVis wordwrap"><xsl:value-of select="./t49"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok50">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 50</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok50/t50/text()"><div><label class="labelVis">riadok 50: </label><span class="contentVis wordwrap"><xsl:value-of select="./t50"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Výpočet dane uznanej na zápočet na tuzemskú daňovú povinnosť zo zaplatenej dane v zahraničí</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok51">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 51</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok51/t51/text()"><div><label class="labelVis">riadok 51: </label><span class="contentVis wordwrap"><xsl:value-of select="./t51"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok52">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 52</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok52/t52/text()"><div><label class="labelVis">riadok 52: </label><span class="contentVis wordwrap"><xsl:value-of select="./t52"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok53">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 53</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok53/t53/text()"><div><label class="labelVis">riadok 53: </label><span class="contentVis wordwrap"><xsl:value-of select="./t53"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok54">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 54</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok54/t54/text()"><div><label class="labelVis">riadok 54: </label><span class="contentVis wordwrap"><xsl:value-of select="./t54"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok55">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 55</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/DPFOA2012_DanovePriznanie_FOA_3panel27/Riadok55/t55/text()"><div><label class="labelVis">riadok 55: </label><span class="contentVis wordwrap"><xsl:value-of select="./t55"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok56">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 56</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok56/t56/text()"><div><label class="labelVis">riadok 56: </label><span class="contentVis wordwrap"><xsl:value-of select="./t56"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok56a">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 56a</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok56a/t56a/text()"><div><label class="labelVis">riadok 56a: </label><span class="contentVis wordwrap"><xsl:value-of select="./t56a"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok57">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 57</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok57/t57/text()"><div><label class="labelVis">riadok 57: </label><span class="contentVis wordwrap"><xsl:value-of select="./t57"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok58">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 58</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok58/t58/text()"><div><label class="labelVis">riadok 58: </label><span class="contentVis wordwrap"><xsl:value-of select="./t58"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok59">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 59</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok59/t59/text()"><div><label class="labelVis">riadok 59: </label><span class="contentVis wordwrap"><xsl:value-of select="./t59"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok60">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 60</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok60/t60/text()"><div><label class="labelVis">riadok 60: </label><span class="contentVis wordwrap"><xsl:value-of select="./t60"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok61">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 61</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok61/t61/text()"><div><label class="labelVis">riadok 61: </label><span class="contentVis wordwrap"><xsl:value-of select="./t61"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok62">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 62</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok62/t62/text()"><div><label class="labelVis">riadok 62: </label><span class="contentVis wordwrap"><xsl:value-of select="./t62"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok63">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 63</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok63/t63/text()"><div><label class="labelVis">riadok 63: </label><span class="contentVis wordwrap"><xsl:value-of select="./t63"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok64">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 64</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok64/t64/text()"><div><label class="labelVis">riadok 64: </label><span class="contentVis wordwrap"><xsl:value-of select="./t64"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok65">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 65</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok65/t65/text()"><div><label class="labelVis">riadok 65: </label><span class="contentVis wordwrap"><xsl:value-of select="./t65"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok66">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 66</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok66/t66/text()"><div><label class="labelVis">riadok 66: </label><span class="contentVis wordwrap"><xsl:value-of select="./t66"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok67">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 67</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok67/t67/text()"><div><label class="labelVis">riadok 67: </label><span class="contentVis wordwrap"><xsl:value-of select="./t67"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/sek_UhrPreddavkov">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Úhrn preddavkov na daň</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok68">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 68</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok68/t68/text()"><div><label class="labelVis">riadok 68: </label><span class="contentVis wordwrap"><xsl:value-of select="./t68"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok69">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 69</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok69/t69/text()"><div><label class="labelVis">riadok 69: </label><span class="contentVis wordwrap"><xsl:value-of select="./t69"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok70">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 70</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/sek_UhrPreddavkov/Riadok70/t70/text()"><div><label class="labelVis">riadok 70: </label><span class="contentVis wordwrap"><xsl:value-of select="./t70"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok71">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 71</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok71/t71/text()"><div><label class="labelVis">riadok 71: </label><span class="contentVis wordwrap"><xsl:value-of select="./t71"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel6/Riadok72">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 72</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel6/Riadok72/t72/text()"><div><label class="labelVis">riadok72: </label><span class="contentVis wordwrap"><xsl:value-of select="./t72"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel7">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">VII. ODDIEL - ROZDIELY Z DODATOČNÉHO DAŇOVÉHO PRIZNANIA - v eurách</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel7/Riadok73">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 73</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel7/Riadok73/t73/text()"><div><label class="labelVis">riadok 73: </label><span class="contentVis wordwrap"><xsl:value-of select="./t73"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel7/Riadok74">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 74</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel7/Riadok74/t74/text()"><div><label class="labelVis">riadok 74: </label><span class="contentVis wordwrap"><xsl:value-of select="./t74"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel7/Riadok75">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 75</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel7/Riadok75/t75/text()"><div><label class="labelVis">riadok 75: </label><span class="contentVis wordwrap"><xsl:value-of select="./t75"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel7/Riadok76">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 76</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel7/Riadok76/t76/text()"><div><label class="labelVis">riadok 76: </label><span class="contentVis wordwrap"><xsl:value-of select="./t76"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel7/Riadok77">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 77</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel7/Riadok77/t77/text()"><div><label class="labelVis">riadok 77: </label><span class="contentVis wordwrap"><xsl:value-of select="./t77"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel7/Riadok78">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 78</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel7/Riadok78/t78/text()"><div><label class="labelVis">riadok 78: </label><span class="contentVis wordwrap"><xsl:value-of select="./t78"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel7/Riadok79">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 79</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel7/Riadok79/t79/text()"><div><label class="labelVis">riadok 79: </label><span class="contentVis wordwrap"><xsl:value-of select="./t79"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel7/Riadok80">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 80</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel7/Riadok80/t80/text()"><div><label class="labelVis">riadok 80: </label><span class="contentVis wordwrap"><xsl:value-of select="./t80"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel8">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">VIII. ODDIEL - VYHLÁSENIE o poukázaní podielu zaplatenej dane z príjmov fyzickej osoby  podľa § 50 a § 50aa zákona</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">81 - ÚDAJE O PRIJÍMATEĽOVI</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/sekNeP50a">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Neuplatňujem postup podľa § 50 zákona</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/sekNeP50a/cbParagraf50/text()"><div><label class="labelVis">neuplatňujem postup podľa § 50 zákona: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbParagraf50"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/Riadok81">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 81</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/Riadok81/ico76/text()"><div><label class="labelVis">81 - IČO: </label><span class="contentVis wordwrap"><xsl:value-of select="./ico76"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/ObchodneMeno">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Obchodne meno</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel8/DPFOA2012_DanovePriznanie_FOA_5panel21/ObchodneMeno/ObchMeno76/text()"><div><label class="labelVis">Obchodné meno: </label><span class="contentVis wordwrap"><xsl:value-of select="./ObchMeno76"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel8/Riadok82">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 82</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok82/cbSplnam3per/text()"><div><label class="labelVis">spĺňam podmienky na poukázanie 3 % z dane23): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbSplnam3per"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok82/t82/text()"><div><label class="labelVis">Riadok 82: </label><span class="contentVis wordwrap"><xsl:value-of select="./t82"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:if test="/DPFOA2025/Oddiel8/chb_SuhlasUdaje/text()"><div><label class="labelVis">súhlasím so zaslaním údajov (meno, priezvisko a trvalý pobyt) mnou určenému prijímateľovi podielu zaplatenej dane uvedenému v r. 81 podľa § 50 ods. 8 zákona: </label><span class="contentVis wordwrap"><xsl:value-of select="./chb_SuhlasUdaje"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/Oddiel8/Riadok83">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">83 - ÚDAJE O RODIČOVI / RODIČOCH</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel8/Riadok83/sekNeP50aa">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">neuplatňujem postup podľa § 50aa zákona</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekNeP50aa/cbParagraf50aa/text()"><div><label class="labelVis">neuplatňujem postup podľa § 50aa zákona: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbParagraf50aa"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekRodiciaHl/text()"><div><label class="labelVis">sekRodiciaHl: </label><span class="contentVis wordwrap"><xsl:value-of select="./sekRodiciaHl"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Rodič</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/tbRodneCislo83A_1/text()"><div><label class="labelVis">83 - Rodné číslo 1. časť a): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo83A_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/tbRodneCislo83B_1/text()"><div><label class="labelVis">83 - Rodné číslo 1. časť b): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo83B_1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/tbRodneCislo83A_2/text()"><div><label class="labelVis">83 - Rodné číslo 2.časť a): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo83A_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/tbRodneCislo83B_2/text()"><div><label class="labelVis">83 - Rodné číslo 2.časť b): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo83B_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/Priezvisko83A/text()"><div><label class="labelVis">Priezvisko a): </label><span class="contentVis wordwrap"><xsl:value-of select="./Priezvisko83A"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/Priezvisko83B/text()"><div><label class="labelVis">Priezvisko b): </label><span class="contentVis wordwrap"><xsl:value-of select="./Priezvisko83B"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/Meno83A/text()"><div><label class="labelVis">Meno a): </label><span class="contentVis wordwrap"><xsl:value-of select="./Meno83A"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel8/Riadok83/sekciaRodic/Meno83B/text()"><div><label class="labelVis">Meno b): </label><span class="contentVis wordwrap"><xsl:value-of select="./Meno83B"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:if test="/DPFOA2025/Oddiel8/chNahrStar/text()"><div><label class="labelVis">bol som zverený do starostlivosti nahrádzajúcej starostlivosť rodičov na základe rozhodnutia príslušného orgánu24): </label><span class="contentVis wordwrap"><xsl:value-of select="./chNahrStar"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel9">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">IX. ODDIEL - MIESTO NA OSOBITNÉ ZÁZNAMY DAŇOVNÍKA</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel9/cbUvadzam/text()"><div><label class="labelVis">Uvádzam osobitné záznamy: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbUvadzam"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/Oddiel9/secPom">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">pomocná</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel9/secPom/UdajePrijem9_lbl/text()"><div><label class="labelVis">UdajePrijem9_lbl: </label><span class="contentVis wordwrap"><xsl:value-of select="./UdajePrijem9_lbl"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/DPFOA2025/Oddiel9/secPom/UdajePrijem9">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Údaje o príjmoch zo závislej činnosti daňovníka s neobmedzenou daňovou povinnosťou dosiahnutých v zahraničí</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel9/secPom/UdajePrijem9/KodStatu/text()"><div><label class="labelVis">Kód štátu (IX.oddiel): </label><span class="contentVis wordwrap"><xsl:value-of select="./KodStatu"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel9/secPom/UdajePrijem9/cast9prijmy1/text()"><div><label class="labelVis">Príjmy (IX.oddiel): </label><span class="contentVis wordwrap"><xsl:value-of select="./cast9prijmy1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel9/secPom/UdajePrijem9/cast9vydavky1/text()"><div><label class="labelVis">Výdavky (IX.oddiel): </label><span class="contentVis wordwrap"><xsl:value-of select="./cast9vydavky1"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel9/secPom/UdajePrijem9/cast9vydavky2/text()"><div><label class="labelVis">z toho výdavky(IX.oddiel): </label><span class="contentVis wordwrap"><xsl:value-of select="./cast9vydavky2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:if test="/DPFOA2025/Oddiel9/OsobitneZaznamy/text()"><div><label class="labelVis">Osobitne záznamy: </label><span class="contentVis wordwrap"><xsl:value-of select="./OsobitneZaznamy"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel10">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">X. ODDIEL - ĎALŠIE ÚDAJE O DAŇOVNÍKOVI</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel10/Riadok84">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 84</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel10/Riadok84/t84/text()"><div><label class="labelVis">riadok 84: </label><span class="contentVis wordwrap"><xsl:value-of select="./t84"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel10/Riadok85">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 85</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel10/Riadok85/t85/text()"><div><label class="labelVis">riadok 85: </label><span class="contentVis wordwrap"><xsl:value-of select="./t85"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel10/Ztoho85a">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Z toho</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel10/Ztoho85a/Riadok85a">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok85a</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel10/Ztoho85a/Riadok85a/t85a/text()"><div><label class="labelVis">riadok 85a: </label><span class="contentVis wordwrap"><xsl:value-of select="./t85a"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel10/Riadok86">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Riadok 86</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel10/Riadok86/t86/text()"><div><label class="labelVis">86 - počet príloh: </label><span class="contentVis wordwrap"><xsl:value-of select="./t86"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel10/Vyhlasenie">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Vyhlasenie</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel10/Vyhlasenie/tbDatumVyhlasenie/text()"><div><label class="labelVis">Dátum (X.oddiel): </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./tbDatumVyhlasenie" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel11">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">XI. ODDIEL - ŽIADOSŤ O VYPLATENIE DAŇOVÉHO BONUSU, O VRÁTENIE DAŇOVÉHO PREPLATKU ALEBO VYPLATENIE ZAMESTNANECKEJ PRÉMIE</div>
</div>
<xsl:for-each select="/DPFOA2025/Oddiel11/ZiadamoOddiel11">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Ziadam o ...</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbVyplatitRozdiel/text()"><div><label class="labelVis">Žiadam o vyplatenie daňového bonusu alebo rozdielu daňového bonusu podľa zákona (r. 61 alebo rozdiel z r. 78, ak je kladný): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbVyplatitRozdiel"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbVyplatitZamPremiu/text()"><div><label class="labelVis">Žiadam o vyplatenie zamestnaneckej prémie podľa § 32a zákona (z r. 46): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbVyplatitZamPremiu"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbBonus/text()"><div><label class="labelVis">Žiadam o vyplatenie daňového bonusu na zaplatené úroky alebo rozdielu daňového bonusu na zaplatené úroky podľa § 33a zákona (r. 67 alebo rozdiel z r. 80, ak je kladný): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbBonus"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/cbVratit/text()"><div><label class="labelVis">Žiadam o vrátenie daňového preplatku podľa § 79 zákona č. 563/2009 Z. z. o správe daní (daňový poriadok) a o zmene a doplnení niektorých zákonov v znení neskorších predpisov (z r. 72 alebo rozdiel z r. 76, ak je záporný): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbVratit"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel11/ZiadamoOddiel11/PoukazkaUcet/text()"><div><label class="labelVis">PoukazkaUcet: </label><span class="contentVis wordwrap"><xsl:value-of select="./PoukazkaUcet"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel11/IbanOddiel11">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">IBAN</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel11/IbanOddiel11/cast11IBAN/text()"><div><label class="labelVis">IBAN: </label><span class="contentVis wordwrap"><xsl:value-of select="./cast11IBAN"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/DPFOA2025/Oddiel11/IbanOddiel11/Skryte_pomocne_pole/text()"><div><label class="labelVis">Skryte pomocne pole - Kody bank pre Iban: </label><span class="contentVis wordwrap"><xsl:value-of select="./Skryte_pomocne_pole"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/DPFOA2025/Oddiel11/DatumOddiel11">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">Dátum</div>
</div>
<xsl:if test="/DPFOA2025/Oddiel11/DatumOddiel11/dtpDatumDB/text()"><div><label class="labelVis">Dátum (XI.oddiel): </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./dtpDatumDB" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
</div>
</body>
</html>
</xsl:template>
<xsl:template name="formatToSkDate">
<xsl:param name="date" />
<xsl:value-of select="concat(substring($date, 9, 2), '.', substring($date, 6, 2), '.', substring($date, 1, 4))" />
</xsl:template>
</xsl:stylesheet>

