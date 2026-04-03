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
										<xsl:for-each select="/DPFOB2025/DPFOB_DruhSuhrVykazu">
    			<fo:block background-color='black' color='white'>Druh daňového priznania *</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='73px'/><fo:table-column column-width='73px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>daňové priznanie</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_DruhSuhrVykazu/rbDruhVykazuRiadny[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_DruhSuhrVykazu/rbDruhVykazuOpravny[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>dodatočné daňové priznanie 1)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_DruhSuhrVykazu/rbDruhVykazuDodatocny[text()='1']">
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
			<xsl:for-each select="/DPFOB2025/DPFOB_zaRok">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='27px'/><fo:table-column column-width='27px'/><fo:table-column column-width='45px'/><fo:table-column column-width='45px'/><fo:table-column column-width='131px'/><fo:table-column column-width='131px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Za rok</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_zaRok/cmbRok'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Dátum zistenia skutočnosti na podanie dodatočného daňového priznania</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_zaRok/dtpDatumDDP'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_NACE">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='250px'/><fo:table-column column-width='250px'/><fo:table-column column-width='56px'/><fo:table-column column-width='56px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>03 - SK NACE - Hlavná, prevažná činnosť</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01110']">01110 - Pestovanie obilnín (okrem ryže), strukovín a olejnatých semien</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01120']">01120 - Pestovanie ryže</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01130']">01130 - Pestovanie zeleniny a melónov, koreňovej a hľuzovej zeleniny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01140']">01140 - Pestovanie cukrovej trstiny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01150']">01150 - Pestovanie tabaku</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01160']">01160 - Pestovanie plodín na vlákno</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01190']">01190 - Pestovanie ostatných netrvácnych plodín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01210']">01210 - Pestovanie hrozna</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01220']">01220 - Pestovanie tropického a subtropického ovocia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01230']">01230 - Pestovanie citrusových plodov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01240']">01240 - Pestovanie jadrového a kôstkového ovocia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01250']">01250 - Pestovanie ostatného stromového a kríkového ovocia a orechov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01260']">01260 - Pestovanie olejnatého ovocia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01270']">01270 - Pestovanie nápojových plodín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01280']">01280 - Pestovanie korenín, aromatických, liečivých a farmaceutických plodín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01290']">01290 - Pestovanie ostatných trvácnych plodín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01300']">01300 - Rozmnožovanie rastlín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01410']">01410 - Chov dojníc</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01420']">01420 - Chov ostatného dobytka a byvolov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01430']">01430 - Chov koní a ostatných koňovitých zvierat</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01440']">01440 - Chov tiav a ťavovitých zvierat</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01450']">01450 - Chov oviec a kôz</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01460']">01460 - Chov ošípaných</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01470']">01470 - Chov hydiny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01491']">01491 - Chov hospodárskych zvierat</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01492']">01492 - Chov kožušinových zvierat</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01493']">01493 - Chov domácich neúžitkových zvierat</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01494']">01494 - Chov zveriny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01495']">01495 - Chov laboratórnych zvierat</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01499']">01499 - Chov iných drobných hospodárskych zvierat</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01500']">01500 - Zmiešané hospodárstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01610']">01610 - Služby súvisiace s pestovaním plodín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01620']">01620 - Služby súvisiace s chovom zvierat</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01630']">01630 - Služby súvisiace so zberom úrody</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01640']">01640 - Spracovanie semien na sadenie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='01700']">01700 - Lov, odchyt a súvisiace služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='02100']">02100 - Lesné hospodárstvo a ostatné služby v lesníctve</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='02200']">02200 - Ťažba dreva</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='02300']">02300 - Zber divorastúceho materiálu (okrem dreva)</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='02401']">02401 - Služby súvisiace s lesníctvom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='02402']">02402 - Služby súvisiace s ťažbou dreva</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='02409']">02409 - Ostatné služby poskytované v lesníctve</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='03110']">03110 - Morský rybolov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='03120']">03120 - Riečny rybolov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='03210']">03210 - Morská akvakultúra</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='03220']">03220 - Riečna akvakultúra</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='05100']">05100 - Ťažba čierneho uhlia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='05200']">05200 - Ťažba lignitu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='06100']">06100 - Ťažba ropy</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='06200']">06200 - Ťažba zemného plynu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='07100']">07100 - Dobývanie železných rúd</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='07210']">07210 - Dobývanie uránových a tóriových rúd</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='07290']">07290 - Dobývanie ostatných neželezných kovových rúd</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='08110']">08110 - Dobývanie dekoračného a stavebného kameňa, vápenca, sadrovca, kriedy a bridlice</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='08120']">08120 - Prevádzka štrkovísk a pieskovísk; ťažba ílu a kaolínu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='08910']">08910 - Ťažba chemických a hnojivových minerálov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='08920']">08920 - Ťažba rašeliny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='08930']">08930 - Ťažba soli</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='08990']">08990 - Iná ťažba a dobývanie i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='09100']">09100 - Pomocné činnosti pri ťažbe ropy a zemného plynu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='09900']">09900 - Pomocné činnosti pri iných ťažbách a dobývaní</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10110']">10110 - Spracovanie a konzervovanie mäsa</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10120']">10120 - Spracovanie a konzervovanie hydinového mäsa</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10130']">10130 - Spracovanie mäsových a hydinových mäsových výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10200']">10200 - Spracovanie a konzervovanie rýb, kôrovcov a mäkkýšov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10310']">10310 - Spracovanie a konzervovanie zemiakov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10320']">10320 - Výroba ovocnej a zeleninovej šťavy</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10390']">10390 - Iné spracovanie a konzervovanie ovocia a zeleniny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10410']">10410 - Výroba olejov a tukov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10420']">10420 - Výroba margarínu a podobných jedlých tukov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10510']">10510 - Prevádzka mliekarní a výroba syrov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10520']">10520 - Výroba zmrzliny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10610']">10610 - Výroba mlynských výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10620']">10620 - Výroba škrobu a škrobových výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10710']">10710 - Výroba chleba; výroba čerstvého pečiva a koláčov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10720']">10720 - Výroba suchárov a keksov; výroba trvanlivého pečiva a koláčov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10730']">10730 - Výroba rezancov, cestovín, kuskusu a podobných múčnych výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10810']">10810 - Výroba cukru</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10820']">10820 - Výroba kakaa, čokolády a cukroviniek</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10830']">10830 - Spracovanie čaju a kávy</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10840']">10840 - Výroba korenín a chuťových prísad</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10850']">10850 - Výroba pripravených pokrmov a jedla</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10860']">10860 - Výroba a príprava homogenizovaných a diétnych potravín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10890']">10890 - Výroba ostatných potravinárskych výrobkov i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10910']">10910 - Výroba a príprava krmív pre hospodárske zvieratá</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='10920']">10920 - Výroba a príprava krmív pre domáce zvieratá</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='11010']">11010 - Destilovanie, úprava a miešanie alkoholu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='11020']">11020 - Výroba hroznového vína</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='11030']">11030 - Výroba jablčného vína a iného ovocného vína</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='11040']">11040 - Výroba iných nedestilovaných kvasených nápojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='11050']">11050 - Výroba piva</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='11060']">11060 - Výroba sladu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='11070']">11070 - Výroba nealkoholických nápojov; produkcia minerálnych vôd a iných fľaškových vôd</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='12000']">12000 - Výroba tabakových výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13100']">13100 - Príprava a spriadanie textilných vlákien</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13200']">13200 - Tkanie textilu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13300']">13300 - Konečná úprava textilu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13910']">13910 - Výroba pleteného a háčkovaného textilu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13921']">13921 - Výroba posteľnej bielizne a textilných výrobkov pre domácnosť</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13922']">13922 - Výroba bytových doplnkov okrem kobercov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13929']">13929 - Výroba ostatných textilných výrobkov okrem odevov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13930']">13930 - Výroba kobercov a rohoží</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13940']">13940 - Výroba povrazov, šnúr, motúzov a sieťovín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13950']">13950 - Výroba netkaného textilu a výrobkov z neho okrem odevov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13960']">13960 - Výroba ostatného technického a pracovného textilu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='13990']">13990 - Výroba ostatného textilu i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='14110']">14110 - Výroba kožených odevov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='14120']">14120 - Výroba pracovných odevov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='14130']">14130 - Výroba ostatného vrchného ošatenia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='14140']">14140 - Výroba spodnej bielizne</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='14190']">14190 - Výroba ostatných odevov a doplnkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='14200']">14200 - Výroba kožušinových výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='14310']">14310 - Výroba pletených a háčkovaných pančúch</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='14390']">14390 - Výroba ostatných pletených a háčkovaných odevov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='15110']">15110 - Činenie a apretovanie kože; úprava a farbenie kožušín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='15120']">15120 - Výroba kufrov, kabeliek a podobných výrobkov, sediel a popruhov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='15200']">15200 - Výroba obuvi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='16100']">16100 - Pilovanie a hobľovanie dreva</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='16210']">16210 - Výroba dosiek a drevených panelov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='16220']">16220 - Výroba podlahových parkiet</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='16231']">16231 - Výroba stavebnostolárska a tesárska</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='16232']">16232 - Výroba prvkov na montované stavby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='16239']">16239 - Výroba ostatná stavebnostolárska a tesárska i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='16240']">16240 - Výroba drevených kontajnerov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='16290']">16290 - Výroba ostatných výrobkov z dreva; výroba výrobkov z korku, slamy a prúteného materiálu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='17110']">17110 - Výroba celulózy</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='17120']">17120 - Výroba papiera a lepenky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='17210']">17210 - Výroba vlnitého papiera a lepenky a škatúľ z papiera a lepenky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='17220']">17220 - Výroba výrobkov pre domácnosť, hygienické a toaletné výrobky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='17230']">17230 - Výroba papiernických potrieb</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='17240']">17240 - Výroba tapiet</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='17290']">17290 - Výroba ostatných výrobkov z papiera a lepenky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='18110']">18110 - Tlač novín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='18120']">18120 - Iná tlač</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='18130']">18130 - Služby pre tlač a médiá</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='18140']">18140 - Viazanie kníh a služby súvisiace s viazaním kníh</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='18200']">18200 - Reprodukcia záznamových médií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='19100']">19100 - Výroba produktov koksárenských pecí</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='19200']">19200 - Výroba rafinovaných ropných produktov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20110']">20110 - Výroba priemyselných plynov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20120']">20120 - Výroba farbív a pigmentov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20130']">20130 - Výroba ostatných základných anorganických chemikálií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20140']">20140 - Výroba ostatných základných organických chemikálií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20150']">20150 - Výroba priemyselných hnojív a dusíkatých zlúčenín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20160']">20160 - Výroba plastov v primárnej forme</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20170']">20170 - Výroba syntetického kaučuku v primárnej forme</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20200']">20200 - Výroba pesticídov a iných agrochemických produktov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20300']">20300 - Výroba farieb, lakov a podobných náterov, tlačiarenských farieb a tmelov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20410']">20410 - Výroba mydla a pracích prostriedkov, čistiacich a leštiacich prípravkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20420']">20420 - Výroba parfumérskych a toaletných prípravkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20510']">20510 - Výroba výbušnín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20520']">20520 - Výroba lepidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20530']">20530 - Výroba éterických olejov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20590']">20590 - Výroba ostatných chemických výrobkov i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='20600']">20600 - Výroba umelých vlákien</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='21100']">21100 - Výroba základných farmaceutických výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='21200']">21200 - Výroba farmaceutických prípravkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='22110']">22110 - Výroba gumených pneumatík a duší; protektorovanie a oprava pneumatík</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='22190']">22190 - Výroba ostatných výrobkov z gumy</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='22210']">22210 - Výroba plastových dosiek, fólií, hadíc a profilov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='22220']">22220 - Výroba plastových obalov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='22230']">22230 - Výroba výrobkov z plastu pre stavebníctvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='22290']">22290 - Výroba ostatných plastových výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23110']">23110 - Výroba plochého skla</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23120']">23120 - Tvarovanie a spracovanie plochého skla</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23130']">23130 - Výroba dutého skla</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23140']">23140 - Výroba sklenených vlákien</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23190']">23190 - Výroba a spracovanie ostatného skla vrátane technického skla</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23200']">23200 - Výroba žiaruvzdorných výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23310']">23310 - Výroba keramických obkladačiek a dlaždíc</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23320']">23320 - Výroba tehál, obkladačiek a stavebných výrobkov z pálenej hliny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23411']">23411 - Výroba keramického riadu a porcelánových predmetov pre domácnosť</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23419']">23419 - Výroba domácich a dekoratívnych keramických predmetov i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23420']">23420 - Výroba keramického sanitárneho vybavenia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23430']">23430 - Výroba keramických izolátorov a izolačných doplnkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23440']">23440 - Výroba ostatných technických keramických výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23490']">23490 - Výroba ostatných keramických výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23510']">23510 - Výroba cementu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23520']">23520 - Výroba vápna a sadry</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23610']">23610 - Výroba betónových výrobkov na stavebné účely</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23620']">23620 - Výroba sadrových výrobkov na stavebné účely</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23630']">23630 - Výroba transportného betónu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23640']">23640 - Výroba malty</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23650']">23650 - Výroba cementových vlákien</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23690']">23690 - Výroba ostatných výrobkov z betónu, sadry a cementu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23700']">23700 - Rezanie, tvarovanie a konečná úprava kameňa</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23910']">23910 - Výroba brúsnych výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='23990']">23990 - Výroba ostatných nekovových minerálnych výrobkov i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24100']">24100 - Výroba surového železa a ocele a ferozliatin</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24200']">24200 - Výroba rúr, rúrok, dutých profilov a súvisiaceho príslušenstva z ocele</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24310']">24310 - Ťahanie tyčí za studena</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24320']">24320 - Valcovanie pásov za studena</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24330']">24330 - Tvarovanie alebo skladanie za studena</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24340']">24340 - Ťahanie drôtov za studena</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24410']">24410 - Výroba drahých kovov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24420']">24420 - Výroba hliníka</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24430']">24430 - Výroba olova, zinku a cínu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24440']">24440 - Výroba medi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24450']">24450 - Výroba ostatných neželezných kovov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24460']">24460 - Výroba jadrového paliva</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24510']">24510 - Odlievanie železa</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24520']">24520 - Odlievanie ocele</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24530']">24530 - Odlievanie ľahkých kovov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='24540']">24540 - Odlievanie ostatných neželezných kovov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25110']">25110 - Výroba kovových konštrukcií a ich častí</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25120']">25120 - Výroba kovových dverí a okien</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25210']">25210 - Výroba radiátorov ústredného kúrenia a bojlerov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25290']">25290 - Výroba ostatných nádrží, zásobníkov a kontajnerov z kovu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25300']">25300 - Výroba parných kotlov okrem kotlov ústredného kúrenia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25400']">25400 - Výroba zbraní a munície</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25500']">25500 - Kovanie, lisovanie, razenie a valcovanie kovov; prášková  metalurgia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25610']">25610 - Opracovanie a povrchová úprava kovov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25620']">25620 - Obrábanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25710']">25710 - Výroba nožiarskych výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25720']">25720 - Výroba zámkov a pántov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25730']">25730 - Výroba náradia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25910']">25910 - Výroba oceľových zásobníkov a podobných kontajnerov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25920']">25920 - Výroba obalov z ľahkých kovov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25930']">25930 - Výroba drôtených výrobkov, reťazí a pružín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25940']">25940 - Výroba upínadiel, strojných skrutiek</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='25990']">25990 - Výroba ostatných kovových výrobkov i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26110']">26110 - Výroba elektronických komponentov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26120']">26120 - Výroba montovaných elektronických dosiek</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26200']">26200 - Výroba počítačov a periférnych zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26301']">26301 - Výroba telefónnych zariadení a mobilných komunikačných zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26302']">26302 - Výroba vysielacích zariadení a vysielačov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26309']">26309 - Výroba ostatných komunikačných zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26400']">26400 - Výroba spotrebnej elektroniky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26510']">26510 - Výroba nástrojov a zariadení na meranie, testovanie a navigovanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26520']">26520 - Výroba hodín a hodiniek</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26600']">26600 - Výroba prístrojov na ožarovanie, elektromedicínskych a elektroterapeutických prístrojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26700']">26700 - Výroba optických nástrojov a fotografických prístrojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='26800']">26800 - Výroba magnetických a optických médií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27110']">27110 - Výroba elektrických motorov, generátorov a transformátorov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27120']">27120 - Výroba elektrických distribučných a kontrolných zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27200']">27200 - Výroba batérií a akumulátorov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27310']">27310 - Výroba optických káblov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27320']">27320 - Výroba ostatných elektronických a elektrických drôtov a káblov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27330']">27330 - Výroba elektroinštalačných zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27400']">27400 - Výroba elektrických svietidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27510']">27510 - Výroba elektrických zariadení pre domácnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27520']">27520 - Výroba neelektrických zariadení pre domácnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='27900']">27900 - Výroba ostatných elektrických zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28110']">28110 - Výroba motorov a turbín okrem motorov pre lietadlá, autá a bicykle</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28120']">28120 - Výroba zariadení na kvapalný pohon</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28130']">28130 - Výroba iných čerpadiel a kompresorov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28140']">28140 - Výroba iných kohútikov a ventilov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28150']">28150 - Výroba ložísk, ozubených kolies, prevodových a ovládacích prvkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28210']">28210 - Výroba rúr, pecí a horákov k peciam</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28220']">28220 - Výroba dvíhacích a manipulačných zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28230']">28230 - Výroba kancelárskych strojov a zariadení (okrem počítačov a periférnych zariadení)</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28240']">28240 - Výroba ručného náradia na mechanický pohon</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28250']">28250 - Výroba chladiacich a ventilačných zariadení iných ako pre domácnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28290']">28290 - Výroba ostatných strojov na všeobecné účely i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28300']">28300 - Výroba strojov pre poľnohospodárstvo a lesníctvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28410']">28410 - Výroba strojov na obrábanie kovov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28490']">28490 - Výroba ostatných strojov na obrábanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28910']">28910 - Výroba strojov pre metalurgiu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28920']">28920 - Výroba strojov pre baníctvo, ťažbu a stavebníctvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28930']">28930 - Výroba strojov na spracovanie potravín, nápojov a tabaku</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28940']">28940 - Výroba strojov pre textilný, odevný a kožiarsky priemysel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28950']">28950 - Výroba strojov na výrobu papiera a lepenky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28960']">28960 - Výroba strojov na výrobu plastov a gumy</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='28990']">28990 - Výroba ostatných strojov na špeciálne účely i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='29100']">29100 - Výroba motorových vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='29200']">29200 - Výroba karosérií pre motorové vozidlá; výroba návesov a prívesov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='29310']">29310 - Výroba elektrických a elektronických prístrojov pre motorové vozidlá</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='29320']">29320 - Výroba ostatných dielov a príslušenstva pre motorové vozidlá</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='30110']">30110 - Stavba lodí a plávajúcich konštrukcií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='30120']">30120 - Stavba rekreačných a športových člnov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='30200']">30200 - Výroba železničných lokomotív a vozového parku</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='30300']">30300 - Výroba lietadiel a kozmických lodí a podobných zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='30400']">30400 - Výroba vojenských bojových vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='30910']">30910 - Výroba motocyklov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='30920']">30920 - Výroba bicyklov a invalidných vozíkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='30990']">30990 - Výroba ostatných dopravných prostriedkov i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='31010']">31010 - Výroba kancelárskeho nábytku a nábytku do obchodov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='31020']">31020 - Výroba kuchynského nábytku</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='31030']">31030 - Výroba matracov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='31090']">31090 - Výroba ostatného nábytku</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32110']">32110 - Razenie mincí</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32120']">32120 - Výroba šperkov a podobných predmetov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32130']">32130 - Výroba bižutérie a podobných predmetov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32200']">32200 - Výroba hudobných nástrojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32300']">32300 - Výroba športových potrieb</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32400']">32400 - Výroba hier a hračiek</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32500']">32500 - Výroba lekárskych a dentálnych nástrojov a potrieb</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32910']">32910 - Výroba metiel a kief</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='32990']">32990 - Ostatná výroba i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33110']">33110 - Oprava kovových konštrukcií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33120']">33120 - Oprava strojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33130']">33130 - Oprava elektronických a optických prístrojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33140']">33140 - Oprava elektrických prístrojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33150']">33150 - Oprava a údržba lodí a člnov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33160']">33160 - Oprava a údržba lietadiel a kozmických lodí</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33170']">33170 - Oprava a údržba ostatných dopravných prostriedkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33190']">33190 - Oprava ostatných prístrojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='33200']">33200 - Inštalácia priemyselných strojov a prístrojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='35110']">35110 - Výroba elektriny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='35120']">35120 - Prenos elektriny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='35130']">35130 - Rozvod elektriny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='35140']">35140 - Predaj elektriny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='35210']">35210 - Výroba plynu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='35220']">35220 - Rozvod plynných palív potrubím</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='35230']">35230 - Predaj plynu prepravovaného potrubím</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='35300']">35300 - Dodávka pary a rozvod studeného vzduchu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='36001']">36001 - Zber, úprava a dodávka pitnej a úžitkovej vody</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='36009']">36009 - Zber, úprava a dodávka ostatnej vody</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='37000']">37000 - Čistenie a odvod odpadových vôd</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='38110']">38110 - Zber iného ako nebezpečného odpadu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='38120']">38120 - Zber nebezpečného odpadu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='38210']">38210 - Spracúvanie a likvidácia iného ako nebezpečného odpadu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='38220']">38220 - Spracúvanie a likvidácia nebezpečného odpadu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='38310']">38310 - Demontáž vrakov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='38320']">38320 - Recyklácia triedených materiálov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='39000']">39000 - Ozdravovacie činnosti a ostatné činnosti nakladania s odpadom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='41100']">41100 - Vypracovanie stavebných projektov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='41201']">41201 - Výstavba obytných budov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='41202']">41202 - Výstavba neobytných budov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='41209']">41209 - Výstavba obytných a neobytných budov i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='42110']">42110 - Výstavba ciest a diaľnic</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='42120']">42120 - Výstavba železníc a podzemných železníc</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='42130']">42130 - Výstavba mostov a tunelov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='42210']">42210 - Výstavba rozvodov pre plyn a kvapaliny</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='42220']">42220 - Výstavba elektrických a telekomunikačných sietí</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='42910']">42910 - Výstavba vodných diel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='42990']">42990 - Výstavba ostatných inžinierskych stavieb i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43110']">43110 - Demolácia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43120']">43120 - Zemné práce</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43130']">43130 - Prieskumné vrty a vrtné práce</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43210']">43210 - Elektrická inštalácia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43220']">43220 - Inštalácia kanalizačných, výhrevných a klimatizačných zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43290']">43290 - Ostatná stavebná inštalácia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43310']">43310 - Omietkarské práce</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43320']">43320 - Stolárske práce</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43330']">43330 - Obkladanie stien a kladenie dlážkových krytín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43340']">43340 - Maľovanie a zasklievanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43390']">43390 - Ostatné stavebné kompletizačné a dokončovacie práce</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43910']">43910 - Pokrývačské práce</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='43990']">43990 - Ostatné špecializované stavebné práce i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='45110']">45110 - Predaj automobilov a ľahkých motorových vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='45190']">45190 - Predaj ostatných motorových vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='45200']">45200 - Oprava a údržba motorových vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='45310']">45310 - Veľkoobchod s dielmi a príslušenstvom motorových vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='45320']">45320 - Maloobchod s dielmi a príslušenstvom motorových vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='45400']">45400 - Predaj, údržba a oprava motocyklov a ich dielov a príslušenstva</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46110']">46110 - Sprostredkovanie obchodu s poľnohospodárskymi surovinami, živými zvieratami, textilnými surovinami a polotovarmi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46120']">46120 - Sprostredkovanie obchodu s palivami, rudami, kovmi a priemyselnými chemikáliami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46130']">46130 - Sprostredkovanie obchodu s drevom a stavebným materiálom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46140']">46140 - Sprostredkovanie obchodu so strojmi, priemyselnými zariadeniami, loďami a lietadlami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46150']">46150 - Sprostredkovanie obchodu s nábytkom, tovarom pre domácnosť a železiarskym tovarom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46160']">46160 - Sprostredkovanie obchodu s textilom, odevmi, kožušinami, obuvou a koženým tovarom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46170']">46170 - Sprostredkovanie obchodu s potravinami, nápojmi a tabakom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46180']">46180 - Špecializované sprostredkovanie obchodu s iným špecifickým tovarom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46190']">46190 - Sprostredkovanie obchodu s rozličným tovarom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46210']">46210 - Veľkoobchod s obilím, nespracovaným tabakom, semenami a krmivom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46220']">46220 - Veľkoobchod s kvetmi a rastlinami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46230']">46230 - Veľkoobchod so živými zvieratami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46240']">46240 - Veľkoobchod s kožou, kožušinou a opracovanou kožou</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46310']">46310 - Veľkoobchod s ovocím a zeleninou</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46320']">46320 - Veľkoobchod s mäsom a mäsovými výrobkami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46330']">46330 - Veľkoobchod s mliečnymi produktmi, vajcami a jedlým olejom a tukom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46340']">46340 - Veľkoobchod s nápojmi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46350']">46350 - Veľkoobchod s tabakovými výrobkami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46360']">46360 - Veľkoobchod s cukrom a čokoládou a cukrovinkami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46370']">46370 - Veľkoobchod s kávou, čajom, kakaom a korením</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46380']">46380 - Veľkoobchod s inými potravinami vrátane rýb, kôrovcov a mäkkýšov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46390']">46390 - Nešpecializovaný veľkoobchod s potravinami, nápojmi a tabakom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46410']">46410 - Veľkoobchod s textilom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46420']">46420 - Veľkoobchod s odevmi a obuvou</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46430']">46430 - Veľkoobchod s elektrickými zariadeniami pre domácnosť</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46440']">46440 - Veľkoobchod s porcelánom a sklom a čistiacimi prostriedkami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46450']">46450 - Veľkoobchod s parfumérskym a kozmetickým tovarom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46460']">46460 - Veľkoobchod s farmaceutickým tovarom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46470']">46470 - Veľkoobchod s nábytkom, kobercami a svietidlami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46480']">46480 - Veľkoobchod s hodinami a šperkmi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46490']">46490 - Veľkoobchod s ostatnými domácimi potrebami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46510']">46510 - Veľkoobchod s počítačmi, počítačovými periférnymi zariadeniami a softvérom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46520']">46520 - Veľkoobchod s elektronickými a telekomunikačnými zariadeniami a ich dielmi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46610']">46610 - Veľkoobchod s poľnohospodárskymi strojmi, zariadeniami a príslušenstvom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46620']">46620 - Veľkoobchod s obrábacími strojmi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46630']">46630 - Veľkoobchod so strojmi pre baníctvo, stavebníctvo a stavebné inžinierstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46640']">46640 - Veľkoobchod so strojmi pre textilný priemysel a so šijacími a pletacími strojmi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46650']">46650 - Veľkoobchod s kancelárskym nábytkom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46660']">46660 - Veľkoobchod s ostatnými kancelárskymi strojmi a zariadeniami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46690']">46690 - Veľkoobchod s ostatnými strojmi a zariadeniami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46710']">46710 - Veľkoobchod s pevnými, kvapalnými a plynnými palivami a súvisiacimi produktmi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46720']">46720 - Veľkoobchod s kovmi a kovovými rudami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46730']">46730 - Veľkoobchod s drevom, stavebným materiálom a sanitárnymi zariadeniami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46740']">46740 - Veľkoobchod so železiarskym a inštalatérskym tovarom a vykurovacími zariadeniami a potrebami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46750']">46750 - Veľkoobchod s chemickými výrobkami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46760']">46760 - Veľkoobchod s ostatnými medziproduktmi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46770']">46770 - Veľkoobchod s odpadom a šrotom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='46900']">46900 - Nešpecializovaný veľkoobchod</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47110']">47110 - Maloobchod v nešpecializovaných predajniach najmä s potravinami, nápojmi a tabakom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47190']">47190 - Ostatný maloobchod v nešpecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47210']">47210 - Maloobchod s ovocím a zeleninou v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47220']">47220 - Maloobchod s mäsom a mäsovými výrobkami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47230']">47230 - Maloobchod s rybami, kôrovcami a mäkkýšmi v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47240']">47240 - Maloobchod s chlebom, pečivom, cukrárskymi výrobkami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47250']">47250 - Maloobchod s nápojmi v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47260']">47260 - Maloobchod s tabakovými výrobkami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47290']">47290 - Ostatný maloobchod s potravinami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47300']">47300 - Maloobchod s pohonnými látkami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47410']">47410 - Maloobchod s počítačmi, periférnymi jednotkami a softvérom v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47420']">47420 - Maloobchod s telekomunikačnými prístrojmi v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47430']">47430 - Maloobchod s audio- a videoprístrojmi v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47510']">47510 - Maloobchod s textilom v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47520']">47520 - Maloobchod so železiarskym tovarom, farbami a sklom v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47530']">47530 - Maloobchod s kobercami, rohožami, podlahovými alebo nástennými krytinami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47540']">47540 - Maloobchod s elektrickými zariadeniami pre domácnosť v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47590']">47590 - Maloobchod s nábytkom, svietidlami a inými domácimi potrebami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47610']">47610 - Maloobchod s knihami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47620']">47620 - Maloobchod s novinami a kancelárskymi potrebami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47630']">47630 - Maloobchod s audio- a videonahrávkami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47640']">47640 - Maloobchod so športovými potrebami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47650']">47650 - Maloobchod s hračkami a hrami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47710']">47710 - Maloobchod s odevmi v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47720']">47720 - Maloobchod s obuvou a koženými výrobkami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47730']">47730 - Lekárne</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47740']">47740 - Maloobchod so zdravotníckymi a ortopedickými pomôckami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47750']">47750 - Maloobchod s kozmetickými a toaletnými výrobkami v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47760']">47760 - Maloobchod s kvetmi, rastlinami, semenami, hnojivami, domácimi zvieratami a krmivom pre zvieratá v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47770']">47770 - Maloobchod s hodinami a šperkmi v špecializovaných predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47781']">47781 - Maloobchod s palivami pre domácnosť</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47789']">47789 - Ostatný maloobchod s novým tovarom v špecializovaných predajniach i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47790']">47790 - Maloobchod s použitým tovarom v predajniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47810']">47810 - Maloobchod v stánkoch a na trhoch s potravinami, nápojmi a tabakom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47820']">47820 - Maloobchod v stánkoch a na trhoch s textilom, odevmi a obuvou</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47890']">47890 - Maloobchod v stánkoch a na trhoch s ostatným tovarom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47910']">47910 - Zásielkový predaj alebo predaj cez internet</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='47990']">47990 - Ostatný maloobchod mimo predajní, stánkov a trhov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49100']">49100 - Osobná železničná doprava, medzimestská</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49200']">49200 - Nákladná železničná doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49310']">49310 - Mestská alebo prímestská osobná pozemná doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49320']">49320 - Taxislužba</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49390']">49390 - Ostatná osobná pozemná doprava i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49410']">49410 - Nákladná cestná doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49420']">49420 - Sťahovacie služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49501']">49501 - Potrubná doprava plynu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49502']">49502 - Potrubná doprava ropy</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='49509']">49509 - Ostatná potrubná doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='50100']">50100 - Námorná a pobrežná osobná vodná doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='50200']">50200 - Námorná a pobrežná nákladná vodná doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='50300']">50300 - Vnútrozemská osobná vodná doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='50400']">50400 - Vnútrozemská nákladná vodná doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='51100']">51100 - Osobná letecká doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='51210']">51210 - Nákladná letecká doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='51220']">51220 - Kozmická doprava</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='52100']">52100 - Skladovanie a uskladňovanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='52210']">52210 - Vedľajšie činnosti v pozemnej doprave</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='52220']">52220 - Vedľajšie činnosti vo vodnej doprave</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='52230']">52230 - Vedľajšie činnosti v leteckej doprave</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='52240']">52240 - Manipulácia s nákladom</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='52290']">52290 - Ostatné pomocné činnosti v doprave</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='53100']">53100 - Činnosti poskytovateľov univerzálnej poštovej služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='53200']">53200 - Ostatné poštové služby a služby kuriérov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='55100']">55100 - Hotelové a podobné ubytovanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='55200']">55200 - Turistické a iné krátkodobé ubytovanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='55300']">55300 - Autokempingy, táboriská a miesta pre karavány</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='55901']">55901 - Ubytovanie vo vysokoškolských internátoch</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='55909']">55909 - Ubytovanie v ubytovniach a ostatné dočasné ubytovanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='56101']">56101 - Jedálne</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='56102']">56102 - Zariadenia školského stravovania</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='56109']">56109 - Ostatné účelové stravovanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='56210']">56210 - Dodávka jedál</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='56290']">56290 - Ostatné jedálenské služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='56300']">56300 - Služby pohostinstiev</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='58110']">58110 - Vydávanie kníh</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='58120']">58120 - Vydávanie adresárov a katalógov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='58130']">58130 - Vydávanie novín</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='58140']">58140 - Vydávanie časopisov a periodík</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='58190']">58190 - Ostatné vydavateľské činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='58210']">58210 - Nakladateľstvo v oblasti počítačových hier</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='58290']">58290 - Ostatné nakladateľstvo v oblasti softvéru</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='59110']">59110 - Výroba filmov, videozáznamov a televíznych programov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='59120']">59120 - Podporné činnosti súvisiace s výrobou filmov, videozáznamov a televíznych programov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='59130']">59130 - Distribúcia filmov, videozáznamov a televíznych programov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='59140']">59140 - Premietanie filmov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='59200']">59200 - Príprava a zverejňovanie zvukových nahrávok</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='60100']">60100 - Rozhlasové vysielanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='60200']">60200 - Vysielanie televízie a predplatené programy televízie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='61100']">61100 - Činnosti drôtových telekomunikácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='61200']">61200 - Činnosti bezdrôtových telekomunikácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='61300']">61300 - Satelitné telekomunikačné činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='61900']">61900 - Ostatné telekomunikačné činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='62010']">62010 - Počítačové programovanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='62020']">62020 - Poradenstvo týkajúce sa počítačov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='62030']">62030 - Činnosti súvisiace s riadením počítačového príslušenstva</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='62090']">62090 - Ostatné služby týkajúce sa informačných technológií a počítačov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='63110']">63110 - Spracovanie dát, poskytovanie serverového priestoru na internete a súvisiace služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='63120']">63120 - Služby webového portálu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='63910']">63910 - Činnosti spravodajských agentúr</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='63990']">63990 - Ostatné informačné služby i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='64110']">64110 - Činnosti centrálnej banky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='64190']">64190 - Ostatné peňažné sprostredkovanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='64200']">64200 - Činnosti holdingových spoločností</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='64300']">64300 - Trasty, fondy a podobné finančné subjekty</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='64910']">64910 - Finančný lízing</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='64920']">64920 - Ostatné poskytovanie úverov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='64990']">64990 - Ostatné finančné služby okrem poistenia a dôchodkového zabezpečenia i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='65110']">65110 - Životné poistenie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='65120']">65120 - Neživotné poistenie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='65200']">65200 - Zaistenie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='65300']">65300 - Dôchodkové zabezpečenie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='66110']">66110 - Správa finančných trhov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='66120']">66120 - Sprostredkovanie obchodu s komoditami a cennými papiermi</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='66190']">66190 - Ostatné pomocné činnosti finančných služieb okrem poistenia a dôchodkového zabezpečenia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='66210']">66210 - Vyčíslenie rizík a náhrad škôd</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='66220']">66220 - Činnosti poisťovacích agentov a maklérov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='66290']">66290 - Ostatné pomocné činnosti v poisťovníctve a dôchodkovom zabezpečení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='66300']">66300 - Činnosti investičných manažérov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='68100']">68100 - Kúpa a predaj vlastných nehnuteľností</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='68200']">68200 - Prenájom a prevádzkovanie vlastných alebo prenajatých nehnuteľností</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='68310']">68310 - Realitné kancelárie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='68320']">68320 - Správa nehnuteľností na základe poplatkov alebo zmlúv</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='69100']">69100 - Právne činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='69200']">69200 - Účtovnícke a audítorské činnosti, vedenie účtovných kníh; daňové poradenstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='70100']">70100 - Vedenie firiem</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='70210']">70210 - Služby v oblasti styku a komunikácie s verejnosťou</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='70220']">70220 - Poradenské služby v oblasti podnikania a riadenia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='71110']">71110 - Architektonické činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='71121']">71121 - Inžinierske činnosti a poradenstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='71122']">71122 - Geologický prieskum</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='71123']">71123 - Geodetické činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='71129']">71129 - Ostatné inžinierske činnosti a súvisiace technické poradenstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='71200']">71200 - Technické testovanie a analýzy</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='72110']">72110 - Výskum a experimentálny vývoj v oblasti biotechnológie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='72190']">72190 - Ostatný výskum a experimentálny vývoj v oblasti prírodných a technických vied</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='72200']">72200 - Výskum a experimentálny vývoj v oblasti spoločenských a humanitných vied</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='73110']">73110 - Reklamné agentúry</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='73120']">73120 - Predaj vysielacieho času</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='73200']">73200 - Prieskum trhu a verejnej mienky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='74100']">74100 - Špecializované dizajnérske činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='74200']">74200 - Fotografické činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='74300']">74300 - Prekladateľské a tlmočnícke činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='74900']">74900 - Ostatné odborné, vedecké a technické činnosti i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='75000']">75000 - Veterinárne činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77110']">77110 - Prenájom a lízing automobilov a ľahkých motorových vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77120']">77120 - Prenájom a lízing nákladných automobilov a ostatných ťažkých vozidiel</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77210']">77210 - Prenájom a lízing rekreačných a športových potrieb</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77220']">77220 - Prenájom videopások a diskov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77290']">77290 - Prenájom a lízing ostatných osobných potrieb a potrieb pre domácnosť</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77310']">77310 - Prenájom a lízing poľnohospodárskych strojov a zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77320']">77320 - Prenájom a lízing stavbárskych strojov a zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77330']">77330 - Prenájom a lízing kancelárskych strojov a zariadení (vrátane počítačov)</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77340']">77340 - Prenájom a lízing vodných dopravných prostriedkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77350']">77350 - Prenájom a lízing leteckých dopravných prostriedkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77390']">77390 - Prenájom a lízing ostatných strojov, zariadení a iného hmotného majetku i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='77400']">77400 - Lízing duševného vlastníctva a podobných produktov okrem prác chránených autorskými právami</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='78100']">78100 - Činnosti agentúr sprostredkujúcich zamestnania</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='78200']">78200 - Činnosti agentúr sprostredkujúcich zamestnanie na dobu určitú</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='78300']">78300 - Ostatné poskytovanie ľudských zdrojov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='79110']">79110 - Činnosti cestovných agentúr</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='79120']">79120 - Činnosti cestovných kancelárií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='79900']">79900 - Ostatné rezervačné služby a súvisiace činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='80100']">80100 - Súkromné bezpečnostné služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='80200']">80200 - Služby spojené s prevádzkovaním bezpečnostných systémov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='80300']">80300 - Pátracie služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='81100']">81100 - Kombinované pomocné činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='81210']">81210 - Generálne čistenie budov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='81220']">81220 - Ostatné  priemyselné čistenie budov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='81290']">81290 - Ostatné čistiace činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='81300']">81300 - Činnosti súvisiace s krajinnou úpravou</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='82110']">82110 - Kombinované administratívno-kancelárske činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='82190']">82190 - Kopírovanie, príprava dokumentov a ostatné špecializované pomocné administratívne činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='82200']">82200 - Činnosti stredísk poskytujúcich služby prostredníctvom telefónu - call centrá</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='82300']">82300 - Organizovanie kongresov a podnikateľských výstav</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='82910']">82910 - Činnosti inkasných agentúr a posúdenie úveruschopnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='82920']">82920 - Baliace činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='82990']">82990 - Ostatné pomocné obchodné činnosti i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84110']">84110 - Všeobecná verejná správa</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84120']">84120 - Usmerňovanie činností zariadení poskytujúcich zdravotnícku starostlivosť, vzdelávanie, kultúrne a iné sociálne služby okrem sociál. zabezpečenia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84130']">84130 - Podpora a usmerňovanie ekonomiky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84210']">84210 - Zahraničné veci</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84220']">84220 - Obrana</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84230']">84230 - Spravodlivosť a súdnictvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84240']">84240 - Verejný poriadok a bezpečnosť</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84250']">84250 - Protipožiarna ochrana</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='84300']">84300 - Povinné sociálne zabezpečenie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85100']">85100 - Predškolská výchova</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85200']">85200 - Základné školstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85310']">85310 - Stredné všeobecnovzdelávacie školstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85321']">85321 - Stredné odborné školstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85322']">85322 - Odborné učilištia</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85329']">85329 - Ostatné stredné technické a odborné školstvo</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85410']">85410 - Pomaturitné neterciárne vzdelávanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85420']">85420 - Terciárne vzdelávanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85510']">85510 - Športová a rekreačná výchova</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85520']">85520 - Umelecké vzdelávanie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85530']">85530 - Činnosti škôl pre výučbu vedenia dopravných prostriedkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85590']">85590 - Ostatné vzdelávanie i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='85600']">85600 - Pomocné vzdelávacie činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='86100']">86100 - Činnosti nemocníc</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='86210']">86210 - Činnosti všeobecnej lekárskej praxe</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='86220']">86220 - Činnosti špeciálnej lekárskej praxe</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='86230']">86230 - Zubná lekárska prax</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='86901']">86901 - Služby zdravotníckych laboratórií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='86909']">86909 - Ostatná zdravotná starostlivosť i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='87100']">87100 - Ošetrovateľská služba v pobytových zariadeniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='87200']">87200 - Starostlivosť o osoby s mentálnym postihnutím, duševne choré a drogovo závislé osoby v pobytových zariadeniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='87300']">87300 - Starostlivosť o staršie osoby a osoby so zdravotným postihnutím v pobytových zariadeniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='87900']">87900 - Ostatná starostlivosť v pobytových zariadeniach</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='88100']">88100 - Sociálna práca bez ubytovania pre staršie osoby a osoby so zdravotným postihnutím</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='88910']">88910 - Denná starostlivosť o deti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='88990']">88990 - Ostatná sociálna starostlivosť bez ubytovania i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='90010']">90010 - Scénické umenie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='90020']">90020 - Podporné činnosti súvisiace so scénickým umením</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='90030']">90030 - Umelecká tvorba</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='90040']">90040 - Prevádzka kultúrnych zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='91010']">91010 - Činnosti knižníc a archívov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='91020']">91020 - Činnosti múzeí</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='91030']">91030 - Prevádzkovanie  historických pamiatok a budov a podobných turistických zaujímavostí</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='91040']">91040 - Činnosti botanických a zoologických záhrad a prírodných rezervácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='92000']">92000 - Činnosti herní a stávkových kancelárií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='93110']">93110 - Prevádzka športových zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='93120']">93120 - Činnosti športových klubov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='93130']">93130 - Fitnescentrá</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='93190']">93190 - Ostatné športové činnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='93210']">93210 - Činnosti lunaparkov a zábavných parkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='93290']">93290 - Ostatné zábavné činnosti a voľnočasové aktivity</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='94110']">94110 - Činnosti podnikateľských a zamestnávateľských členských organizácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='94120']">94120 - Činnosti profesijných členských organizácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='94200']">94200 - Činnosti odborových organizácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='94910']">94910 - Činnosti cirkevných organizácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='94920']">94920 - Činnosti politických organizácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='94991']">94991 - Činnosti mládežníckych organizácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='94992']">94992 - Činnosti záujmových organizácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='94999']">94999 - Činnosti ostatných členských organizácií</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='95110']">95110 - Oprava počítačov a periférnych zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='95120']">95120 - Oprava komunikačných zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='95210']">95210 - Oprava spotrebnej elektroniky</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='95220']">95220 - Oprava domácich zariadení a zariadení pre dom a záhradu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='95230']">95230 - Oprava obuvi a koženého tovaru</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='95240']">95240 - Oprava nábytku a domácich zariadení</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='95250']">95250 - Oprava hodín, hodiniek a šperkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='95290']">95290 - Oprava iných osobných potrieb a potrieb pre domácnosti</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='96010']">96010 - Pranie a chemické čistenie textilných a kožušinových výrobkov</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='96020']">96020 - Kadernícke a kozmetické služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='96030']">96030 - Pohrebné a súvisiace služby</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='96040']">96040 - Služby týkajúce sa telesnej pohody</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='96090']">96090 - Ostatné osobné služby i. n.</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='97000']">97000 - Činnosti domácností ako zamestnávateľov domáceho personálu</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='98100']">98100 - Nediferencované činnosti v domácnostiach produkujúce tovary na vlastné použitie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='98200']">98200 - Nediferencované činnosti v domácnostiach produkujúce služby na vlastné použitie</xsl:if><xsl:if test="/DPFOB2025/DPFOB_NACE/cmbSKNACE3[text()='99000']">99000 - Činnosti extrateritoriálnych organizácií a združení</xsl:if><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_1oddiel">
    			<fo:block background-color='black' color='white'>I. ODDIEL - ÚDAJE O DAŇOVNÍKOVI</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd1_PriezviskoMenoTitul">
    			
						<xsl:for-each select="./Odd1_Meno">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>04 - Priezvisko</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>05 - Meno</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>06 - Titul pred menom / za priezviskom</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_PriezviskoMenoTitul/Odd1_Meno/tbPriezvisko4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_PriezviskoMenoTitul/Odd1_Meno/tbMeno5'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_PriezviskoMenoTitul/Odd1_Meno/tbTitul6'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_PriezviskoMenoTitul/Odd1_Meno/tbTitul62'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd1_AdresaTrvaly">
    			<fo:block background-color='black' color='white'>Adresa trvalého pobytu v deň podania daňového priznania na území Slovenskej republiky alebo v zahraničí</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd1_Ulica7Cislo8">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>07 - Ulica</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>08 - Súpisné/orientačné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaTrvaly/Odd1_Ulica7Cislo8/tbUlica7'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaTrvaly/Odd1_Ulica7Cislo8/tbCisloDomu8'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd1_Obec10Stat11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>09 - PSČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>10 - Obec</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>11 - Štát</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaTrvaly/Odd1_Obec10Stat11/tbPSC9'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaTrvaly/Odd1_Obec10Stat11/tbObec10'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaTrvaly/Odd1_Obec10Stat11/tbStat11'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd1_Obmedzenie12">
    			
						<xsl:for-each select="./secNerezident1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='443px'/><fo:table-column column-width='443px'/><fo:table-column column-width='25px'/><fo:table-column column-width='25px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>12 - Daňový nerezident 2)</fo:block></fo:table-cell><fo:table-cell><fo:block>áno</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_1oddiel/Odd1_Obmedzenie12/secNerezident1/cbNerezident[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Identifikačné číslo na daňové účely (TIN), pridelené v štáte daňovej rezidencie</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./secNerezident2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>od</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_Obmedzenie12/secNerezident2/nerezidentOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>do</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_Obmedzenie12/secNerezident2/nerezidentDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_Obmedzenie12/secNerezident2/TIN'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd1_Prepojenie13">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='291px'/><fo:table-column column-width='291px'/><fo:table-column column-width='35px'/><fo:table-column column-width='35px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>13 - Ekonomické, personálne alebo iné prepojenie podľa § 2 písm. n) zákona 3)</fo:block></fo:table-cell><fo:table-cell><fo:block>áno</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_1oddiel/Odd1_Prepojenie13/cbPrepojenie[text()='1']">
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
				<xsl:for-each select="./Odd1_AdresaPobyt">
    			<fo:block background-color='black' color='white'>Adresa bydliska alebo adresa pobytu na území Slovenskej republiky, kde sa daňovník zdržiaval v zdaňovacom období 4)</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd1_Ulica14Cislo15">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>14 - Ulica</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>15 - Súpisné/orientačné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaPobyt/Odd1_Ulica14Cislo15/tbUlica14'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaPobyt/Odd1_Ulica14Cislo15/tbCisloDomu15'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd1_PSC16Obec17">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>16 - PSČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>17 - Obec</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaPobyt/Odd1_PSC16Obec17/tbPSC16'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_1oddiel/Odd1_AdresaPobyt/Odd1_PSC16Obec17/tbObec17'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_2oddiel">
    			<fo:block background-color='black' color='black'>|</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1) Ak sa podáva dodatočné daňové priznanie len z dôvodov uvedených v § 32 ods. 8, 11 a 12 alebo § 40 ods. 7 zákona, uvádzajú sa tieto dôvody v XIII. oddiele.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>2) Vyznačí sa, ak ide o daňovníka s obmedzenou daňovou povinnosťou (nerezidenta) na území Slovenskej republiky podľa § 2 písm. e) bod 1 a 2 zákona a príslušného článku zmluvy o zamedzení dvojitého zdanenia; vypĺňa sa aj XI. oddiel. Ako dátum od - do sa uvedie tá časť zdaňovacieho obdobia, počas ktorej bol daňovník na území Slovenskej republiky daňovníkom s obmedzenou daňovou povinnosťou.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>3) Vyznačí sa, ak daňovník, ktorý je prepojenou osobou podľa § 2 písm. n) zákona, v príslušnom zdaňovacom období vykonal vzájomnú obchodnú transakciu s osobou, voči ktorej je považovaný za závislú osobu podľa zákona, pričom sa v XIII. oddiele uvedie druh prepojenia a identifikácia osôb, s ktorými je prepojený.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>4) Vypĺňa sa, len ak daňovník nemá trvalý pobyt na území Slovenskej republiky.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>5) Ak daňové priznanie podáva daňovník sám, uvedie sa v tomto riadku jeho telefónne číslo a emailová adresa. Ak za daňovníka podáva daňové priznanie zástupca, v tomto riadku sa uvádza telefónne číslo a emailová adresa tohto zástupcu, ak sa s daňovníkom nedohodli inak. Údaje v r. 27 a 28 nie sú podľa § 32 ods. 7 zákona povinné.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd2_ZakonnyZastupca">
    			
						<xsl:for-each select="./Odd2_ZakonnyZastupcaMeno">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>18 - Priezvisko</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>19 - Meno</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>20 - Titul pred menom / za priezviskom</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaMeno/tbPriezvisko18'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaMeno/tbMeno19'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaMeno/tbTitulPred20'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaMeno/tbTitulZa20'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd2_ZakonnyZastupcaAdresa">
    			
						<xsl:for-each select="./Odd2_ZakonnyZastupcaAdr1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>21 - Rodné číslo</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>22 - Ulica</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>23 - Súpisné/orientačné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaAdresa/Odd2_ZakonnyZastupcaAdr1/t21_1RC'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaAdresa/Odd2_ZakonnyZastupcaAdr1/t21_2RC'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaAdresa/Odd2_ZakonnyZastupcaAdr1/tbUlica22'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaAdresa/Odd2_ZakonnyZastupcaAdr1/tbCislo23'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd2_ZakonnyZastupcaAdr2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>24 - PSČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>25 - Obec</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>26 - Štát</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaAdresa/Odd2_ZakonnyZastupcaAdr2/tbPSC24'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaAdresa/Odd2_ZakonnyZastupcaAdr2/tbObec25'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZakonnyZastupca/Odd2_ZakonnyZastupcaAdresa/Odd2_ZakonnyZastupcaAdr2/tbStat26'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd2_lblZastupcaKU">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='59px'/><fo:table-column column-width='59px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>27 - Telefónne číslo 5)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>28 - Emailová adresa 5)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd2_ZastupcaKU">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-column column-width='69px'/><fo:table-column column-width='69px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZastupcaKU/tbTelCislo27'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_2oddiel/Odd2_ZastupcaKU/tbEmail28'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_3oddiel">
    			<fo:block background-color='black' color='white'>III. ODDIEL - ÚDAJE NA UPLATNENIE ZNÍŽENIA ZÁKLADU DANE (§ 11 zákona) A DAŇOVÉHO BONUSU (§ 33 zákona)</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='443px'/><fo:table-column column-width='443px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>6) Ak daňovník vypĺňa r. 29, uvádza sa v r. 30 úhrnná suma dôchodku (ov) podľa § 11 ods. 6 zákona za zdaňovacie obdobie len vtedy, ak si uplatňuje zníženie základu dane na daňovníka podľa § 11 ods. 2 zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>7) Vypĺňa sa, len ak si daňovník uplatňuje nezdaniteľnú časť základu dane na manželku (manžela) podľa § 11 ods. 3 zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>8) Uvádzajú sa vlastné príjmy manželky (manžela) za celé zdaňovacie obdobie, za ktoré sa podáva daňové priznanie, t.j. príjmy znížené o zaplatené poistné na verejné zdravotné poistenie, na sociálne poistenie a povinné príspevky na starobné dôchodkové sporenie (ďalej len „poistné a príspevky“), ktoré manželka (manžel) v príslušnom zdaňovacom období bola (bol) povinná (povinný) zaplatiť z týchto príjmov a v stĺpci počet mesiacov sa uvádza počet kalendárnych mesiacov v zdaňovacom období (kalendárnom roku), počas ktorých manželka (manžel) splnila (splnil) podmienky uvedené v § 11 ods. 4 zákona, pričom do počtu mesiacov sa započítava každý kalendárny mesiac, na začiatku ktorého boli splnené ustanovené podmienky. Ak sú súčasne splnené dve a viac podmienok v tom istom kalendárnom mesiaci, do počtu mesiacov sa započíta takýto mesiac len jedenkrát.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>9) Uvádzajú sa údaje o vyživovanom dieťati (deťoch), na ktoré za rovnaké obdobie kalendárneho roka neuplatnil iný daňovník nárok na daňový bonus podľa zákona. Prílohou daňového priznania sú aj doklady preukazujúce nárok na daňový bonus podľa zákona (§ 32 ods. 10 zákona). Ak daňovník v zdaňovacom období, za ktoré podáva daňové priznanie, takéto doklady predložil svojmu zamestnávateľovi a neuplatňuje si daňový bonus podľa zákona ani jeho pomernú časť podaním daňového priznania, uvedené doklady nie sú prílohou daňového priznania.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>9a) Prílohou daňového priznania je aj doklad preukazujúci oprávnenosť nároku na priznanie daňového bonusu podľa zákona druhou oprávnenou osobou, okrem rodného listu dieťaťa, ktorý bol vydaný na území SR.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>9b) Daňovník zaškrtne políčko v prípade, ak druhá oprávnená osoba podala daňové priznanie, v ktorom vykázala základ dane na účely výpočtu daňového bonusu podľa zákona, a to bez ohľadu na skutočnosť, či mala povinnosť podať daňové priznanie podľa § 32 zákona alebo nie, okrem prípadov uvedených v odkaze 9c.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>9c) Ak daňovník uplatňuje postup podľa § 33 ods. 8 zákona, t.j. navyšuje svoj základ dane o základ dane druhej oprávnenej osoby, môže tak v čase podania daňového priznania spraviť len v prípade, ak môže preukázať základ dane druhej oprávnenej osoby pre účely uplatnenia daňového bonusu, v súlade s citovaným znením zákona. Uvedené znamená, že ak druhá oprávnená osoba nepodala daňové priznanie na území Slovenskej republiky, potom daňovník k daňovému priznaniu priloží kópiu dokladu o ročnom zúčtovaní alebo kópiu dokladu preukazujúceho výšku základu dane z príjmov zo závislej činnosti podľa § 5 zákona druhej oprávnenej osoby, ktorej ročné zúčtovanie nebolo vykonané a nemala povinnosť podať daňové priznanie.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>9d) Vypĺňa sa na základe dokladov uvedených v odkaze 9b alebo 9c preukazujúcich výšku základu dane druhej oprávnenej osoby, pričom doklady uvedené v odkaze 9c sú prílohou daňového priznania.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd3_UdajeDochodku">
    			<fo:block background-color='black' color='white'>Údaje o poberaní dôchodkov uvedených v § 11 ods. 6 zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd3_UdajeDochodku29">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='325px'/><fo:table-column column-width='325px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='35px'/><fo:table-column column-width='35px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Poberal (a) som na začiatku zdaňovacieho obdobia dôchodok (ky) uvedený (é) v § 11 ods. 6 zákona alebo mi bol tento (tieto) dôchodok (ky) priznaný (é) spätne k začiatku príslušného zdaňovacieho obdobia (vypĺňa sa, len ak daňovník bol poberateľom dôchodku uvedeného v § 11 ods. 6 zákona na začiatku zdaňovacieho obdobia alebo mu tento dôchodok bol priznaný spätne k začiatku príslušného zdaňovacieho obdobia)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>29</fo:block></fo:table-cell><fo:table-cell><fo:block>áno</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_UdajeDochodku/Odd3_UdajeDochodku29/cbr29[text()='1']">
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
				<xsl:for-each select="./Odd3_UdajeDochodku_suma30">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='190px'/><fo:table-column column-width='190px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='94px'/><fo:table-column column-width='94px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrnná suma dôchodku (ov) uvedeného (ných) v § 11 ods. 6 zákona za zdaňovacie obdobie (v eurách)6)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>30</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_UdajeDochodku/Odd3_UdajeDochodku_suma30/t30'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd3_UdajeManzelky">
    			<fo:block background-color='black' color='white'>Údaje o manželke (manželovi), ktorá (ý) žije s daňovníkom v domácnosti7) na uplatnenie nezdaniteľnej časti základu dane</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./SecRiadok31">
    			
						<xsl:for-each select="./Odd3_UdajeManzelky_rodneCislo">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='69px'/><fo:table-column column-width='69px'/><fo:table-column column-width='6px'/><fo:table-column column-width='6px'/><fo:table-column column-width='47px'/><fo:table-column column-width='47px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_UdajeManzelky/SecRiadok31/Odd3_UdajeManzelky_rodneCislo/r31_2a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_UdajeManzelky/SecRiadok31/Odd3_UdajeManzelky_rodneCislo/r31_2b'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./secRiadok32">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='84px'/><fo:table-column column-width='84px'/><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>32</fo:block></fo:table-cell><fo:table-cell><fo:block>uplatňujem nezdaniteľnú časť základu dane na manželku (manžela)&#160;&#160; &#160;&#160;&#160; &#160;podľa § 11 ods. 3 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_UdajeManzelky/secRiadok32/r32_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Vlastné príjmy (v eurách)8)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Počet mesiacov8)</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_UdajeManzelky/secRiadok32/r32_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_UdajeManzelky/secRiadok32/r32_3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd4_lblVyzivovaneDeti">
    			<fo:block background-color='black' color='black'>|</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./secDeti">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='73px'/><fo:table-column column-width='73px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>33 - Priezvisko a meno</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Rodné číslo</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Daňový bonus podľa zákona uplatňujem v mesiacoch</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd4_VyzivovaneDeti">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-column column-width='69px'/><fo:table-column column-width='69px'/><fo:table-column column-width='6px'/><fo:table-column column-width='6px'/><fo:table-column column-width='47px'/><fo:table-column column-width='47px'/><fo:table-column column-width='18px'/><fo:table-column column-width='18px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='r33Priezvisko_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='r33RodCislo_2a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='r33RodCislo_2b'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell>
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
				<xsl:for-each select="./sec_riadok34">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>33a</fo:block></fo:table-cell><fo:table-cell><fo:block>Údaje o ďalších vyživovaných deťoch uvádzam v XIII. oddiele v členení podľa r. 33</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd4_lblVyzivovaneDeti/sec_riadok34/r33a[text()='1']">
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
				<xsl:for-each select="./Odd3_lblDruhaOO">
    			<fo:block background-color='black' color='white'>Údaje druhej oprávnenej osoby vyživujúcej dieťa (deti) v domácnosti uvedené na r. 33</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatňujem postup podľa § 33 ods. 8 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/cb34_Uplatnujem[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Oznamujem, že druhá oprávnená osoba uvedená na r. 34 podala daňové priznanie na území Slovenskej republiky9b)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/cb34_Oznamujem[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Druhá oprávnená osoba uvedená na r. 34 na území Slovenskej republiky nepodala daňové priznanie, preto k daňovému priznaniu prikladám:</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>kópiu dokladu o vykonanom ročnom zúčtovaní preddavkov na daň z príjmov zo závislej činnosti podľa zákona (ďalej len „ročné zúčtovanie“) druhej oprávnenej osoby9c)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/cbVykonane_RZP[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./secOpravnenaOsoba">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='73px'/><fo:table-column column-width='73px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>34 - Priezvisko a meno 9a)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Rodné číslo</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Mesiace, na začiatku ktorých druhá oprávnená osoba splnila podmienky na uplatnenie daňového bonusu podľa zákona</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd3_34OpravnenaOsoba">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-column column-width='69px'/><fo:table-column column-width='69px'/><fo:table-column column-width='6px'/><fo:table-column column-width='6px'/><fo:table-column column-width='47px'/><fo:table-column column-width='47px'/><fo:table-column column-width='18px'/><fo:table-column column-width='18px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='9px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-column column-width='13px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/r34Priezvisko_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/r34RodCislo_2a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/r34RodCislo_2b'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM00_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM01_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM02_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM03_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM04_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM05_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM06_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM07_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM08_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM09_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM10_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM11_1_OO[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/Odd3_34OpravnenaOsoba/cbM12_1_OO[text()='1']">
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
				<xsl:for-each select="./sec_riadok34a_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane (čiastkový základ dane) z príjmov zo závislej činnosti alebo z príjmov z podnikania alebo z inej samostatnej zárobkovej činnosti alebo ich úhrn druhej oprávnenej osoby z r. 34, pre uplatnenie daňového bonusu podľa zákona 9d)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>34a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_3oddiel/Odd3_lblDruhaOO/sec_riadok34a_1/r34aZakladDane'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_4oddiel">
    			<fo:block background-color='black' color='white'>IV. ODDIEL - ÚDAJE NA UPLATNENIE DAŇOVÉHO BONUSU  NA ZAPLATENÉ ÚROKY (§ 33a zákona)</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./secRiadok35">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='84px'/><fo:table-column column-width='84px'/><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>35</fo:block></fo:table-cell><fo:table-cell><fo:block>uplatňujem daňový bonus na zaplatené úroky&#160;&#160; &#160;&#160;&#160; &#160;podľa  § 33a zákona 10)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_4oddiel/secRiadok35/r35_1[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Zaplatené úroky za zdaňovacie obdobie (v eurách)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Počet mesiacov</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_4oddiel/secRiadok35/r35_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_4oddiel/secRiadok35/r35_3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./secR35Datum">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>Dátum začatia úročenia úveru</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_4oddiel/secR35Datum/r35Datum'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>Dátum uzavretia zmluvy o úvere na bývanie</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_4oddiel/secR35Datum/datumZmluvaUver'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_5oddiel">
    			<fo:block background-color='black' color='white'>V. ODDIEL - VÝPOČET ZÁKLADU DANE (čiastkového základu dane) Z PRÍJMOV ZO ZÁVISLEJ ČINNOSTI (§ 5 zákona) - v eurách</fo:block><fo:block color='white'>|</fo:block>
				<fo:block text-align='justify'>11) Vypĺňa sa na základe všetkých potvrdení (dokladov) o príjmoch zo závislej činnosti plynúcich zo zdrojov na území Slovenskej republiky a zo zdrojov v zahraničí a o zaplatenom povinnom poistnom preukazujúcich uvádzané skutočnosti vrátane dostatočnej identifikácie daňovníka. Údaje o príjmoch zo zdrojov v zahraničí sa uvádzajú v XIII. oddiele. Súčasťou príjmov v r. 36 sú aj príjmy podľa § 5 ods. 7 zákona, pri ktorých nie sú v príslušnom zdaňovacom období splnené podmienky pre ich oslobodenie od dane. Kópie potvrdení (dokladov) sú prílohami daňového priznania.</fo:block><fo:block color='white'>|</fo:block>		<xsl:for-each select="./secRiadok36">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn príjmov od všetkých zamestnávateľov11)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>36</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_5oddiel/secRiadok36/r36'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd5_ZToho">
    			<fo:block background-color='black' color='white'>z toho</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./secRiadok36a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='161px'/><fo:table-column column-width='161px'/><fo:table-column column-width='16px'/><fo:table-column column-width='16px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>úhrn príjmov plynúcich na základe dohôd o prácach vykonávaných mimo pracovného pomeru</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>36a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_5oddiel/Odd5_ZToho/secRiadok36a/r36a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./secRiadok37">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='101px'/><fo:table-column column-width='101px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn povinného poistného (§ 5 ods. 8 zákona)11)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>37</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_5oddiel/secRiadok37/r37'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./SecRiadok38">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='148px'/><fo:table-column column-width='148px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane (čiastkový základ dane) (r. 36 - r. 37)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>38</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_5oddiel/SecRiadok38/r38'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_6oddiel">
    			<fo:block background-color='black' color='white'>VI. ODDIEL - VÝPOČET ZÁKLADU DANE (čiastkového základu dane) Z PRÍJMOV Z PODNIKANIA, Z INEJ SAMOSTATNEJ ZÁROBKOVEJ ČINNOSTI, Z PRENÁJMU A Z POUŽITIA DIELA A UMELECKÉHO VÝKONU (§ 6 zákona) - v eurách</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='432px'/><fo:table-column column-width='432px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>12)  Riadky 43, 44  a 61 až 64 sa vypĺňajú, len ak daňovník s príjmami podľa § 6 ods. 1 a 2 alebo ods. 3 alebo ods. 4 zákona účtuje v sústave podvojného účtovníctva okrem pripočítateľných položiek, ktoré súvisia s úpravami ustanovenými v § 17 ods. 19 písm. h) a ods. 34 a 35, § 19 ods. 3 písm. n) a § 21 ods. 1 písm. h) treťom bode zákona, ktoré sa uvádzajú v riadku 43 a 63 a odpočítateľnej položky podľa § 17 ods. 37 zákona, ktorá sa uvádza v r. 44 a 64. V XIII. oddiele sa uvádzajú položky, o ktoré sa konkrétne základ dane (výsledok hospodárenia) zvýšil alebo znížil. Ak daňovník účtuje v sústave podvojného účtovníctva, tabuľka č. 1 sa nevypĺňa; vypĺňajú sa len r. 41 až 46 a 61 až 65.Ak daňovník s príjmami podľa § 6 ods. 1 a 2 alebo ods. 3 alebo ods. 4 zákona účtuje v sústave jednoduchého účtovníctva, vypĺňajú sa tieto riadky, len ak sa podáva dodatočné daňové priznanie, alebo ak sa podáva daňové priznanie po skončení podnikania alebo inej samostatnej zárobkovej činnosti alebo prenájmu a postupuje sa podľa § 32 ods. 12 zákona, okrem pripočítateľných položiek, ktoré súvisia s úpravami ustanovenými v § 17 ods. 19 písm. h) a ods. 34 a 35, § 19 ods. 3 písm. n) a § 21 ods. 1 písm. h) treťom bode zákona, ktoré sa uvádzajú v r. 43 a 63 a odpočítateľnej položky podľa § 17 ods. 37 zákona, ktorá sa uvádza v r. 44 a 64.Výdavky uvedené v § 17 ods. 19 písm. h) a ods. 34 a 35, § 19 ods. 3 písm. n) a § 21 ods. 1 písm. h) treťom bode zákona sú v plnej výške súčasťou základu dane, pričom suma prevyšujúca výšku daňových výdavkov vypočítaných podľa uvedených ustanovení zákona sa uvádza v r. 43 a 63.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>13) Vo výške 50 % sumy uvedenej v r. 45 pre rok 2020; vo výške 50 % [alebo 100%, ak daňovník spĺňa podmienky pre mikrodaňovníka podľa § 2 písm. w) zákona] sumy uvedenej v r. 45 pre roky 2021, 2022, 2023 a 2024. Maximálne však do sumy zodpovedajúcej rozdielu súm uvedených v r. 2 a r. 3 stĺpca 47 pre rok 2020, stĺpca 48 rok 2021 a stĺpca 49 rok 2022, stĺpca 50 pre rok 2023 a pre rok 2024 maximálne do sumy uvedenej v r. 2 stĺpca 50a.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd6_Tab1">
    			<fo:block background-color='black' color='white'>Tabuľka č. 1 - prehľad príjmov a výdavkov podľa § 6 zákona (vypĺňa sa, len ak daňovník účtuje v sústave jednoduchého účtovníctva alebo uplatňuje výdavky percentom z príjmov, alebo vedie evidenciu podľa § 6 ods. 11 zákona)</fo:block><fo:block color='white'>|</fo:block>
				<fo:block text-align='justify'>V r. 5 sa uvedú aj príjmy z vydávania, rozmnožovania a rozširovania literárnych diel a iných diel na vlastné náklady. Príjmy z vytvorenia diela a podania umeleckého výkonu zo zdrojov na území Slovenskej republiky sa uvedú v r. 5 len vtedy, ak sa daňovník v súlade so znením § 43 ods. 14 zákona vopred písomne dohodol s platiteľom dane, že sa z nich nevyberie daň zrážkou podľa § 43 zákona.</fo:block><fo:block color='white'>|</fo:block>		<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z poľnohospodárskej výroby, lesného a vodného hospodárstva /ods. 1 písm. a)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_1/t1R1S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_1/t1R1S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='60px'/><fo:table-column column-width='60px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>zo živnosti /ods. 1 písm. b)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_2/t1R2S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_2/t1R2S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z podnikania vykonávaného podľa osobitných predpisov /ods. 1 písm. c)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_3/t1R3S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_3/t1R3S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>spoločníkov v. o. s. a komplementárov kom. spol. /ods. 1 písm. d)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_4/t1R4S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_4/t1R4S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_5">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='164px'/><fo:table-column column-width='164px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>5</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z vytvorenia diela a z podania umeleckého výkonu, pri ktorých daňovník uplatnil postup podľa § 43 ods. 14 zákona a z vydávania, rozmnožovania a rozširovania diel na vlastné náklady a z vytvorenia alebo zhotovenia iného predmetu duševného vlastníctva a z použitia iného predmetu duševného vlastníctva alebo z postúpenia práv k predmetu duševného vlastníctva  /ods. 2 písm. a)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_5/t1R5S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_5/t1R5S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_6">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='151px'/><fo:table-column column-width='151px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>6</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z činností, ktoré nie sú živnosťou ani podnikaním /ods. 2 písm. b) </fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_6/t1R6S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_6/t1R6S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_7">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>7</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>znalcov a tlmočníkov za činnosť podľa osobitného predpisu /ods. 2 písm. c)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_7/t1R7S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_7/t1R7S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_8">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>8</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z činností sprostredkovateľov, ktoré nie sú živnosťou /ods. 2 písm. d)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_8/t1R8S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_8/t1R8S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_9">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='79px'/><fo:table-column column-width='79px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>9</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z činnosti športovca alebo športového odborníka podľa osobitného predpisu11a) vrátane príjmov na základe zmluvy o sponzorstve v športe /ods. 2 písm. e)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_9/t1R9S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_9/t1R9S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_10">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='79px'/><fo:table-column column-width='79px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>10</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>spolu r. 1 až 9</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_10/t1R10S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_10/t1R10S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='59px'/><fo:table-column column-width='59px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>11</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z prenájmu nehnuteľností /ods. 3</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_11/t1R11S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_11/t1R11S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_12">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='59px'/><fo:table-column column-width='59px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>12</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z použitia diela a umeleckého výkonu, ak nepatria do príjmov podľa § 6 ods. 2 písm. a) zákona uvádzaných v r. 511a)  /ods. 4</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_12/t1R12S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_12/t1R12S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1_13">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='95px'/><fo:table-column column-width='95px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>13</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>spolu r. 11 a 12</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_13/t1R13S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_Tab1_13/t1R13S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Commenty">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>11a) Uvádzajú sa príjmy podľa § 6 ods. 2 písm. a), e) a ods. 4 zákona, pri ktorých daňovník uplatnil postup podľa § 43 ods. 14 zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Súčasťou príjmov a výdavkov v r. 1 až 9, 11 a 12 sú aj príjmy zo zdrojov v zahraničí a výdavky súvisiace s týmito príjmami, pričom údaje o príjmoch zo zdrojov v zahraničí a výdavkoch s nimi súvisiacich sa uvádzajú v XIII. oddiele.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Ak ide o spoločníka v.o.s. a komplementára kom. spol., uvádza sa v tejto tabuľke v r. 4 v stĺ. 1 časť základu dane pripadajúca na spoločníka alebo komplementára. Ak v.o.s. alebo kom. spol. vykázala daňovú stratu, časť tejto straty pripadajúca na spoločníka alebo komplementára sa uvádza v r. 4 v stĺ. 2. V r. 4 v stĺ. 2 sa uvádzajú aj poistné a príspevky. Ak je daňovník spoločníkom v.o.s. alebo komplementárom kom. spol., uvádza sa v XIII. oddiele názov spoločnosti, DIČ a výška podielu spoločníka v percentách.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>V stĺ. 1 súčasťou príjmov v r. 1 až 9, 11 a 12 je aj podiel pripadajúci na daňovníka, ktorý dosiahol spoločne s ďalším daňovníkom alebo s viacerými daňovníkmi z dôvodu spoluvlastníctva k veci alebo zo spoločných práv (§ 10 ods. 1 zákona), pričom údaje o týchto daňovníkoch sa uvádzajú v XIII. oddiele; rovnako sa tu uvádza aj príjem pripadajúci na daňovníka, ktorý dosiahol pri spoločnom podnikaní alebo zo spoločnej inej samostatnej zárobkovej činnosti na základe písomnej zmluvy o združení (účastník združenia). Ak ide o účastníka združenia, uvádza sa celková suma spoločne dosiahnutých príjmov a vynaložených výdavkov v XIII. oddiele, pričom súčasne s daňovým priznaním sa predloží aj kópia zmluvy o združení; toto neplatí, ak bola už správcovi dane predložená. V stĺ. 2 sa uvádzajú výdavky. Ak daňovník uplatňuje podľa § 19 zákona daňové výdavky, môžu sa uviesť úhrnom v r. 10, ak sa vzťahujú len k príjmom uvedeným v r. 1 až 9; ak daňovník uplatňuje výdavky percentom z príjmov podľa § 6 ods. 10 zákona, neuvádza sa v stĺ. 2 suma výdavku pri jednotlivých druhoch príjmov uvedených v stĺ. 1 v r. 1 až 9, ale výdavky sa uvedú úhrnom vrátane preukázateľnej výšky zaplateného poistného a príspevkov v r. 10 stĺ. 2. Preukázateľné výdavky, ktoré daňovník uplatňuje pri príjmoch uvedených v r. 11, sa uvádzajú v tomto riadku maximálne do výšky príjmov. Rovnako sa postupuje aj pri príjmoch uvedených v r. 12. Ak daňovník pod tabuľkou č. 1 uvádza preukázateľne zaplatené poistné z príjmov podľa § 6 ods. 1 a 2 zákona, uvádza sa nielen, ak sa uplatňujú preukázateľné výdavky na základe jednoduchého účtovníctva alebo z evidencie podľa § 6 ods. 11 zákona alebo výdavky percentom z príjmov podľa § 6 ods. 10 zákona, ale aj, ak sa uplatňujú preukázateľné výdavky na základe podvojného účtovníctva.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_ods6zak11">
    			
						<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./secPomocnaUplatnujem">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatňujem preukázateľné výdavky z daňovej evidencie podľa § 6 ods. 11 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 1 a 2 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_ods6zak11/secPomocnaUplatnujem/cbPriPrijmoch11Ods6Zak1a2[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 4 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_ods6zak11/secPomocnaUplatnujem/cbPriPrijmoch11Ods6Zak4[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 3 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_ods6zak11/secPomocnaUplatnujem/cbPriPrijmoch11Ods6Zak3[text()='1']">
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
				<xsl:for-each select="./Odd6_ods6zak10">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='190px'/><fo:table-column column-width='190px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatňujem výdavky percentom z príjmov podľa § 6 ods. 10 zákona</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 1 a 2 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_ods6zak10/cbPriPrijmoch10Ods6Zak1a2[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 4 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_ods6zak10/cbPriPrijmoch10Ods6Zak4[text()='1']">
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
				<xsl:for-each select="./Odd6_PreukazatelneOds6Zak1a2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='170px'/><fo:table-column column-width='170px'/><fo:table-column column-width='101px'/><fo:table-column column-width='101px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Preukázateľne zaplatené poistné z príjmov podľa § 6 ods. 1 a 2 zákona</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_PreukazatelneOds6Zak1a2/tbPrekazatenePoistne'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_UplatnenieOds17Zak17">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatňujem osobitný spôsob zahrnovania kurzových rozdielov do základu dane podľa § 17 ods. 17 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 1 a 2 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_UplatnenieOds17Zak17/cbPriPrijmoch17Ods6Zak1a2[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 3 a 4 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Odd6_UplatnenieOds17Zak17/cbPriPrijmoch17Ods6Zak3a4[text()='1']">
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
				<xsl:for-each select="./Sek_uplatnu1717_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Ukončujem uplatňovanie osobitného spôsobu zahrnovania kurzových rozdielov do základu dane podľa § 17 ods. 17 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 1 a 2 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Sek_uplatnu1717_2/cbUkoncPriPrijmoch17Ods6Zak1a2[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 3 a 4 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1/Sek_uplatnu1717_2/cbUkoncPriPrijmoch17Ods6Zak3a4[text()='1']">
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
				<xsl:for-each select="./Odd6_Tab1a">
    			<fo:block background-color='black' color='white'>Tabuľka č. 1a - Údaje daňovníka s príjmami z podnikania, z inej samostatnej zárobkovej činnosti, z prenájmu a z použitia diela a umeleckého výkonu z daňovej evidencie podľa § 6 ods. 11 zákona a daňovníka s príjmami z prenájmu a z použitia diela a umeleckého výkonu z účtovníctva podľa § 6 ods. 13 zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd6_Tab1a_R">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>R.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Druh</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>1 - Na začiatku zdaňovacieho obdobia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>2 - Na konci zdaňovacieho obdobia</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1a_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Zostatková cena hmotného majetku zaradeného do obchodného majetku</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_1/t1aR1S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_1/t1aR1S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1a_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Zostatková cena nehmotného majetku zaradeného do obchodného majetku</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_2/t1aR2S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_2/t1aR2S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1a_3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Zásoby</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_3/t1aR3S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_3/t1aR3S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1a_4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Pohľadávky</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_4/t1aR4S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_4/t1aR4S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1a_5">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>5.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Záväzky</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_5/t1aR5S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_5/t1aR5S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1a_6">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>6</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Finančný majetok</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_6/t1aR6S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1a/Odd6_Tab1a_6/t1aR6S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1b">
    			<fo:block background-color='black' color='white'>Tabuľka č. 1b - Údaje daňovníka s príjmami z podnikania, z inej samostatnej zárobkovej činnosti, z použitia diela a umeleckého výkonu z evidencie, ktorú vedie podľa § 6 ods. 10 zákona, ak uplatňuje výdavky percentom z príjmov</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd6_Tab1b_R">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>R.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Druh</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>1 - Na začiatku zdaňovacieho obdobia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>2 - Na konci zdaňovacieho obdobia</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1b_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Zásoby</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1b/Odd6_Tab1b_1/t1bR1S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1b/Odd6_Tab1b_1/t1bR1S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Tab1b_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Pohľadávky</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1b/Odd6_Tab1b_2/t1bR2S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Tab1b/Odd6_Tab1b_2/t1bR2S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_PrijmyTb1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Príjmy z tabuľky č. 1, stĺ. 1, r. 10</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>39</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_PrijmyTb1/t39'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_VydavkyTb1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výdavky z tabuľky č. 1, stĺ. 2, r.10</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>40</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_VydavkyTb1/t40'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_ZiskZD">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='5px'/><fo:table-column column-width='5px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane (kladný rozdiel r. 39 a r. 40); výsledok hospodárenia (zisk)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>41</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>+</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_ZiskZD/t41'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_Strata">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='5px'/><fo:table-column column-width='5px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Strata (záporný rozdiel r. 39 a r. 40); výsledok hospodárenia (strata)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>42</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>-</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_Strata/t42'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_ZvysenieZD">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Položky zvyšujúce základ dane (znižujúce stratu) 12) [§ 17 až § 17b , § 17d, § 19 ods. 3 písm. n) a § 21 ods. 1 písm. h) tretí bod zákona]</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>43</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_ZvysenieZD/t43'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_ZnizenieZD">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Položky znižujúce základ dane (zvyšujúce stratu)12) (§17 až § 17b a § 17d zákona)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>44</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_ZnizenieZD/t44'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratyPredchZdanObdobia52">
    			<fo:block background-color='black' color='white'>Daňová strata uplatňovaná podľa § 30, § 52zza ods. 16 a § 52zzb ods. 5 zákona</fo:block><fo:block color='white'>|</fo:block>
						<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec2Riadok2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma vykázanej daňovej straty</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia52/Odd6_StratySec2Riadok2/R2_47'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia52/Odd6_StratySec2Riadok2/R2_48'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec2Riadok3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma daňovej straty odpočítaná v predchádzajúcichzdaňovacích obdobiach</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia52/Odd6_StratySec2Riadok3/R3_47'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia52/Odd6_StratySec2Riadok3/R3_48'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec2Riadok4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma daňovej straty, ktorá môže byť odpočítavaná podľa § 30,§ 52zza ods. 16 a § 52zzb ods. 5 zákona13)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia52/Odd6_StratySec2Riadok4/R4_47'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia52/Odd6_StratySec2Riadok4/R4_48'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratyPredchZdanObdobia51">
    			
						<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec3Riadok2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma vykázanej daňovej straty</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia51/Odd6_StratySec3Riadok2/R2_49'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia51/Odd6_StratySec3Riadok2/R2_50'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec3Riadok3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma daňovej straty odpočítaná v predchádzajúcichzdaňovacích obdobiach</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia51/Odd6_StratySec3Riadok3/R3_49'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia51/Odd6_StratySec3Riadok3/R3_50'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec3Riadok4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma daňovej straty, ktorá môže byť odpočítavaná podľa § 30,§ 52zza ods. 16 a § 52zzb ods. 5 zákona13)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia51/Odd6_StratySec3Riadok4/R4_49'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia51/Odd6_StratySec3Riadok4/R4_50'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratyPredchZdanObdobia50">
    			
						<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec4Riadok2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma vykázanej daňovej straty</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia50/Odd6_StratySec4Riadok2/R2_50a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec4Riadok3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma daňovej straty odpočítaná v predchádzajúcichzdaňovacích obdobiach</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_StratySec4Riadok4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma daňovej straty, ktorá môže byť odpočítavaná podľa § 30,§ 52zza ods. 16 a § 52zzb ods. 5 zákona13)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_StratyPredchZdanObdobia50/Odd6_StratySec4Riadok4/R4_50a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_UplatnenieStraty">
    			<fo:block background-color='black' color='white'>Uplatnenie daňovej straty z predchádzajúcich zdaňovacích období v príslušnom zdaňovacom období</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd6_51">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='221px'/><fo:table-column column-width='221px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatnenie daňovej straty vykázanej za rok 2020, najviac do sumy uvedenej v r. 4 stĺpec 47, maximálne však do sumy uvedenej v r. 45</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>51</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_UplatnenieStraty/Odd6_51/t51'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_52">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='221px'/><fo:table-column column-width='221px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatnenie daňovej straty vykázanej za rok 2021, najviac do sumy uvedenej v r. 4 stĺpec 48, maximálne však do sumy zodpovedajúcej kladnému rozdielu súm uvedených v r. 45 a r. 51</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>52</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_UplatnenieStraty/Odd6_52/t52'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_53">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='221px'/><fo:table-column column-width='221px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatnenie daňovej straty vykázanej za rok 2022, najviac do sumy uvedenej v r. 4 stĺpec 49, maximálne všakdo sumy zodpovedajúcej kladnému rozdielu sumy uvedenej v r.45 a súm na (r. 51+ r.52)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>53</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_UplatnenieStraty/Odd6_53/t53'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_54">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='221px'/><fo:table-column column-width='221px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatnenie daňovej straty vykázanej za rok 2023, najviac do sumy uvedenej v r. 4 stĺpec 50, maximálne však do sumy zodpovedajúcej kladnému rozdielu sumy uvedenej v r. 45 a súm na (r.51 + r. 52 + r.53)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>54</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_UplatnenieStraty/Odd6_54/t54'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_54a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='221px'/><fo:table-column column-width='221px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatnenie daňovej straty vykázanej za rok 2024, najviac do sumy uvedenej v r. 4 stĺpec 50a, maximálne však do sumy zodpovedajúcej kladnému rozdielu sumy uvedenej v r. 45 a súm na (r. 51 + r. 52 + r. 53 + r. 54)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>54a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_UplatnenieStraty/Odd6_54a/t54a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_55">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='221px'/><fo:table-column column-width='221px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Znížený čiastkový základ dane z príjmov podľa § 6 ods. 1 a 2 zákona o stratu z predchádzajúcich zdaňovacích období (r. 45 - r. 51 - r.52 - r. 53 - r. 54 - r. 54a)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>55</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_UplatnenieStraty/Odd6_55/t55'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_UplatenieVydavkov">
    			<fo:block background-color='black' color='white'>Uplatnenie odpočtu výdavkov (nákladov) na výskum a vývoj podľa § 30c zákona, na investície podľa § 30e zákona a na podporu športu podľa § 30ca zákona  (vypĺňa sa aj príloha č. 1, resp. aj príloha č. 1b, resp. aj príloha č. 1c)</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd6_56">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='221px'/><fo:table-column column-width='221px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Odpočet výdavkov (nákladov) na výskum a vývoj podľa § 30c zákona a na investície podľa § 30e zákona a na podporu športu podľa § 30ca zákona maximálne do sumy uvedenej v r. 55 (r. 9 prílohy č. 1 + r. 11 prílohy č. 1b+ r. 8 prílohy č. 1c)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>56</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_UplatenieVydavkov/Odd6_56/t56'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_57">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='221px'/><fo:table-column column-width='221px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane (čiastkový základ dane) z príjmov podľa § 6 ods. 1 a 2 zákona znížený o odpočet výdavkov (nákladov) na výskum a vývoj a na investície a na podporu športu (r. 55 - r. 56)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>57</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_UplatenieVydavkov/Odd6_57/t57'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_58">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Príjmy z tabuľky č. 1, stĺ. 1, r. 13</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>58</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_58/t58'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_59">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výdavky z tabuľky č. 1, stĺ. 2, r. 13</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>59</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_59/t59'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_60">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='5px'/><fo:table-column column-width='5px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane (rozdiel r. 58 a r. 59)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>60</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>+</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_60/t60'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_61">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='5px'/><fo:table-column column-width='5px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výsledok hospodárenia (zisk) 12)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>61</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>+</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_61/t61'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_62">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='5px'/><fo:table-column column-width='5px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výsledok hospodárenia (strata) 12)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>62</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>-</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_62/t62'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_63">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Položky zvyšujúce základ dane (znižujúce stratu)  12)  [§ 17 až § 17b , § 17d, § 19 ods. 3 písm. n) a § 21 ods. 1 písm. h) tretí bod zákona]</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>63</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_63/t63'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd6_64">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Položky znižujúce základ dane (zvyšujúce stratu)12) (§17 až § 17b a § 17d zákona)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>64</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_6oddiel/Odd6_64/t64'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_7oddiel">
    			<fo:block background-color='black' color='white'>VII. ODDIEL - VÝPOČET OSOBITNÉHO ZÁKLADU DANE Z PRÍJMOV Z KAPITÁLOVÉHO MAJETKU (§ 7 zákona) - v eurách</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd7_Tab2">
    			<fo:block background-color='black' color='white'>Tabuľka č. 2 - prehľad príjmov a výdavkov podľa § 7 zákona14)</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='431px'/><fo:table-column column-width='431px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>14) Ak bol daňovník povinný v súvislosti s poberaním príjmov uvádzaných v r. 1 až 3, 6, 8 až 10 platiť poistné na verejné zdravotné poistenie podľa zákona č. 580/2004 Z.z. o zdravotnom poistení a o zmene a doplnení zákona č. 95/2002 Z.z. o poisťovníctve a o zmene a doplnení niektorých zákonov v znení neskorších predpisov (ďalej len „zákon o zdravotnom poistení“), uplatňuje sa preukázateľne zaplatené poistné na verejné zdravotné poistenie ako výdavok k týmto príjmom v stĺ. 2. V stĺ. 2 v r. 1 až 3, 6, 8 až 10 sa uvádza len toto preukázateľne zaplatené poistné na verejné zdravotné poistenie, pričom žiadne iné výdavky sa v týchto riadkoch v stĺ. 2 neuvádzajú. Ak bol daňovník povinný v súvislosti s poberaním príjmov uvádzaných v r. 4, 5 a 7 platiť poistné na verejné zdravotné poistenie podľa zákona o zdravotnom poistení, preukázateľne zaplatené poistné na verejné zdravotné poistenie sa uplatňuje ako súčasť výdavkov k týmto príjmom v stĺ. 2.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>15) Neuvádzajú sa príjmy z podielových listov dosiahnuté z ich vyplatenia (vrátenia) obstaraných do 31. decembra 2003, na ktoré sa uplatňuje oslobodenie od dane podľa § 52b ods. 11 v súlade s § 52 ods. 20 zákona. Ak výdavky v r. 7 v stĺ. 2 sú vyššie ako príjem v stĺ. 1 v tomto riadku, uvádzajú sa tieto výdavky len do výšky príjmov (r. 7 stĺ. 1 = r. 7 stĺ. 2).</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>15a) Okrem výnosov (príjmov) zo štátnych dlhopisov a štátnych pokladničných poukážok, ktoré sa zahrnujú do osobitného základu dane podľa § 51ea zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>V tabuľke č. 2 stĺ. 1 súčasťou príjmov v r. 1 až 10 je aj podiel pripadajúci na daňovníka, ktorý dosiahol spoločne s ďalším daňovníkom alebo s viacerými daňovníkmi z dôvodu spoluvlastníctva k veci alebo zo spoločných práv alebo bezpodielového spoluvlastníctva manželov (§ 10 ods. 1 zákona a § 7 ods. 9 zákona). Údaje o týchto daňovníkoch sa uvádzajú v XIII. oddiele. Súčasťou príjmov v r. 1 až 10 sú aj príjmy zo zdrojov v zahraničí, pričom údaje o týchto príjmoch sa uvádzajú v XIII. oddiele. Súčasťou príjmov uvádzaných v tabuľke č. 2 nie sú príjmy dosahované na území Slovenskej republiky, pri ktorých sa daň vyberá zrážkou, okrem príjmov uvedených v § 43 ods. 6 zákona.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>úroky a ostatné výnosy z cenných papierov /ods. 1 písm. a)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_1/t2R1S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_1/t2R1S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='163px'/><fo:table-column column-width='163px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>úroky, výhry a iné výnosy z vkladov na vkladných knižkách, z peňažných prostriedkov na vkladovom účte, na účte stavebného sporiteľa a z bežného účtu okrem úrokov uvedených v § 6 ods. 5 písm. b) zákona /ods. 1 písm. b)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_2/t2R2S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_2/t2R2S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='135px'/><fo:table-column column-width='135px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>úroky a iné výnosy z poskytnutých úverov a pôžičiek a úroky z hodnoty splateného vkladu v dohodnutej výške spoločníkov verejných obchodných spoločností /ods. 1 písm. c)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_3/t2R3S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_3/t2R3S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>dávky z celoeurópskeho osobného dôchodkového produktu a dávky z doplnkového dôchodkového sporenia /ods. 1 písm. d)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_4/t2R4S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_4/t2R4S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_5">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='143px'/><fo:table-column column-width='143px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>5</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>plnenia z poistenia pre prípad dožitia určitého veku; jednorazové vyrovnanie alebo odbytné vyplácané v prípade poistenia osôb pri predčasnom skončení poistenia /ods. 1 písm. e)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_5/t2R5S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_5/t2R5S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_6">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='151px'/><fo:table-column column-width='151px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>6</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>výnosy zo zmeniek okrem príjmov z ich predaja/ods. 1 písm. f)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_6/t2R6S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_6/t2R6S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_7">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>7</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>príjmy z podielových listov dosiahnuté z ich vyplatenia (vrátenia) 15) /ods. 1 písm. g)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_7/t2R7S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_7/t2R7S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_8">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>8</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>výnosy zo štátnych dlhopisov a štátnych pokladničných poukážok 15a)/ods. 1 písm. h)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_8/t2R8S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_8/t2R8S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_9">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='174px'/><fo:table-column column-width='174px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>9</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>výnos, ktorý vzniká pri splatnosti cenného papiera z rozdielu medzi menovitou hodnotou cenného papiera a emisným kurzom pri jeho vydaní /ods. 2</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_9/t2R9S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_9/t2R9S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_10">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='37px'/><fo:table-column column-width='37px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>10</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>rozdiel medzi menovitou hodnotou dlhopisu alebo pokladničnej poukážky a nižšou obstarávacou cenou /ods. 3</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_10/t2R10S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_10/t2R10S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='59px'/><fo:table-column column-width='59px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>11</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>spolu r. 1 až 10</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_11/t2R11S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_11/t2R11S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_Tab2_12">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='168px'/><fo:table-column column-width='168px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>12</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>príjmy dosiahnuté z vyplatenia (vrátenia) podielových listov obstaraných do 31. decembra 2003, na ktoré sa uplatňuje oslobodenie od dane podľa § 52b ods. 11 zákona v súlade s § 52 ods. 20 zákona</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_Tab2/Odd7_Tab2_12/t2R12S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_66">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Príjmy z tabuľky č. 2, r. 11, stĺ. 1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>66</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_66/t66'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_67">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výdavky z tabuľky č. 2, r. 11, stĺ. 2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>67</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_67/t67'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd7_68">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Osobitný základ dane podľa § 7 zákona (r. 66 - r. 67, ak je tento rozdiel záporný, uvádza sa v r. 68 nula)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>68</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_7oddiel/Odd7_68/t68'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_8oddiel">
    			<fo:block background-color='black' color='white'>VIII. ODDIEL - VÝPOČET ZÁKLADU DANE (čiastkového základu dane) Z OSTATNÝCH PRÍJMOV (§ 8 zákona) - v eurách</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd8_Tab3">
    			<fo:block background-color='black' color='white'>Tabuľka č. 3 - prehľad príjmov podľa § 8 zákona</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='442px'/><fo:table-column column-width='442px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>16) Ak sú výdavky v r. 1 až 16 v stĺ. 2 vyššie ako príjem v týchto riadkoch, uvádzajú sa tieto výdavky len do výšky príjmov. V r. 17 sa uvádzajú výdavky len do výšky každého jednotlivého druhu príjmu, ak ide o príjem neuvedený v r. 1 až 16. Ak bol daňovník v súvislosti s poberaním týchto príjmov povinný platiť poistné na verejné zdravotné poistenie podľa zákona o zdravotnom poistení, súčasťou jeho výdavkov je aj preukázateľne zaplatené zdravotné poistenie.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>17) Ak daňovník vložil do obchodnej spoločnosti alebo družstva nepeňažný vklad, uvádza sa v tomto riadku kladný rozdiel medzi vyššou hodnotou nepeňažného vkladu započítanou na vklad spoločníka a hodnotou vkladaného majetku, v tom zdaňovacom období, v ktorom došlo k splateniu nepeňažného vkladu alebo pomerná časť tohto rozdielu, ak sa rozhodol tento zahrnovať do základu dane (čiastkového základu dane) podľa § 8 ods. 2 zákona postupne. Ak bol daňovník v súvislosti s poberaním tohto príjmu povinný platiť odvody na zdravotné poistenie, príjem v r. 18 v stĺ. 1 sa zníži o preukázateľne zaplatené zdravotné poistenie. Pri postupnom zahrnovaní tohto rozdielu do základu dane sa uvedie v oddiele XIII. kalendárny rok, v ktorom došlo k poskytnutiu nepeňažného vkladu a celková výška rozdielu zahrnovaného do základu dane.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>V tabuľke č. 3 stĺ. 1 súčasťou príjmov v r. 1 až 17 sú aj príjmy zo zdrojov v zahraničí, pričom údaje o týchto príjmoch sa uvedú v XIII. oddiele. Rovnako súčasťou týchto príjmov je aj podiel pripadajúci na daňovníka, ktorý dosiahol spoločne s ďalším daňovníkom alebo s viacerými daňovníkmi z dôvodu spoluvlastníctva alebo zo spoločných práv (§ 10 ods. 1 zákona). Údaje o týchto daňovníkoch sa uvádzajú v XIII. oddiele. Podľa § 8 ods. 2 zákona, ak sú výdavky spojené s jednotlivým druhom príjmu (v r. 1 až 17) vyššie ako príjem, na rozdiel sa neprihliada.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z príležitostných činností vrátane príjmov z príležitostnej poľnohospodárskej výroby, lesného a vodného hospodárstva a z príležitostného prenájmu hnuteľných vecí /ods. 1 písm. a)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_1/t3R1S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_1/t3R1S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='163px'/><fo:table-column column-width='163px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z prevodu vlastníctva nehnuteľností /ods. 1 písm. b)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_2/t3R2S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_2/t3R2S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='60px'/><fo:table-column column-width='60px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z predaja hnuteľných vecí /ods. 1 písm. c)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_3/t3R3S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_3/t3R3S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='60px'/><fo:table-column column-width='60px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z prevodu opcií /ods. 1 písm. d)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_4/t3R4S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_4/t3R4S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_5">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='60px'/><fo:table-column column-width='60px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>5</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z prevodu cenných papierov /ods. 1 písm. e)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_5/t3R5S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_5/t3R5S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_6">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='151px'/><fo:table-column column-width='151px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>6</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z prevodu účasti (podielu) na s. r. o., kom. spol. alebo z prevodu členských práv družstva /ods. 1 písm. f)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_6/t3R6S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_6/t3R6S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_7">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='146px'/><fo:table-column column-width='146px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>7</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>zo zdedených práv z priemyselného a iného duševného vlastníctva vrátane autorských práv a práv príbuzných autorskému právu /ods. 1 písm. g)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_7/t3R7S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_7/t3R7S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_8">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='174px'/><fo:table-column column-width='174px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>8</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>dôchodky a podobné opakujúce sa požitky /ods. 1 písm. h)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_8/t3R8S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_8/t3R8S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_9">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='72px'/><fo:table-column column-width='72px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>9</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>výhry a ceny /ods. 1 písm. i) a j)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_9/t3R9S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_9/t3R9S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_10">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='60px'/><fo:table-column column-width='60px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>10</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>príjmy z derivátových operácií /ods. 1 písm. k)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_10/t3R10S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_10/t3R10S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='60px'/><fo:table-column column-width='60px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>11</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>peňažné plnenie a nepeňažné plnenie prijaté pri výkone klinického skúšania /ods. 1 písm. l)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_11/t3R11S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_11/t3R11S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_12">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='60px'/><fo:table-column column-width='60px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>12</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>náhrada nemajetkovej ujmy, okrem náhrady nemajetkovej ujmy, ktorá bola spôsobená trestným činom /ods. 1 písm. n)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_12/t3R12S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_12/t3R12S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_13">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='112px'/><fo:table-column column-width='112px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>13</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>na základe zmluvy o sponzorstve v športe, prijaté športovcom podľa osobitného predpisu/ods. 1 písm. p)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_13/t3R13S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_13/t3R13S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_14">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='172px'/><fo:table-column column-width='172px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>14</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>náhrada za stratu času dobrovoľníka zapísaného v informačnom systéme športu podľa osobitného predpisu/ods. 1 písm. r)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_14/t3R14S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_14/t3R14S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_15">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='172px'/><fo:table-column column-width='172px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>15</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>príjmy z prerozdelenia kapitálového fondu z príspevkov/ods. 1 písm. s)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_15/t3R15S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_15/t3R15S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_16">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='172px'/><fo:table-column column-width='172px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>16</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>príjmy z predaja kryptoaktíva/ods. 1 písm. t)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_16/t3R16S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_16/t3R16S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_17">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='112px'/><fo:table-column column-width='112px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>17</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>iné</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_17/t3R17S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_17/t3R17S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_18">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='172px'/><fo:table-column column-width='172px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>18</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>kladný rozdiel medzi vyššou hodnotou nepeňažného vkladu započítanou na vklad spoločníka a hodnotou vkladaného majetku17) /ods. 2</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_18/t3R18S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_Tab3_19">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='11px'/><fo:table-column column-width='11px'/><fo:table-column column-width='59px'/><fo:table-column column-width='59px'/><fo:table-column column-width='126px'/><fo:table-column column-width='126px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>19</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Spolu r. 1 až 18</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_19/t3R19S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_Tab3/Odd8_Tab3_19/t3R19S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_69">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Príjmy z tabuľky č. 3, r. 19, stĺ. 1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>69</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_69/t69'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_70">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='153px'/><fo:table-column column-width='153px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výdavky z tabuľky č. 3, r. 19, stĺ. 2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>70</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_70/t70'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd8_71">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='56px'/><fo:table-column column-width='56px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane (čiastkový základ dane) (r. 69 - r. 70)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>71</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_8oddiel/Odd8_71/t71'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_9oddiel">
    			<fo:block background-color='black' color='white'>IX. ODDIEL - VÝPOČET DANE podľa § 15 zákona - v eurách</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>18) Daňovník uvedie sumu príspevkov len na r. 79 alebo len r. 93 alebo ju rozdelí a uvedie časť na r. 79 a časť na r. 93.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>19) V r. 95 uvedie daňovník všetky zdaniteľné príjmy, o ktorých účtuje v sústave jednoduchého účtovníctva alebo vedie evidenciu podľa § 6 ods. 10 a 11 aj keď nie sú súčasťou základu dane (čiastkového základu dane) z príjmov podľa § 6 ods. 1 a 2 zákona. Ak daňovník účtuje v sústave podvojného účtovníctva uvedie v r. 95 všetky výnosy, ktoré sú predmetom dane a nie sú od dane oslobodené.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>20a) Vypĺňa sa, len ak daňovník postupuje podľa § 33 ods. 8 zákona..</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>20) Ak daňovník neuplatňuje nárok na daňový bonus podľa zákona (r. 117) alebo daňový bonus na zaplatené úroky podľa § 33a zákona (r. 123) a výsledná suma dane nepresiahne 17 eur alebo ak daňovník neuplatňuje nárok na daňový bonus podľa zákona (r. 117) alebo daňový bonus na zaplatené úroky podľa § 33a zákona (r. 123) a jeho celkové zdaniteľné príjmy nepresiahnu 50 % sumy podľa § 11 ods. 2 písm. a) zákona alebo ide o daňovníka uvedeného v § 11 ods. 6 zákona, ktorý uplatňuje postup podľa § 46a zákona, v r. 116 sa uvádza nula.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>21) Ak sa uplatňuje daňový bonus podľa  zákona, uvádza sa suma daňového bonusu na jedno dieťa alebo úhrn súm na viac detí (podľa údajov uvedených v III. a XIII. oddiele).</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>22) Ak je suma v r. 117 vyššia ako suma v r. 116, uvádza sa nula.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>23) Ak je v r. 121 suma daňového bonusu podľa zákona na vyplatenie správcom dane alebo kladná suma v r. 142, vypĺňa sa žiadosť o jej vyplatenie v XIV. oddiele.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>24) Ak daňovník uplatňuje daňový bonus na zaplatené úroky a zmluvu o úvere na bývanie uzavrel najneskôr do 31.12.2023, daňovým bonusom na zaplatené úroky je suma vo výške 50% zo zaplatených úrokov v príslušnom zdaňovacom období, najviac však do výšky 400 eur za rok. Ak daňovník uplatňuje daňový bonus na zaplatené úroky a zmluvu o úvere na bývanie uzavrel najskôr po 31. 12. 2023, daňovým bonusom na zaplatené úroky je suma vo výške 50% zo zaplatených úrokov v príslušnom zdaňovacom období, najviac však do výšky 1 200 eur za rok. Ak obdobie úročenia úveru na bývanie, počas ktorého má daňovník nárok na tento daňový bonus, začalo alebo skončilo v priebehu zdaňovacieho obdobia, uvádza sa v r. 123 suma zodpovedajúca pomernej časti daňového bonusu na zaplatené úroky podľa § 33a zákona z maximálnej sumy určenej zákonom pripadajúca na počet kalendárnych mesiacov, v ktorých vznikol nárok na jeho uplatnenie.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>25) Ak je suma v r. 123 vyššia ako suma v r. 118, uvádza sa nula.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>26) Vypĺňa sa, ak bolo podané daňové priznanie po vykonaní ročného zúčtovania.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>27) Ak je v r. 127 suma daňového bonusu na zaplatené úroky podľa § 33a zákona na vyplatenie správcom dane alebo v r. 144 dodatočného daňového priznania kladné číslo, vypĺňa sa žiadosť o jej vyplatenie v XIV. oddiele.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>28) Uvádza sa len tá suma preddavku, ktorá sa vzťahuje k príjmom uvedeným v § 43 ods. 6 písm. a) až c) zákona, ktoré si daňovník priznáva v daňovom priznaní (§ 4 ods. 6 a § 7 ods. 10 zákona) okrem sumy preddavku vybranej pri vyplatení (vrátení) podielového listu obstaraného do 31.decembra 2003 podľa § 43 ods. 10 zákona (táto suma sa uvedie v r. 130). Suma preddavku vybraná u manželov sa delí v rovnakom pomere, ako si delia príjmy, ktoré si priznávajú na zdanenie v daňovom priznaní. Ak suma preddavku bola vybraná u v. o. s., uvádza sa v r. 129 len podiel z toho preddavku, ktorý je v rovnakej výške, ako si spoločníci tejto spoločnosti delia zisk. Rovnako sa postupuje aj, ak ide o komplementára kom. spol. Riadok 129 sa vypĺňa na základe kópií potvrdení o príjmoch, z ktorých sa daň vybrala podľa § 43 zákona, pri ktorých sa daňovník rozhodol vybratú daň považovať za preddavok podľa § 43 ods. 6 zákona. Kópie potvrdení sú prílohami daňového priznania.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>29) Ak sa vypĺňa r. 130, prílohou daňového priznania je aj kópia potvrdenia (potvrdení) o týchto príjmoch a o sume preddavku vybranej pri vyplatení (vrátení) podielového listu obstaraného do 31. decembra 2003 podľa § 43 ods. 10 zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>30) Preddavok (preddavky) z potvrdení (dokladov) o zdaniteľných príjmoch zo závislej činnosti, ktoré sú prílohami daňového priznania. V uvedenom riadku sa neuvádzajú preddavky zrazené podla daňových právnych predpisov platných v zahraničí, preddavky, ktoré nie sú zrazené v súlade s § 35 zákona, a tiež preddavky platené danovníkom podla § 35 ods. 10 a 11 zákona, ktoré sú uvedené v r. 134.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>31) Do tejto sumy sa uvádzajú aj preddavky, ktoré daňovník uhradil po skončení zdaňovacieho obdobia, do lehoty na podanie daňového priznania, ak sa vzťahujú k daňovej povinnosti za zdaňovacie obdobie, za ktoré sa daňové priznanie podáva. Rovnako súčasťou tejto sumy je aj preplatok použitý na úhradu preddavkov. Do tejto sumy sa nezapočítavajú preddavky platené daňovníkom na budúce zdaňovacie obdobie.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>32) Daň na úhradu sa neplatí, ak nepresiahne 5 eur, a to aj vtedy, ak daňovník využije postup podľa § 50 alebo § 50aa zákona, pričom v tomto riadku sa uvedie nula.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd9_ZnizenieZakladu">
    			<fo:block background-color='black' color='white'>Zníženie základu dane o nezdaniteľné časti podľa § 11 zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd9_72">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='168px'/><fo:table-column column-width='168px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane z príjmov podľa § 5 a § 6 ods. 1 a 2 zákona pred znížením o nezdaniteľnú časť základu dane (r. 38 + r. 57)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>72</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_ZnizenieZakladu/Odd9_72/t72'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_73">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='168px'/><fo:table-column column-width='168px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='102px'/><fo:table-column column-width='102px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>ods. 2 - na daňovníka vypočítaná zo sumy v r. 72</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>73</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_ZnizenieZakladu/Odd9_73/t73'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_74">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='168px'/><fo:table-column column-width='168px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='102px'/><fo:table-column column-width='102px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>ods. 3 - na manželku (manžela) vypočítaná zo sumy v r. 72</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>74</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_ZnizenieZakladu/Odd9_74/t74'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_75">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='168px'/><fo:table-column column-width='168px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='111px'/><fo:table-column column-width='111px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>ods. 8 - na preukázateľne zaplatené príspevky na celoeurópsky osobný dôchodkový produkt a príspevky na doplnkové dôchodkové sporenie maximálne vo výške 180 eur</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>75</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_ZnizenieZakladu/Odd9_75/t75'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_77">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='168px'/><fo:table-column column-width='168px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='111px'/><fo:table-column column-width='111px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Spolu (r. 73 + r. 74 + r.75 ) maximálne do výšky základu dane v r. 72</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>77</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_ZnizenieZakladu/Odd9_77/t77'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_78">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane z príjmov podľa § 5 po znížení o nezdaniteľnú časť (r. 38 - r. 77, ak je rozdiel r. 38 a r. 77 záporný, uvádza sa v r. 78 nula)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>78</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_78/t78'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_79">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma príspevkov alebo ich častí, o ktorú sa zvyšuje základ dane z príjmov podľa § 11 ods. 11 a § 52zza ods. 2 zákona 18)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>79</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_79/t79'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_80">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='48px'/><fo:table-column column-width='48px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane zistený podľa § 4 ods. 1 písm. a) zákona (r. 78 + r. 65 + r. 71 + r. 79)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>80</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_80/t80'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_81">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='169px'/><fo:table-column column-width='169px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zo základu dane zisteného podľa § 4 ods.1 písm. a) zákona uvedeného v riadku 80</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>81</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_81/t81'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_VypocetDane4aZahr">
    			<fo:block background-color='black' color='white'>Výpočet dane zo základu dane zisteného podľa § 4 ods. 1 písm. a) zákona po vyňatí príjmov zo zdrojov v zahraničí</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd9_82">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn vyňatých príjmov podľa  § 5, § 6 ods. 3 a 4 a § 8 zákona [základov dane (+)]</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>82</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4aZahr/Odd9_82/t82'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_83">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane znížený o úhrn vyňatých príjmov (r. 80 - r. 82) (ak je rozdiel r. 80 a r. 82 záporný, uvádza sa v r. 83 nula)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>83</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4aZahr/Odd9_83/t83'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_84">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='169px'/><fo:table-column column-width='169px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zo základu dane zisteného podľa § 4 ods. 1 písm. a) zákona po vyňatí príjmov zo zdrojov v zahraničí uvedeného v riadku 83</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>84</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_84/t84'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_VypocetDane4aTuzem">
    			<fo:block background-color='black' color='white'>Výpočet dane zo základu dane zisteného podľa § 4 ods. 1 písm a) zákona uznanej na zápočet na tuzemskú daňovú povinnosť zo zaplatenej dane v zahraničí podľa zmluvy o zamedzení dvojitého zdanenia (§ 45 ods. 1 zákona)</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd9_85">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn príjmov (základov dane) podľa § 5, § 6 ods. 3 a 4 a § 8 zákona zo zdrojov v zahraničí</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>85</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4aTuzem/Odd9_85/t85'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_86">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='158px'/><fo:table-column column-width='158px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zaplatená v zahraničí z príjmov z r. 85 - uvádza sa suma zaplatenej dane podľa zmluvy o zamedzení dvojitého zdanenia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>86</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4aTuzem/Odd9_86/t86'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_87">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='139px'/><fo:table-column column-width='139px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výpočet percenta dane na účely zápočtu r. 85 : [(r. 38 + r. 65 + r. 71 - r. 82) alebo (r. 38 + r. 65 + r. 71)] x 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>87</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4aTuzem/Odd9_87/t87'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_88">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='138px'/><fo:table-column column-width='138px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Z dane zaplatenej v zahraničí možno započítať [(r. 84 alebo r. 81) x r. 87] : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>88</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4aTuzem/Odd9_88/t88'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_89">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='136px'/><fo:table-column column-width='136px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň uznaná na zápočet (r. 88 maximálne do sumy v r. 86)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>89</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4aTuzem/Odd9_89/t89'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_90">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zo základu dane zisteného podľa § 4 ods 1. písm. a) zákona po vyňatí a zápočte (daňová povinnosť) (r. 84 alebo r. 81) alebo (r. 84 - r. 89 alebo r. 81 - r. 89)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>90</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_90/t90'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_91">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zostatok nezdaniteľnej časti základu dane z r. 77 (ak r. 78 = 0, potom r. 77 - r. 38, inak 0)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>91</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_91/t91'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_92">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane z príjmov podľa § 6 ods. 1 a 2 zákona po znížení o nezdaniteľnú časť (r. 57 - r. 91)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>92</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_92/t92'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_93">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma príspevkov alebo ich častí, o ktorú sa zvyšuje základ dane z príjmov podľa § 11 ods. 11 a § 52zza ods. 2 zákona 18)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>93</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_93/t93'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_94">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='48px'/><fo:table-column column-width='48px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane zistený podľa § 4 ods. 1 písm. b) zákona (r. 92 + r. 93)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>94</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_94/t94'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_95">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='169px'/><fo:table-column column-width='169px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zdaniteľné príjmy (výnosy) z podnikania a z inej samostatnej zárobkovej činnosti podľa § 6 ods. 1 a 2 zákona 19)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>95</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_95/t95'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_96">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='169px'/><fo:table-column column-width='169px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zo základu dane zisteného podľa § 4 ods.1 písm. b) zákona uvedeného v riadku 94</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>96</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_96/t96'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_VypocetDane4Zahr">
    			<fo:block background-color='black' color='white'>Výpočet dane zo základu dane zisteného podľa § 4 ods. 1 písm. b) zákona po vyňatí príjmov zo zdrojov v zahraničí</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd9_97">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn vyňatých príjmov podľa § 6 ods. 1 a 2 zákona [základov dane (+) a daňových strát (-)]</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>97</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4Zahr/Odd9_97/t97'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_98">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane znížený/zvýšený o úhrn vyňatých príjmov (r. 94 - r. 97) (ak je rozdiel r. 94 a 97 záporný, uvádza sa v r. 98 nula)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>98</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4Zahr/Odd9_98/t98'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_99">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='169px'/><fo:table-column column-width='169px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zo základu dane zisteného podľa § 4 ods. 1 písm. b) zákona po vyňatí príjmov zo zdrojov v zahraničí uvedeného v riadku 98</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>99</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_99/t99'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_VypocetDane4Tuzem">
    			<fo:block background-color='black' color='white'>Výpočet dane zo základu dane zisteného podľa § 4 ods. 1 písm b) zákona uznanej na zápočet na tuzemskú daňovú povinnosť zo zaplatenej dane v zahraničí podľa zmluvy o zamedzení dvojitého zdanenia (§ 45 ods. 1 zákona)</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd9_100">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn príjmov (základov dane) podľa § 6 ods. 1 a 2 zákona zo zdrojov v zahraničí</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>100</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4Tuzem/Odd9_100/t100'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_101">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='158px'/><fo:table-column column-width='158px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zaplatená v zahraničí z príjmov z r. 100 - uvádza sa suma zaplatenej dane podľa zmluvy o zamedzení dvojitého zdanenia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>101</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4Tuzem/Odd9_101/t101'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_102">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='139px'/><fo:table-column column-width='139px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výpočet percenta dane na účely zápočtu r. 100 : [(r. 57 - r. 97) alebo r. 57 ] x 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>102</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4Tuzem/Odd9_102/t102'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_103">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='138px'/><fo:table-column column-width='138px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Z dane zaplatenej v zahraničí možno započítať [(r. 99 alebo r. 96) x r. 102] : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>103</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4Tuzem/Odd9_103/t103'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_104">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='136px'/><fo:table-column column-width='136px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň uznaná na zápočet (r. 103 maximálne do sumy v r. 101)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>104</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane4Tuzem/Odd9_104/t104'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_105">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zo základu dane zisteného podľa § 4 ods 1. písm. b) zákona po vyňatí a zápočte (daňová povinnosť) (r. 99 alebo r. 96) alebo (r. 99 - r. 104 alebo r. 96 - r. 104)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>105</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_105/t105'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_106">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (19 %) z osobitného základu dane z príjmov podľa § 7 zákona uvedeného v r. 68</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>106</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_106/t106'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_VypocetDane7Zahr">
    			<fo:block background-color='black' color='white'>Výpočet dane z osobitného základu dane podľa § 7 zákona po vyňatí príjmov zo zdrojov v zahraničí</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd9_107">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn vyňatých príjmov (základov dane) podľa § 7 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>107</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane7Zahr/Odd9_107/t107'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_108">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='133px'/><fo:table-column column-width='133px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane znížený/zvýšený o úhrn vyňatých príjmov (r. 68 - r. 107) (ak je rozdiel r. 68 a r. 107 záporný, uvádza sa v r. 108 nula)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>108</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane7Zahr/Odd9_108/t108'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_109">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>109</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_109/t109'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_VypocetDane7Tuzem">
    			<fo:block background-color='black' color='white'>Výpočet dane z osobitného základu dane podľa § 7 zákona uznanej na zápočet na tuzemskú daňovú povinnosť zo zaplatenej dane v zahraničí podľa zmluvy o zamedzení dvojitého zdanenia (§ 45 ods. 1 zákona)</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd9_110">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn príjmov (základov dane) podľa § 7 zákona zo zdrojov v zahraničí</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>110</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane7Tuzem/Odd9_110/t110'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_111">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='158px'/><fo:table-column column-width='158px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zaplatená v zahraničí z príjmov uvedených v r. 110 - uvádza sa suma zaplatenej dane podľa zmluvy o zamedzení dvojitého zdanenia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>111</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane7Tuzem/Odd9_111/t111'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_112">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='139px'/><fo:table-column column-width='139px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výpočet percenta dane na účely zápočtu r. 110 : [(r. 68 - r. 107) alebo r. 68] x 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>112</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane7Tuzem/Odd9_112/t112'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_113">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='138px'/><fo:table-column column-width='138px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Z dane zaplatenej v zahraničí možno započítať [(r. 109 alebo r. 106) x r. 112] : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>113</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane7Tuzem/Odd9_113/t113'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_114">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='136px'/><fo:table-column column-width='136px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň uznaná na zápočet (r. 113 maximálne do sumy v r. 111)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>114</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_VypocetDane7Tuzem/Odd9_114/t114'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_115">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň z osobitného základu dane podľa § 7 zákona po vyňatí a zápočte (r. 109 alebo r. 106) alebo (r. 109 - r. 114 alebo r. 106 - r. 114)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>115</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_115/t115'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_116">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (daňová povinnosť) zo základu dane zisteného podľa § 4 zákona, z osobitného základu dane podľa § 7 zákona a z osobitného základu dane podľa § 51e zákona a z osobitného zákona základu dane podľa §51ea zákona  (r. 90 + r. 105 + r. 115 + r. 28 Prílohy č. 2 + r. 14 prílohy č. 3)20)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>116</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_116/t116'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_116a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Navýšený základ dane na účely výpočtu daňového bonusu podľa zákona (r. 34a / 12 × počet zaškrtnutých mesiacov v r. 34 + r. 38 + r.45)20a)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>116a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_116a/t116a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_117">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Nárok na daňový bonus  podľa zákona (na jedno dieťa alebo úhrn na viac vyživovaných detí)21)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>117</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_117/t117'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_118">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='186px'/><fo:table-column column-width='186px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (daňová povinnosť) znížená o daňový bonus podľa zákona  (r. 116 - r. 117)22)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>118</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_118/t118'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_119">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma daňového bonusu podľa zákona priznaného a vyplateného zamestnávateľom</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>119</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_119/t119'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_123">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Nárok na daňový bonus na zaplatené úroky podľa § 33a zákona 24)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>123</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_123/t123'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_124">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (daňová povinnosť) znížená o daňový bonus podľa zákona a o daňový bonus na zaplatené úroky podľa § 33a zákona   (r. 118 - r. 123)25)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>124</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_124/t124'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_125">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='81px'/><fo:table-column column-width='81px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma daňového bonusu na zaplatené úroky podľa § 33a zákona priznaného a vyplateného zamestnávateľom 26)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>125</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_125/t125'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_128">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='69px'/><fo:table-column column-width='69px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma zamestnaneckej prémie nesprávne vyplatenej zamestnávateľom alebo správcom dane</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>128</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_128/t128'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_129">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma preddavku vybraná podľa § 43 zákona28)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>129</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_129/t129'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_130">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='194px'/><fo:table-column column-width='194px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma preddavku vybraná pri vyplatení (vrátení) podielového listu obstaraného do 31. decembra 2003 podľa § 43 ods. 10 zákona (z príjmov uvedených v r. 12 tabuľky č. 2)29)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>130</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_130/t130'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_PreddavokNaDan">
    			<fo:block background-color='black' color='white'>Zrazený preddavok na daň</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd9_131">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='83px'/><fo:table-column column-width='83px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>§ 35 zákona - z príjmov zo závislej činnosti30)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>131</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_PreddavokNaDan/Odd9_131/t131'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_132">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='98px'/><fo:table-column column-width='98px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>§ 44 zákona - na zabezpečenie dane</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>132</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_PreddavokNaDan/Odd9_132/t132'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_133">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='160px'/><fo:table-column column-width='160px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zaplatené preddavky na daň podľa § 34 zákona31)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>133</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_133/t133'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_134">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='186px'/><fo:table-column column-width='186px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zaplatené preddavky na daň podľa § 35 ods. 10 a 11 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>134</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_134/t134'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_135">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='186px'/><fo:table-column column-width='186px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň na úhradu vrátane zamestnávateľom nesprávne vyplateného daňového bonusu podľa zákona32) r. 116 - r. 117 + r. 119 + r. 121 - r. 123 + r. 125 + r. 127 + r. 128 - r. 129 - r. 130 - r. 131 - r. 132 - r. 133 - r. 134(+)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>135 +</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_135/t135'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_136">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='186px'/><fo:table-column column-width='186px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='129px'/><fo:table-column column-width='129px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daňový preplatok znížený o zamestnávateľom nesprávne vyplatený daňový bonus podľa zákona r. 116 - r. 117 + r. 119 + r. 121 - r. 123 + r. 125 + r. 127 + r. 128 - r. 129 - r. 130 - r. 131 - r. 132 - r. 133 - r. 134 (-)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>136 -</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_9oddiel/Odd9_136/t136'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_10oddiel">
    			<fo:block background-color='black' color='black'>|</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='424px'/><fo:table-column column-width='424px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>33) Ide o daňové priznanie podané v lehote na podanie daňového priznania podľa § 49 zákona alebo o bezprostredne predchádzajúce podané dodatočné daňové priznanie, ak daňovník podáva ďalšie dodatočné daňové priznanie.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>34) Ak daňovník uplatňoval postup podľa § 50aa zákona, daňový preplatok je potrebné upraviť v súlade s § 50aa ods. 8 zákona.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd10_137">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='258px'/><fo:table-column column-width='258px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň (daňová povinnosť) z r. 116 daňového priznania33) alebo r. 56 daňového priznania typ A33) alebo r. 06 ročného zúčtovania</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>137</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_10oddiel/Odd10_137/t137'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd10_138">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='186px'/><fo:table-column column-width='186px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zvýšenie (+) alebo zníženie (-) dane (r. 116 - r. 137)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>138</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_10oddiel/Odd10_138/t138'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd10_139">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='277px'/><fo:table-column column-width='277px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň na úhradu z r. 135 alebo daňový preplatok z r. 136 daňového priznania33) alebo z r. 71 alebo r. 72 daňového priznania typ A33) alebo r. 21 ročného zúčtovania</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>139</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_10oddiel/Odd10_139/t139'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd10_140">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='264px'/><fo:table-column column-width='264px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='140px'/><fo:table-column column-width='140px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň na úhradu (+) alebo daňový preplatok (-) (r. 135 alebo r. 136) - r. 139 + [(r. 152 daňového priznania33) - 2% alebo 3% z r. 124) > 0]34) alebo (r. 135 alebo r. 136) - r. 139 + [(r. 82 daňového priznania typ A33) - 2% alebo 3% z r. 124) > 0]34) alebo (r. 135 alebo r. 136) - r. 139 + [(r. 13 vyhlásenia o poukázaní sumy podielu zaplatenej dane - 2% alebo 3% z r. 124) > 0]34)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>140</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_10oddiel/Odd10_140/t140'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd10_141">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='79px'/><fo:table-column column-width='79px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma daňového bonusu podľa zákona na poukázanie správcom dane z r. 121 daňového priznania33) alebo z r. 61 daňového priznania typ A33) alebo r. 12 ročného zúčtovania</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>141</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_10oddiel/Odd10_141/t141'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd10_142">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='187px'/><fo:table-column column-width='187px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='90px'/><fo:table-column column-width='90px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Rozdiel súm daňového bonusu podľa zákona na poukázanie správcom dane (+), na vrátenie správcovi dane (-) (r. 121 - r. 141)23)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>142</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_10oddiel/Odd10_142/t142'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd10_143">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='79px'/><fo:table-column column-width='79px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Suma daňového bonusu na zaplatené úroky podľa § 33a zákona na poukázanie správcom dane z r. 127 daňového priznania33) alebo z r. 67 daňového priznania typ A33) alebo r. 16  ročného zúčtovania</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>143</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_10oddiel/Odd10_143/t143'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd10_144">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='187px'/><fo:table-column column-width='187px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='90px'/><fo:table-column column-width='90px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Rozdiel súm daňového bonusu na zaplatené úroky podľa § 33a zákona na poukázanie správcom dane (+), na vrátenie správcovi dane (-) (r. 127- r. 143)27)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>144</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_10oddiel/Odd10_144/t144'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_11oddiel">
    			<fo:block background-color='black' color='white'>XI. ODDIEL - ĎALŠIE ÚDAJE O DAŇOVNÍKOVI</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='431px'/><fo:table-column column-width='431px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>35) Vypĺňa sa, ak ide o daňovníka s neobmedzenou daňovou povinnosťou (rezidenta), ktorý uplatňuje postup podľa § 33 ods. 9 zákona a ak ide o daňovníka s obmedzenou daňovou povinnosťou (nerezidenta), ktorý uplatňuje postup podľa § 11 ods. 7, § 33 ods. 9, § 33a ods. 10 a § 46a zákona a ak ide o daňovníka (rezidenta aj nerezidenta), ktorý je druhou oprávnenou osobou pre účely uplatnenia § 33 ods. 8 zákona. V riadku sa uvádzajú aj zdaniteľné príjmy, z ktorých sa daň vyberá zrážkou.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>36) Ak daňovník s obmedzenou daňovou povinnosťou má na území Slovenskej republiky viacej stálych prevádzkarní, uvádza sa ich počet v r. 150 a v XIII. oddiele sa uvádzajú ich adresy umiestnenia.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd11_145x">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='402px'/><fo:table-column column-width='402px'/><fo:table-column column-width='440px'/><fo:table-column column-width='440px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>145</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>- Štát daňovej rezidencie</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_11oddiel/Odd11_145x/t145'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd11_146x">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='127px'/><fo:table-column column-width='127px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn všetkých zdaniteľných príjmov plynúcich zo zdrojov na území Slovenskej republiky a zo zdrojov v zahraničí v eurách 35)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>146</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_11oddiel/Odd11_146x/t146'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd9_ZToho">
    			<fo:block background-color='black' color='white'>z toho</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./secRiadok146a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='161px'/><fo:table-column column-width='161px'/><fo:table-column column-width='16px'/><fo:table-column column-width='16px'/><fo:table-column column-width='125px'/><fo:table-column column-width='125px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>úhrn všetkých zdaniteľných príjmov plynúcich zo zdrojov na území Slovenskej republiky 35)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>146a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_11oddiel/Odd9_ZToho/secRiadok146a/t146a'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd11_147">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='127px'/><fo:table-column column-width='127px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výška výnosu z prenájmu nehnuteľnosti podľa § 6 ods. 3 zákona, ak nerezident účtuje v sústave podvojného účtovníctva</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>147</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_11oddiel/Odd11_147/t147'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd11_148">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='200px'/><fo:table-column column-width='200px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='127px'/><fo:table-column column-width='127px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výška príjmu (výnosu) z prevodu nehnuteľností, ktoré sú zaradené do obchodného majetku nerezidenta s príjmami podľa § 6 ods. 1 a 2 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>148</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_11oddiel/Odd11_148/t148'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd11_149">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='169px'/><fo:table-column column-width='169px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='25px'/><fo:table-column column-width='25px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-column column-width='17px'/><fo:table-column column-width='17px'/><fo:table-column column-width='47px'/><fo:table-column column-width='47px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatňujem lehotu na podanie daňového priznania podľa § 49 ods. 7 prvej vety zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>149</fo:block></fo:table-cell><fo:table-cell><fo:block>áno</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_11oddiel/Odd11_149/t149[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Počet stálych prevádzkarní umiestnených na území Slovenskej republiky36)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>150</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_11oddiel/Odd11_149/t150'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_12oddiel">
    			<fo:block background-color='black' color='white'>XII. ODDIEL - VYHLÁSENIE o poukázaní podielu zaplatenej dane z príjmov fyzickej osoby podľa § 50 a § 50aa zákona</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='154px'/><fo:table-column column-width='154px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>súhlasím so zaslaním údajov (meno, priezvisko a trvalý pobyt) mnou určenému prijímateľovi podielu zaplatenej dane uvedenému v r. 151 podľa § 50 ods. 8 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_12oddiel/chbsuhlas[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>bol som zverený do starostlivosti nahrádzajúcej starostlivosť rodičov na základe rozhodnutia príslušného orgánu39)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_12oddiel/chNahrStar[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>37) IČO sa zarovnáva sprava a ak obsahuje menej ako 12 čísiel, nepoužité polia zostávajú prázdne.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>38) Podiel do výšky 3 % dane podľa § 50 ods. 1 písm. a) zákona môže prijímateľovi poukázať fyzická osoba, ktorá v zdaňovacom období vykonávala dobrovoľnícku činnosť podľa zákona č. 406/2011 Z.z. o dobrovoľníctve a o zmene a doplnení niektorých zákonov v znení neskorších predpisov počas najmenej 40 hodín, pričom písomné potvrdenie o výkone tejto činnosti je prílohou daňového priznania.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>39) Kópia rozhodnutia príslušného orgánu o zverení do starostlivosti nahrádzajúcej starostlivosť rodičov je prílohou daňového priznania.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd12_UdajeOPrijimatelovi">
    			<fo:block background-color='black' color='white'>151 - ÚDAJE O PRIJÍMATEĽOVI</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekNeP50a">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='107px'/><fo:table-column column-width='107px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>neuplatňujem postup podľa § 50 zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_12oddiel/Odd12_UdajeOPrijimatelovi/sekNeP50a/cbNeuplatnujem[text()='1']">
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
				<xsl:for-each select="./Riadok151">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='99px'/><fo:table-column column-width='99px'/><fo:table-column column-width='93px'/><fo:table-column column-width='93px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>IČO 37)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Odd12_UdajeOPrijimatelovi/Riadok151/tbico152'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>(prehľad prijímateľov)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd12_ObchodneMeno">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='417px'/><fo:table-column column-width='417px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Obchodné meno (názov)</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Odd12_UdajeOPrijimatelovi/Odd12_ObchodneMeno/tbObchMeno152'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok152">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='108px'/><fo:table-column column-width='108px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='107px'/><fo:table-column column-width='107px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>spĺňam podmienky na poukázanie 3 % z dane 38)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_12oddiel/Riadok152/cbSplnam3Per[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>2 % alebo 3 %38) zo zaplatenej dane (minimálne 3 eurá) z r. 124</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>152</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok152/tbPodiel152'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Riadok153">
    			<fo:block background-color='black' color='white'>153 - ÚDAJE O RODIČOVI / RODIČOCH</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekNeP50aa">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>neuplatňujem postup podľa § 50aa zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_12oddiel/Riadok153/sekNeP50aa/cbParagraf50aa[text()='1']">
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
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>a</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok153/sekciaRodic/tbRodneCislo153A_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok153/sekciaRodic/tbRodneCislo153A_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok153/sekciaRodic/Priezvisko153A'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok153/sekciaRodic/Meno153A'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>b</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok153/sekciaRodic/tbRodneCislo153B_1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok153/sekciaRodic/tbRodneCislo153B_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok153/sekciaRodic/Priezvisko153B'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_12oddiel/Riadok153/sekciaRodic/Meno153B'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_13oddiel">
    			<fo:block background-color='black' color='white'>XIII. ODDIEL - MIESTO NA OSOBITNÉ ZÁZNAMY DAŇOVNÍKA</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Odd13_OsobitneZaznamy">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='98px'/><fo:table-column column-width='98px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uvádzam osobitné záznamy</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_13oddiel/Odd13_OsobitneZaznamy/cbUvadza[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt'>Zaznamy</fo:block></fo:table-cell></fo:table-row>
                                        <fo:table-row height='100px'><fo:table-cell border-width='0.1mm' border-style='solid' background-color='white'><fo:block padding-left='1pt' hyphenate='true'><xsl:value-of select='/DPFOB2025/DPFOB_13oddiel/Odd13_OsobitneZaznamy/taZaznamy'/></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd13_udaje">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Údaje o príjmoch a výdavkoch dosahovaných daňovníkom s neobmedzenou daňovou povinnosťou zo zdrojov v zahraničí, ktoré sú súčasťou základu dane, osobitného základu dane podľa § 7, 51e a § 51ea zákona</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Údaje požadované v jednotlivých oddieloch pod tabuľkami č. 1, 2 a 3 sa uvádzajú v členení:</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>druh a výška príjmov dosiahnutých zo zdrojov v zahraničí (vypíše sa jednotlivo pre každý druh príjmov podľa § 5 až 8 zákona), pričom sa uvádza číselný kód štátu podľa vyhlášky Štatistického úradu Slovenskej republiky č. 112/2012 Z. z., ktorou sa vydáva Štatistický číselník krajín v znení vyhlášky č. 108/2014 Z.z.; ak má daňovník viac druhov príjmov dosiahnutých v zahraničí podľa § 5 až 8 zákona, uvádzajú sa v tabuľke najskôr príjmy podľa § 5 a § 6 ods. 1 a 2 zákona, pričom ďalšie druhy príjmov sa uvádzajú v mieste na osobitné záznamy pod tabuľkou; ak ide o spoločne dosiahnuté príjmy, uvádza sa meno, priezvisko, adresa trvalého pobytu, DIČ alebo rodné číslo a celkové spoločne dosiahnuté príjmy a výdavky; ak ide o účastníkov združenia, uvádza sa aj percentuálny podiel pripadajúci na každého účastníka združenia.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd13_HlavickaTabulky">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Kód štátu</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Druh príjmu</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Príjmy</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Výdavky</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>z toho výdavky40)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd13_HlavickaTabulkyprijem">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>§</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>ods.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>písm.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd13_tabulka">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:if test="odd13kod[text()='004']">004 - Afganistan</xsl:if><xsl:if test="odd13kod[text()='008']">008 - Albánsko</xsl:if><xsl:if test="odd13kod[text()='010']">010 - Antarktída</xsl:if><xsl:if test="odd13kod[text()='012']">012 - Alžírsko</xsl:if><xsl:if test="odd13kod[text()='016']">016 - Americká Samoa</xsl:if><xsl:if test="odd13kod[text()='020']">020 - Andorra</xsl:if><xsl:if test="odd13kod[text()='024']">024 - Angola</xsl:if><xsl:if test="odd13kod[text()='028']">028 - Antigua a Barbuda</xsl:if><xsl:if test="odd13kod[text()='031']">031 - Azerbajdžan</xsl:if><xsl:if test="odd13kod[text()='032']">032 - Argentína</xsl:if><xsl:if test="odd13kod[text()='036']">036 - Austrália</xsl:if><xsl:if test="odd13kod[text()='040']">040 - Rakúsko</xsl:if><xsl:if test="odd13kod[text()='044']">044 - Bahamy</xsl:if><xsl:if test="odd13kod[text()='048']">048 - Bahrajn</xsl:if><xsl:if test="odd13kod[text()='050']">050 - Bangladéš</xsl:if><xsl:if test="odd13kod[text()='051']">051 - Arménsko</xsl:if><xsl:if test="odd13kod[text()='052']">052 - Barbados</xsl:if><xsl:if test="odd13kod[text()='056']">056 - Belgicko</xsl:if><xsl:if test="odd13kod[text()='060']">060 - Bermudy</xsl:if><xsl:if test="odd13kod[text()='064']">064 - Bhután</xsl:if><xsl:if test="odd13kod[text()='068']">068 - Bolívia</xsl:if><xsl:if test="odd13kod[text()='070']">070 - Bosna a Hercegovina</xsl:if><xsl:if test="odd13kod[text()='072']">072 - Botswana</xsl:if><xsl:if test="odd13kod[text()='074']">074 - Bouvetov ostrov</xsl:if><xsl:if test="odd13kod[text()='076']">076 - Brazília</xsl:if><xsl:if test="odd13kod[text()='084']">084 - Belize</xsl:if><xsl:if test="odd13kod[text()='086']">086 - Britské indickooceánske územie</xsl:if><xsl:if test="odd13kod[text()='090']">090 - Šalamúnove ostrovy</xsl:if><xsl:if test="odd13kod[text()='092']">092 - Britské Panenské ostrovy</xsl:if><xsl:if test="odd13kod[text()='096']">096 - Brunejsko-darussalamský štát</xsl:if><xsl:if test="odd13kod[text()='100']">100 - Bulharsko</xsl:if><xsl:if test="odd13kod[text()='104']">104 - Mjanmarsko</xsl:if><xsl:if test="odd13kod[text()='108']">108 - Burundi</xsl:if><xsl:if test="odd13kod[text()='112']">112 - Bielorusko</xsl:if><xsl:if test="odd13kod[text()='116']">116 - Kambodža</xsl:if><xsl:if test="odd13kod[text()='120']">120 - Kamerun</xsl:if><xsl:if test="odd13kod[text()='124']">124 - Kanada</xsl:if><xsl:if test="odd13kod[text()='132']">132 - Kapverdy</xsl:if><xsl:if test="odd13kod[text()='136']">136 - Kajmanie ostrovy</xsl:if><xsl:if test="odd13kod[text()='140']">140 - Stredoafrická republika</xsl:if><xsl:if test="odd13kod[text()='144']">144 - Srí Lanka</xsl:if><xsl:if test="odd13kod[text()='148']">148 - Čad</xsl:if><xsl:if test="odd13kod[text()='152']">152 - Čile</xsl:if><xsl:if test="odd13kod[text()='156']">156 - Čína</xsl:if><xsl:if test="odd13kod[text()='158']">158 - Taiwan</xsl:if><xsl:if test="odd13kod[text()='162']">162 - Vianočný ostrov</xsl:if><xsl:if test="odd13kod[text()='166']">166 - Kokosové ostrovy</xsl:if><xsl:if test="odd13kod[text()='170']">170 - Kolumbia</xsl:if><xsl:if test="odd13kod[text()='174']">174 - Komory</xsl:if><xsl:if test="odd13kod[text()='175']">175 - Mayotte</xsl:if><xsl:if test="odd13kod[text()='178']">178 - Kongo</xsl:if><xsl:if test="odd13kod[text()='180']">180 - Kongo (býv. Zair)</xsl:if><xsl:if test="odd13kod[text()='184']">184 - Cookove ostrovy</xsl:if><xsl:if test="odd13kod[text()='188']">188 - Kostarika</xsl:if><xsl:if test="odd13kod[text()='191']">191 - Chorvátsko</xsl:if><xsl:if test="odd13kod[text()='192']">192 - Kuba</xsl:if><xsl:if test="odd13kod[text()='196']">196 - Cyprus</xsl:if><xsl:if test="odd13kod[text()='203']">203 - Česko</xsl:if><xsl:if test="odd13kod[text()='204']">204 - Benin</xsl:if><xsl:if test="odd13kod[text()='208']">208 - Dánsko</xsl:if><xsl:if test="odd13kod[text()='212']">212 - Dominika</xsl:if><xsl:if test="odd13kod[text()='214']">214 - Dominikánska republika</xsl:if><xsl:if test="odd13kod[text()='218']">218 - Ekvádor</xsl:if><xsl:if test="odd13kod[text()='222']">222 - Salvádor</xsl:if><xsl:if test="odd13kod[text()='226']">226 - Rovníková Guinea</xsl:if><xsl:if test="odd13kod[text()='231']">231 - Etiópia</xsl:if><xsl:if test="odd13kod[text()='232']">232 - Eritrea</xsl:if><xsl:if test="odd13kod[text()='233']">233 - Estónsko</xsl:if><xsl:if test="odd13kod[text()='234']">234 - Faerské ostrovy</xsl:if><xsl:if test="odd13kod[text()='238']">238 - Falklandy</xsl:if><xsl:if test="odd13kod[text()='239']">239 - Južná Georgia a Južné Sandwichove ostrovy</xsl:if><xsl:if test="odd13kod[text()='242']">242 - Fidži</xsl:if><xsl:if test="odd13kod[text()='246']">246 - Fínsko</xsl:if><xsl:if test="odd13kod[text()='248']">248 - Alandy</xsl:if><xsl:if test="odd13kod[text()='250']">250 - Francúzsko</xsl:if><xsl:if test="odd13kod[text()='254']">254 - Francúzska Guyana</xsl:if><xsl:if test="odd13kod[text()='258']">258 - Francúzska Polynézia</xsl:if><xsl:if test="odd13kod[text()='260']">260 - Francúzske južné územia</xsl:if><xsl:if test="odd13kod[text()='262']">262 - Džibutsko</xsl:if><xsl:if test="odd13kod[text()='266']">266 - Gabon</xsl:if><xsl:if test="odd13kod[text()='268']">268 - Gruzínsko</xsl:if><xsl:if test="odd13kod[text()='270']">270 - Gambia</xsl:if><xsl:if test="odd13kod[text()='275']">275 - Palestína</xsl:if><xsl:if test="odd13kod[text()='276']">276 - Nemecko</xsl:if><xsl:if test="odd13kod[text()='288']">288 - Ghana</xsl:if><xsl:if test="odd13kod[text()='292']">292 - Gibraltár</xsl:if><xsl:if test="odd13kod[text()='296']">296 - Karibati</xsl:if><xsl:if test="odd13kod[text()='300']">300 - Grécko</xsl:if><xsl:if test="odd13kod[text()='304']">304 - Grónsko</xsl:if><xsl:if test="odd13kod[text()='308']">308 - Grenada</xsl:if><xsl:if test="odd13kod[text()='312']">312 - Guadaloupe</xsl:if><xsl:if test="odd13kod[text()='316']">316 - Guam</xsl:if><xsl:if test="odd13kod[text()='320']">320 - Guatemala</xsl:if><xsl:if test="odd13kod[text()='324']">324 - Guinea</xsl:if><xsl:if test="odd13kod[text()='328']">328 - Guyana</xsl:if><xsl:if test="odd13kod[text()='332']">332 - Haiti</xsl:if><xsl:if test="odd13kod[text()='334']">334 - Heardov ostrov a Macdonaldove ostrovy</xsl:if><xsl:if test="odd13kod[text()='336']">336 - Vatikán</xsl:if><xsl:if test="odd13kod[text()='340']">340 - Honduras</xsl:if><xsl:if test="odd13kod[text()='344']">344 - Hongkong</xsl:if><xsl:if test="odd13kod[text()='348']">348 - Maďarsko</xsl:if><xsl:if test="odd13kod[text()='352']">352 - Island</xsl:if><xsl:if test="odd13kod[text()='356']">356 - India</xsl:if><xsl:if test="odd13kod[text()='360']">360 - Indonézia</xsl:if><xsl:if test="odd13kod[text()='364']">364 - Irak</xsl:if><xsl:if test="odd13kod[text()='364']">364 - Irán</xsl:if><xsl:if test="odd13kod[text()='372']">372 - Írsko</xsl:if><xsl:if test="odd13kod[text()='376']">376 - Izrael</xsl:if><xsl:if test="odd13kod[text()='380']">380 - Taliansko</xsl:if><xsl:if test="odd13kod[text()='384']">384 - Pobrežie Slonoviny</xsl:if><xsl:if test="odd13kod[text()='388']">388 - Jamajka</xsl:if><xsl:if test="odd13kod[text()='392']">392 - Japonsko</xsl:if><xsl:if test="odd13kod[text()='398']">398 - Kazachstan</xsl:if><xsl:if test="odd13kod[text()='400']">400 - Jordánsko</xsl:if><xsl:if test="odd13kod[text()='404']">404 - Keňa</xsl:if><xsl:if test="odd13kod[text()='408']">408 - Kórejská ľudovodemokratická republika</xsl:if><xsl:if test="odd13kod[text()='410']">410 - Kórejská republika</xsl:if><xsl:if test="odd13kod[text()='414']">414 - Kuvajt</xsl:if><xsl:if test="odd13kod[text()='417']">417 - Kirgizsko</xsl:if><xsl:if test="odd13kod[text()='418']">418 - Laos</xsl:if><xsl:if test="odd13kod[text()='422']">422 - Libanon</xsl:if><xsl:if test="odd13kod[text()='426']">426 - Lesotho</xsl:if><xsl:if test="odd13kod[text()='428']">428 - Lotyšsko</xsl:if><xsl:if test="odd13kod[text()='430']">430 - Libéria</xsl:if><xsl:if test="odd13kod[text()='434']">434 - Líbya</xsl:if><xsl:if test="odd13kod[text()='438']">438 - Lichtenštajnsko</xsl:if><xsl:if test="odd13kod[text()='440']">440 - Litva</xsl:if><xsl:if test="odd13kod[text()='442']">442 - Luxembursko</xsl:if><xsl:if test="odd13kod[text()='446']">446 - Macao</xsl:if><xsl:if test="odd13kod[text()='450']">450 - Madagaskar</xsl:if><xsl:if test="odd13kod[text()='454']">454 - Malawi</xsl:if><xsl:if test="odd13kod[text()='458']">458 - Malajzia</xsl:if><xsl:if test="odd13kod[text()='462']">462 - Maldivy</xsl:if><xsl:if test="odd13kod[text()='466']">466 - Mali</xsl:if><xsl:if test="odd13kod[text()='470']">470 - Malta</xsl:if><xsl:if test="odd13kod[text()='470']">470 - Martinik</xsl:if><xsl:if test="odd13kod[text()='478']">478 - Mauritánia</xsl:if><xsl:if test="odd13kod[text()='480']">480 - Maurícius</xsl:if><xsl:if test="odd13kod[text()='484']">484 - Mexiko</xsl:if><xsl:if test="odd13kod[text()='492']">492 - Monako</xsl:if><xsl:if test="odd13kod[text()='496']">496 - Mongolsko</xsl:if><xsl:if test="odd13kod[text()='498']">498 - Moldavsko</xsl:if><xsl:if test="odd13kod[text()='499']">499 - Čierna Hora</xsl:if><xsl:if test="odd13kod[text()='500']">500 - Montserrat</xsl:if><xsl:if test="odd13kod[text()='504']">504 - Maroko</xsl:if><xsl:if test="odd13kod[text()='508']">508 - Mozambik</xsl:if><xsl:if test="odd13kod[text()='512']">512 - Omán</xsl:if><xsl:if test="odd13kod[text()='516']">516 - Namíbia</xsl:if><xsl:if test="odd13kod[text()='520']">520 - Nauru</xsl:if><xsl:if test="odd13kod[text()='524']">524 - Nepál</xsl:if><xsl:if test="odd13kod[text()='528']">528 - Holandsko</xsl:if><xsl:if test="odd13kod[text()='531']">531 - Curaçao</xsl:if><xsl:if test="odd13kod[text()='533']">533 - Aruba</xsl:if><xsl:if test="odd13kod[text()='534']">534 - Svätý Martin (holandská časť)</xsl:if><xsl:if test="odd13kod[text()='535']">535 - Bonaire, Svätý Eustach a Saba</xsl:if><xsl:if test="odd13kod[text()='540']">540 - Nová Kaledónia</xsl:if><xsl:if test="odd13kod[text()='548']">548 - Vanuatu</xsl:if><xsl:if test="odd13kod[text()='554']">554 - Nový Zéland</xsl:if><xsl:if test="odd13kod[text()='558']">558 - Nikaragua</xsl:if><xsl:if test="odd13kod[text()='562']">562 - Niger</xsl:if><xsl:if test="odd13kod[text()='566']">566 - Nigéria</xsl:if><xsl:if test="odd13kod[text()='570']">570 - Niue</xsl:if><xsl:if test="odd13kod[text()='574']">574 - Norfolk</xsl:if><xsl:if test="odd13kod[text()='578']">578 - Nórsko</xsl:if><xsl:if test="odd13kod[text()='580']">580 - Severné Mariány</xsl:if><xsl:if test="odd13kod[text()='581']">581 - Menšie odľahlé ostrovy USA</xsl:if><xsl:if test="odd13kod[text()='583']">583 - Mikronézia</xsl:if><xsl:if test="odd13kod[text()='584']">584 - Marshallove ostrovy</xsl:if><xsl:if test="odd13kod[text()='585']">585 - Palau</xsl:if><xsl:if test="odd13kod[text()='586']">586 - Pakistan</xsl:if><xsl:if test="odd13kod[text()='591']">591 - Panama</xsl:if><xsl:if test="odd13kod[text()='598']">598 - Papua-Nová Guinea</xsl:if><xsl:if test="odd13kod[text()='600']">600 - Paraguaj</xsl:if><xsl:if test="odd13kod[text()='604']">604 - Peru</xsl:if><xsl:if test="odd13kod[text()='608']">608 - Filipíny</xsl:if><xsl:if test="odd13kod[text()='612']">612 - Pitcairnove ostrovy</xsl:if><xsl:if test="odd13kod[text()='616']">616 - Poľsko</xsl:if><xsl:if test="odd13kod[text()='620']">620 - Portugalsko</xsl:if><xsl:if test="odd13kod[text()='624']">624 - Guinea-Bissau</xsl:if><xsl:if test="odd13kod[text()='626']">626 - Východný Timor</xsl:if><xsl:if test="odd13kod[text()='630']">630 - Portoriko</xsl:if><xsl:if test="odd13kod[text()='634']">634 - Katar</xsl:if><xsl:if test="odd13kod[text()='638']">638 - Réunion</xsl:if><xsl:if test="odd13kod[text()='642']">642 - Rumunsko</xsl:if><xsl:if test="odd13kod[text()='643']">643 - Rusko</xsl:if><xsl:if test="odd13kod[text()='646']">646 - Rwanda</xsl:if><xsl:if test="odd13kod[text()='652']">652 - Svätý Bartolomej</xsl:if><xsl:if test="odd13kod[text()='654']">654 - Svätá Helena</xsl:if><xsl:if test="odd13kod[text()='659']">659 - Svätý Krištof a Nevis</xsl:if><xsl:if test="odd13kod[text()='660']">660 - Anguilla</xsl:if><xsl:if test="odd13kod[text()='662']">662 - Svätá Lucia</xsl:if><xsl:if test="odd13kod[text()='663']">663 - Svätý Martin (francúzska časť)</xsl:if><xsl:if test="odd13kod[text()='666']">666 - Saint Pierre a Miquelon</xsl:if><xsl:if test="odd13kod[text()='670']">670 - Svätý Vincent a Grenadíny</xsl:if><xsl:if test="odd13kod[text()='674']">674 - San Maríno</xsl:if><xsl:if test="odd13kod[text()='678']">678 - Svätý Tomáš a Princov ostrov</xsl:if><xsl:if test="odd13kod[text()='682']">682 - Saudská Arábia</xsl:if><xsl:if test="odd13kod[text()='686']">686 - Senegal</xsl:if><xsl:if test="odd13kod[text()='688']">688 - Srbsko</xsl:if><xsl:if test="odd13kod[text()='690']">690 - Seychely</xsl:if><xsl:if test="odd13kod[text()='694']">694 - Sierra Leone</xsl:if><xsl:if test="odd13kod[text()='702']">702 - Singapur</xsl:if><xsl:if test="odd13kod[text()='703']">703 - Slovensko</xsl:if><xsl:if test="odd13kod[text()='704']">704 - Vietnam</xsl:if><xsl:if test="odd13kod[text()='705']">705 - Slovinsko</xsl:if><xsl:if test="odd13kod[text()='706']">706 - Somálsko</xsl:if><xsl:if test="odd13kod[text()='710']">710 - Južná Afrika</xsl:if><xsl:if test="odd13kod[text()='716']">716 - Zimbabwe</xsl:if><xsl:if test="odd13kod[text()='724']">724 - Španielsko</xsl:if><xsl:if test="odd13kod[text()='728']">728 - Južný Sudán</xsl:if><xsl:if test="odd13kod[text()='729']">729 - Sudán</xsl:if><xsl:if test="odd13kod[text()='732']">732 - Západná Sahara</xsl:if><xsl:if test="odd13kod[text()='740']">740 - Surinam</xsl:if><xsl:if test="odd13kod[text()='744']">744 - Svalbard a Jan Mayen</xsl:if><xsl:if test="odd13kod[text()='748']">748 - Svazijsko</xsl:if><xsl:if test="odd13kod[text()='752']">752 - Švédsko</xsl:if><xsl:if test="odd13kod[text()='756']">756 - Švajčiarsko</xsl:if><xsl:if test="odd13kod[text()='760']">760 - Sýria</xsl:if><xsl:if test="odd13kod[text()='762']">762 - Tadžikistan</xsl:if><xsl:if test="odd13kod[text()='764']">764 - Thajsko</xsl:if><xsl:if test="odd13kod[text()='768']">768 - Togo</xsl:if><xsl:if test="odd13kod[text()='772']">772 - Tokelau</xsl:if><xsl:if test="odd13kod[text()='776']">776 - Tonga</xsl:if><xsl:if test="odd13kod[text()='780']">780 - Trinidad a Tobago</xsl:if><xsl:if test="odd13kod[text()='784']">784 - Spojené arabské emiráty</xsl:if><xsl:if test="odd13kod[text()='788']">788 - Tunisko</xsl:if><xsl:if test="odd13kod[text()='792']">792 - Turecko</xsl:if><xsl:if test="odd13kod[text()='795']">795 - Turkménsko</xsl:if><xsl:if test="odd13kod[text()='796']">796 - Turks a Caicos</xsl:if><xsl:if test="odd13kod[text()='798']">798 - Tuvalu</xsl:if><xsl:if test="odd13kod[text()='800']">800 - Uganda</xsl:if><xsl:if test="odd13kod[text()='804']">804 - Ukrajina</xsl:if><xsl:if test="odd13kod[text()='807']">807 - Macedónsko</xsl:if><xsl:if test="odd13kod[text()='818']">818 - Egypt</xsl:if><xsl:if test="odd13kod[text()='826']">826 - Spojené kráľovstvo</xsl:if><xsl:if test="odd13kod[text()='831']">831 - Guernsey</xsl:if><xsl:if test="odd13kod[text()='832']">832 - Jersey</xsl:if><xsl:if test="odd13kod[text()='833']">833 - Man</xsl:if><xsl:if test="odd13kod[text()='834']">834 - Tanzánia</xsl:if><xsl:if test="odd13kod[text()='840']">840 - Spojené štáty americké</xsl:if><xsl:if test="odd13kod[text()='850']">850 - Americké Panenské ostrovy</xsl:if><xsl:if test="odd13kod[text()='854']">854 - Burkina</xsl:if><xsl:if test="odd13kod[text()='858']">858 - Uruguaj</xsl:if><xsl:if test="odd13kod[text()='860']">860 - Uzbekistan</xsl:if><xsl:if test="odd13kod[text()='862']">862 - Venezuela</xsl:if><xsl:if test="odd13kod[text()='876']">876 - Wallis a Futuna</xsl:if><xsl:if test="odd13kod[text()='882']">882 - Samoa</xsl:if><xsl:if test="odd13kod[text()='887']">887 - Jemen</xsl:if><xsl:if test="odd13kod[text()='894']">894 - Zambia</xsl:if><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='odd13Par'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='odd13Ods'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='odd13Pism'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='odd13Prijmy'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='odd13Vydavky'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='odd13zToho'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./secRekreacia">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Uplatňujem príspevok na rekreáciu podľa § 19 ods. 2 písm. w) zákona</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_13oddiel/Odd13_OsobitneZaznamy/Odd13_udaje/secRekreacia/chbRekreacia[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>Výška príspevku na rekreáciu</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_13oddiel/Odd13_OsobitneZaznamy/Odd13_udaje/secRekreacia/valRekreacia'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd13_Vyhlasenie">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='211px'/><fo:table-column column-width='211px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Vyhlasujem, že všetky údaje uvedené v daňovom priznaní sú správne a úplné.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>Dátum</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_13oddiel/Odd13_Vyhlasenie/dtpDatumSpravneUplne'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd13_Prilohy">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='48px'/><fo:table-column column-width='48px'/><fo:table-column column-width='16px'/><fo:table-column column-width='16px'/><fo:table-column column-width='21px'/><fo:table-column column-width='21px'/><fo:table-column column-width='154px'/><fo:table-column column-width='154px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Počet príloh</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>154</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_13oddiel/Odd13_Vyhlasenie/Odd13_Prilohy/t154'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Uvádza sa počet všetkých príloh, ktoré sú súčasťou daňového priznania (vrátane príloh č. 1 až 4, aj keď sa nevypĺňajú).</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_14oddiel">
    			<fo:block background-color='black' color='white'>XIV. ODDIEL - ŽIADOSŤ O VRÁTENIE DAŇOVÉHO PREPLATKU ALEBO O VYPLATENIE DAŇOVÉHO BONUSU</fo:block><fo:block color='white'>|</fo:block>
				<fo:block text-align='justify'>U daňovníka, ktorý žiada vrátenie daňového preplatku alebo vyplatenie daňového bonusu na bankový účet vedený v zahraničí (cezhraničný prevod finančných prostriedkov) v inom formáte ako IBAN, sa uvádza v XIII. oddiele číslo bankového účtu, SWIFT/BIC kód, názov banky, mesto a štát banky alebo pobočky banky daňovníka. Ak daňovník nie je majiteľom bankového účtu, uvádza sa v XIII. oddiele názov bankového účtu príjemcu.</fo:block><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Odd14_Ziadam">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='150px'/><fo:table-column column-width='150px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Žiadam o vyplatenie daňového bonusu alebo rozdielu daňového bonusu podľa zákona (r. 121 alebo rozdiel z r. 142, ak je kladný)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_14oddiel/Odd14_Ziadam/cbVyplatit[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Žiadam o vyplatenie daňového bonusu na zaplatené úroky alebo rozdielu daňového bonusu na zaplatené úroky podľa § 33a zákona (r. 127 alebo rozdiel z r. 144, ak je kladný)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_14oddiel/Odd14_Ziadam/chBonus[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>Žiadam o vrátenie daňového preplatku podľa § 79 zákona č. 563/2009 Z.z. o správe daní (daňový poriadok) a o zmene a doplnení niektorých zákonov v znení neskorších predpisov (z r. 136 alebo rozdiel z r. 140, ak je záporný)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_14oddiel/Odd14_Ziadam/cbVratenie[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_14oddiel/Odd14_Ziadam/cbPoukazkaDB[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_14oddiel/Odd14_Ziadam/cbUcetDB[text()='1']">
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
<xsl:when test="/DPFOB2025/DPFOB_14oddiel/Odd14_Ziadam/cbUcetZah[text()='1']">
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
				<xsl:for-each select="./Odd14_IBAN">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-column column-width='106px'/><fo:table-column column-width='106px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>IBAN</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_14oddiel/Odd14_IBAN/tbIBAN'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Odd14_datum">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Dátum</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_14oddiel/Odd14_datum/dtpDatumDB'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_Priloha1">
    			<fo:block background-color='black' color='white'>PRÍLOHA č. 1 - Odpočet výdavkov (nákladov) na výskum a vývoj a údaje o projektoch výskumu a vývoja podľa § 30c zákona</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Ciele projektu, ktoré sú dosiahnuteľné podľa doby jeho realizácie a merateľné po jeho ukončení</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt'>Ciele projektu, ktoré sú dosiahnuteľné podľa doby jeho realizácie a merateľné po jeho ukončení</fo:block></fo:table-cell></fo:table-row>
                                        <fo:table-row height='100px'><fo:table-cell border-width='0.1mm' border-style='solid' background-color='white'><fo:block padding-left='1pt' hyphenate='true'><xsl:value-of select='CieleProjektu'/></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>41) V r. 7 sa uvádza suma odpočtu podľa § 30c ods. 1 zákona odpočítavaná v príslušnom zdaňovacom období v úhrne z r. 6 za všetky projekty. Riadok 7 sa vypĺňa aj pri daňovníkovi, ktorý uplatňuje odpočet výdavkov (nákladov) na výskum a vývoj iba za jeden projekt, pričom sa v ňom uvádza suma z r. 6. V r. 8 sa uvádza suma odpočtu podľa § 30c ods. 2 zákona odpočítavaná v príslušnom zdaňovacom období. Riadky 7 a 8 sa vypĺňajú len v prílohe k § 30c zákona, v ktorej sa uvádza projekt č. 1.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>42) Pri daňovníkovi, ktorý odpočítava výdavky (náklady) na výskum a vývoj podľa § 30c ods. 1 zákona u viacerých projektov, sa vypĺňajú r. 1 až 6 za každý projekt samostatne, pričom r. 9 sa vypĺňa len v prílohe k § 30c zákona, v ktorej sa uvádza projekt č. 1. V r. 9 sa uvádza suma odpočtu podľa § 30c ods. 1 zákona z r. 7 a suma odpočtu podľa § 30c ods. 2 zákona z r. 8, pričom suma v r. 9 sa uvádza najviac do výšky čiastkového základu dane uvedeného v r. 55 a údaj z r. 9 sa prenáša do r. 56.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Pril1_Projekt">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Projekt/ProjektCislo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Projekt/PocetProjektov'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>Dátum začiatku realizácie projektu</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Projekt/DatumProjektu'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_R">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>R.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Zdaňovacie obdobie  1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Výška vykázaného nároku na odpočet výdavkov (nákladov) na výskum a vývoj podľa § 30c ods. 1 zákona v zdaňovacom období  2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>časť odpočítavaná v príslušnom zdaňovacom období  3</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1.</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_1/Pri1r1DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_1/Pri1r1Vyska'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_1/Pri1r1Odp'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_1/Pri1r1DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2.</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_2/Pri1r2DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_2/Pri1r2Vyska'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_2/Pri1r2Odp'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_2/Pri1r2DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3.</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_3/Pri1r3DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_3/Pri1r3Vyska'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_3/Pri1r3Odp'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_3/Pri1r3DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4.</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_4/Pri1r4DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_4/Pri1r4Vyska'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_4/Pri1r4Odp'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_4/Pri1r4DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_5">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>5.</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_5/Pri1r5DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_5/Pri1r5Vyska'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_5/Pri1r5Odp'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_5/Pri1r5DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_6">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>6.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>SPOLU</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_6/Pri1r6'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_7">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>7.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Odpočet 41) podľa § 30c ods. 1 zákona (súčet všetkých r. 6 Prílohy č. 1)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_7/Pri1r7'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_8">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>8.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Odpočet 41) podľa § 30c ods. 2 zákona</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_8/Pri1r8'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1_Tab_9">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>9.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>SPOLU 42) odpočet podľa § 30c ods. 1 a 2 zákona za všetky projekty (r. 7 + r. 8)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='./Pril1_Tab_9/Pri1r9'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_Priloha1b">
    			<fo:block background-color='black' color='white'>PRÍLOHA č. 1b - Evidencia a odpočet výdavkov (nákladov) na investície podľa § 30e zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./secHlavicka_Priloha1b">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zdaňovacie obdobie1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Hodnota investície zaradenádo užívania alebo obchodného majetkupodľa § 30e ods. 5 zákona2</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Výška vykázaného nároku na odpočet výdavkov (nákladov) na investície podľa § 30e ods. 1 zákona v zdaňovacom období3</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_1/Pri1br1DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_1/Pri1br1Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_1/Pri1br1Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_1/Pri1br1Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_1/Pri1br1DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_2/Pri1br2DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_2/Pri1br2Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_2/Pri1br2Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_2/Pri1br2Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_2/Pri1br2DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_3/Pri1br3DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_3/Pri1br3Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_3/Pri1br3Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_3/Pri1br3Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_3/Pri1br3DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_4/Pri1br4DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_4/Pri1br4Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_4/Pri1br4Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_4/Pri1br4Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_4/Pri1br4DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_5">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>5</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_5/Pri1br5DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_5/Pri1br5Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_5/Pri1br5Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_5/Pri1br5Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_5/Pri1br5DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_6">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>6</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_6/Pri1br6DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_6/Pri1br6Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_6/Pri1br6Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_6/Pri1br6Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_6/Pri1br6DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_7">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>7</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_7/Pri1br7DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_7/Pri1br7Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_7/Pri1br7Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_7/Pri1br7Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_7/Pri1br7DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_8">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>8</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_8/Pri1br8DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_8/Pri1br8Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_8/Pri1br8Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_8/Pri1br8Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_8/Pri1br8DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_9">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>9</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_9/Pri1br9DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_9/Pri1br9Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_9/Pri1br9Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_9/Pri1br9Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_9/Pri1br9DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_10">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>10</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_10/Pri1br10DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_10/Pri1br10Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_10/Pri1br10Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_10/Pri1br10Stlpec4'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_10/Pri1br10DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>11</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>SPOLU</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_11/Pri1br11Spolu'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1b_Tab_12">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>12</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Plánovaná výška preinvestovania priemernej hodnoty investícií v % podľa § 30e ods. 8 zákona</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1b/Pril1b_Tab_12/Pri1br12Plan'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_Priloha1c">
    			<fo:block background-color='black' color='white'>PRÍLOHA č. 1c - Odpočet výdavkov (nákladov) na podporu športu podľa § 30ca zákona</fo:block><fo:block color='white'>|</fo:block>
				<fo:block font-size='10,4px' line-height='20pt'>43) Pri daňovníkovi, ktorý odpočítava výdavky (náklady) na podporu športu podľa § 30ca ods. 1 zákona, sa vypĺňajú r. 1 až 6 samostatne. V r. 8 sa uvádza suma odpočtu podľa § 30ca ods. 2 zákona z r. 7, pričom suma v r. 8 sa uvádza najviac do výšky 250 000 eur a zároveň najviac do výšky základu dane v r. 55 zníženého o odpočet nákladov podľa § 30c a § 30e zákona, údaj z r. 8 sa prenáša do r. 56.</fo:block><fo:block color='white'>|</fo:block>		<xsl:for-each select="./secHlavicka_Priloha1c">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Zdaňovacie obdobie1</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Výška vykázaného nároku na odpočet výdavkov (nákladov) na podporu športu podľa § 30ca ods. 1 zákona v zdaňovacom období2</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1c_Tab_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_1/Pri1cr1DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_1/Pri1cr1Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_1/Pri1cr1Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_1/Pri1cr1DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1c_Tab_2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>2</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_2/Pri1cr2DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_2/Pri1cr2Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_2/Pri1cr2Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_2/Pri1cr2DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1c_Tab_3">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>3</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_3/Pri1cr3DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_3/Pri1cr3Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_3/Pri1cr3Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_3/Pri1cr3DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1c_Tab_4">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>4</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_4/Pri1cr4DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_4/Pri1cr4Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_4/Pri1cr4Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_4/Pri1cr4DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1c_Tab_5">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>5</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_5/Pri1cr5DatumOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_5/Pri1cr5Stlpec2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_5/Pri1cr5Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_5/Pri1cr5DatumDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1c_Tab_6">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>6</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Odpočet podľa § 30ca ods. 1 zákona</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_6/Pri1cr6Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1c_Tab_7">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>7</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Odpočet podľa § 30ca ods. 2 zákona</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_7/Pri1cr7Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril1c_Tab_8">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>8</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>SPOLU43) odpočet podľa § 30ca ods. 1 a 2 zákona (r. 6 + r. 7)</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha1c/Pril1c_Tab_8/Pri1cr8Stlpec3'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_Priloha2">
    			<fo:block background-color='black' color='white'>PRÍLOHA č. 2 - Podiely na zisku (dividendy) a ostatné príjmy, ktoré sú súčasťou osobitného základu dane podľa § 51e zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril2_Tab1">
    			<fo:block background-color='black' color='white'>Podiely na zisku (dividendy) a ostatné príjmy, ktoré sú súčasťou osobitného základu dane podľa § 51e zákona, ak sú vyplácané od právnickej osoby, ktorá je daňovníkom štátu, s ktorým má Slovenská republika uzavretú zmluvu o zamedzení dvojitého zdanenia a od právnickej osoby, ktorá je daňovníkom štátu, s ktorým nemá Slovenská republika uzavretú zmluvu o zamedzení dvojitého zdanenia, pričom nejde o daňovníka nespolupracujúceho štátu podľa § 2 písm. x) zákona</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='446px'/><fo:table-column column-width='446px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>44) Uvádza sa suma presahujúca 500 eur. Ak je tento podiel vyplácaný viacerými pozemkovými spoločenstvami so sídlom v zahraničí, uvádza sa úhrn súm presahujúci 500 eur od každého pozemkového spoločenstva.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>45) Suma výdavku (nákladu) sa uplatňuje v hodnote splateného vkladu zistenej podľa § 25a písm. c) až f) zákona za každý podiel jednotlivo, pričom ak je hodnota splateného vkladu vyššia ako vyrovnací podiel alebo podiel na likvidačnom zostatku, na rozdiel sa neprihliada.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Pril2_Tab1_Hlavicka">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-column column-width='38px'/><fo:table-column column-width='38px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Druh príjmov (výnosov) plynúci od právnickej osoby, ktorá je daňovníkom štátu, s ktorým má Slovenská republika uzavretú zmluvu o zamedzení dvojitého zdanenia a od právnickej osoby, ktorá je daňovníkom štátu, s ktorým nemá Slovenská republika uzavretú zmluvu o zamedzení dvojitého zdanenia, pričom nejde o daňovníka nespolupracujúceho štátu podľa § 2 písm. x) zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>1 - Suma príjmov (výnosov)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>2 - Suma výdavkov (nákladov)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_01">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Podiel na zisku (dividenda)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>01</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_01/tbPr2S1_01'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_02">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Podiel člena pozemkového spoločenstva s právnou subjektivitou na zisku a na majetku 44)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>02</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_02/tbPr2S1_02'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_03">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Podiel na výsledku podnikania vyplácaný tichému spoločníkovi</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>03</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_03/tbPr2S1_03'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_04">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Vyrovnací podiel 45)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>04</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_04/tbPr2S1_04'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_04/tbPr2S2_04'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_05">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Podiel na likvidačnom zostatku 45)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>05</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_05/tbPr2S1_05'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_05/tbPr2S2_05'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_06">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Spolu</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>06</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_06/tbPr2S1_06'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab1/Pril2_Tab_06/tbPr2S2_06'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_07_09">
    			<fo:block background-color='black' color='white'>Výpočet dane z osobitného základu dane podľa § 51e zákona podielov na zisku (dividendy) a ostatných príjmov ....</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril2_07">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Osobitný základ dane podľa § 51e zákona (r. 06 stĺ. 1 - r. 06 stĺ. 2)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>07</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_07_09/Pril2_07/tbPr2_07'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_08">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Sadzba dane (v %)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>08</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_07_09/Pril2_08/tbPr2_08'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_09">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň z osobitného základu dane vypočítaná sadzbou dane podľa § 15 písm. a) piateho bodu zákona (r. 07 x r. 08) : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>09</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_07_09/Pril2_09/tbPr2_09'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_10_12">
    			<fo:block background-color='black' color='white'>Výpočet dane po vyňatí podielov na zisku (dividend) a ostatných príjmov zo zdrojov v zahraničí, ktoré sú súčasťou osobitného základu dane podľa § 51e zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril2_10">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn vyňatých podielov na zisku (dividend) a ostatných príjmov (základov dane), ktoré sú súčasťou príjmov uvedených v r. 06</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>10</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_10_12/Pril2_10/tbPr2_10'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Podiely na zisku (dividendy) a ostatné príjmy (základy dane) znížené o úhrn vyňatých podielov na zisku (r. 07 - r. 10)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>11</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_10_12/Pril2_11/tbPr2_11'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_12">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň po vyňatí podielov na zisku (dividend) a ostatných príjmov (základov dane) zo zdrojov v zahraničí (r. 11 x r. 08) : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>12</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_10_12/Pril2_12/tbPr2_12'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_13_17">
    			<fo:block background-color='black' color='white'>Výpočet dane uznanej na zápočet na daňovú povinnosť v tuzemsku zo zaplatenej dane v zahraničí z podielov na zisku (dividend) a ostatných príjmov, ktoré sú súčasťou osobitného základu dane podľa § 51e zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril2_13">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn podielov na zisku (dividend) a ostatných príjmov (základov dane), ktoré sú súčasťou príjmov uvedených v r. 06</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>13</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_13_17/Pril2_13/tbPr2_13'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_14">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zaplatená v zahraničí z príjmov z r. 13 - uvádza sa suma zaplatenej dane podľa zmluvy o zamedzení dvojitého zdanenia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>14</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_13_17/Pril2_14/tbPr2_14'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_15">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výpočet percenta dane na účely zápočtu r. 13 : [(r. 07 - r. 10) alebo r. 07] x 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>15</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_13_17/Pril2_15/tbPr2_15'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_16">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Z dane zaplatenej v zahraničí možno započítať [(r. 12 alebo r. 09) x r. 15] : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>16</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_13_17/Pril2_16/tbPr2_16'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_17">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň uznaná na zápočet (r. 16 maximálne do sumy v r. 14)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>17</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_13_17/Pril2_17/tbPr2_17'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_18">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň z osobitného základu dane podľa § 51e zákona po vyňatí a zápočte (r. 12 alebo r. 09) alebo (r. 12 - r. 17 alebo r. 09 - r. 17)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>18</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_13_17/Pril2_18/tbPr2_18'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab2">
    			<fo:block background-color='black' color='white'>Podiely na zisku (dividendy) a ostatné príjmy, ktoré sú súčasťou osobitného základu dane podľa § 51e zákona, ak sú vyplácané od právnickej osoby, ktorá je daňovníkom nespolupracujúceho štátu podľa § 2 písm. x) zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril2_Tab2_Hlavicka">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-column column-width='38px'/><fo:table-column column-width='38px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Druh príjmov (výnosov) plynúci od právnickej osoby, ktorá je daňovníkom nespolupracujúceho štátu podľa § 2 písm. x) zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>1 - Suma príjmov (výnosov)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>2 - Suma výdavkov (nákladov)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_19">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Podiel na zisku (dividenda)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>19</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_19/tbPr2S1_19'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_20">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Podiel člena pozemkového spoločenstva s právnou subjektivitou na zisku a na majetku 44)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>20</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_20/tbPr2S1_20'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_21">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Podiel na výsledku podnikania vyplácaný tichému spoločníkovi</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>21</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_21/tbPr2S1_21'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_22">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Vyrovnací podiel 45)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>22</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_22/tbPr2S1_22'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_22/tbPr2S2_22'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_23">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>23</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_23/tbPr2S1_23'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_23/tbPr2S2_23'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_Tab_24">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Spolu</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>24</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_24/tbPr2S1_24'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_Tab2/Pril2_Tab_24/tbPr2S2_24'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_25_27">
    			<fo:block background-color='black' color='white'>Výpočet dane z osobitného základu dane podľa § 51e zákona podielov na zisku (dividendy) a ostatných príjmov, ktoré sú súčasťou tohto osobitného základu dane, ktoré sú vyplácané od právnickej osoby, ktorá je daňovníkom nespolupracujúceho štátu podľa § 2 písm. x) zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril2_25">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Osobitný základ dane podľa § 51e zákona (r. 24 stĺ. 1 - r. 24 stĺ. 2)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>25</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_25_27/Pril2_25/tbPr2_25'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_26">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Sadzba dane (v %)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>26</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_25_27/Pril2_26/tbPr2_26'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_27">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň z osobitného základu dane vypočítaná sadzbou dane podľa § 15 písm. a) šiesteho bodu zákona (r. 25 x r. 26) : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>27</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_25_27/Pril2_27/tbPr2_27'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril2_28">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň z osobitného základu dane podľa § 51e zákona (r. 18 + r. 27)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>28</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha2/Pril2_25_27/Pril2_28/tbPr2_28'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_Priloha3">
    			<fo:block background-color='black' color='white'>PRÍLOHA č. 3 - Výnosy (príjmy) zo štátnych dlhopisov a štátnych pokladničných poukážok, ktoré sú súčasťou osobitného základu danepodľa § 51ea zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril3_Tab">
    			<fo:block background-color='black' color='white'>Výnosy (príjmy) zo štátnych dlhopisov a štátnych pokladničných poukážok, ktoré sú súčasťou osobitného základu dane podľa § 51ea zákona, ak sú vyplácané zo štátnych dlhopisov a štátnych pokladničných poukážok, výnosy (príjmy) vyplácané z dlhopisov a pokladničných poukážok vydaných iným členským štátom Európskej únie alebo štátom, ktorý je zmluvnou stranou Dohody o Európskom hospodárskom priestore, okrem výnosov (príjmov) vyplácaných daňovníkovi podľa § 43 ods. 3 písm. i) a v) zákona.</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril3_Tab_Hlavicka">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-column column-width='38px'/><fo:table-column column-width='38px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Druh príjmov (výnosov)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Suma príjmov (výnosov)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_Tab_01">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výnosy (príjmy) zo štátnych dlhopisov a štátnych pokladničných poukážok</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>01</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_Tab/Pril3_Tab_01/tbPr3_01'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_Tab_02">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výnosy (príjmy) vyplácané z dlhopisov a pokladničných poukážok vydaných iným členským štátom Európskej únie alebo štátom, ktorý je zmluvnou stranou Dohody o Európskom hospodárskom priestore okrem výnosov (príjmov) vyplácaných daňovníkovi podľa § 43 ods. 3 písm. i) a v) zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>02</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_Tab/Pril3_Tab_02/tbPr3_02'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_Tab_03">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Osobitný základ dane podľa § 51ea zákona r. 01 + r. 02</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>03</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_Tab/Pril3_Tab_03/tbPr3_03'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_Tab_04">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Sadzba dane (v %)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>04</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_Tab/Pril3_Tab_04/tbPr3_04'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_Tab_05">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň z osobitného základu dane vypočítaná sadzbou dane podľa § 15 písm. a) siedmeho bodu zákona (r. 03 x r. 04) : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>05</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_Tab/Pril3_Tab_05/tbPr3_05'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_Tab_Vypocet">
    			<fo:block background-color='black' color='white'>Výpočet dane po vyňatí výnosov (príjmov) vyplácaných z dlhopisov a pokladničných poukážok vydaných iným členským štátom Európskej únie alebo štátom, ktorý je zmluvnou stranou Dohody o Európskom hospodárskom priestore, okrem výnosov (príjmov) vyplácaných daňovníkovipodľa § 43 ods. 3 písm. i) a v) zákona zo zdrojov v zahraničí, ktoré sú súčasťou osobitného základu dane podľa § 51ea zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril3_Tab_06">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn vyňatých výnosov (príjmov) z dlhopisov a pokladničných poukážok (základov dane), ktoré sú súčasťou príjmov uvedených v r. 03</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>06</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_Tab_Vypocet/Pril3_Tab_06/tbPr3_06'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_Tab_07">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='179px'/><fo:table-column column-width='179px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Osobitný základ dane podľa § 51ea zákona znížený o úhrn vyňatých výnosov (príjmov) vyplácaných z dlhopisov a pokladničných poukážok (r. 03 - r. 06)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>07</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_Tab_Vypocet/Pril3_Tab_07/tbPr3_07'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_08">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň po vyňatí výnosov (príjmov) a z dlhopisov a pokladničných poukážok (základov dane) zo zdrojov v zahraničí (r. 07 x r. 04) : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>08</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_Tab_Vypocet/Pril3_08/tbPr3_08'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_VypocetDaneZapocet">
    			<fo:block background-color='black' color='white'>Výpočet dane uznanej na zápočet na daňovú povinnosť v tuzemsku zo zaplatenej dane v zahraničí z výnosov (príjmov) vyplácaných z dlhopisova pokladničných poukážok vydaných iným členským štátom Európskej únie alebo štátom, ktorý je zmluvnou stranou Dohody o Európskom hospodárskom priestore, okrem výnosov (príjmov) vyplácaných daňovníkovi podľa § 43 ods. 3 písm. i) a v) zákona zo zdrojov v zahraničí, ktoré sú súčasťou osobitného základu dane podľa § 51ea zákona</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril3_09">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn výnosov (príjmov) vyplácaných z dlhopisov a pokladničných poukážok (základov dane), ktoré sú súčasťou osobitného základu dane uvedeného v r. 03</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>09</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_VypocetDaneZapocet/Pril3_09/tbPr3_09'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_10">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň zaplatená v zahraničí z príjmov z r. 09 - uvádza sa suma zaplatenej dane podľa zmluvy o zamedzení dvojitého zdanenia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>10</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_VypocetDaneZapocet/Pril3_10/tbPr3_10'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výpočet percenta dane na účely zápočtu r. 09 : [(r. 03 - r. 06) alebo r. 03] x 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>11</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_VypocetDaneZapocet/Pril3_11/tbPr3_11'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_12">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Z dane zaplatenej v zahraničí možno započítať [(r. 08 alebo r. 05) x r. 11] : 100</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>12</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_VypocetDaneZapocet/Pril3_12/tbPr3_12'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_13">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň uznaná na zápočet (r. 12 maximálne do sumy v r. 10)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>13</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_VypocetDaneZapocet/Pril3_13/tbPr3_13'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril3_14">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daň z osobitného základu dane podľa § 51ea zákona po vyňatí a zápočte (r. 08 alebo r. 05) alebo (r. 08 - r. 13 alebo r. 05 - r. 13)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>14</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha3/Pril3_VypocetDaneZapocet/Pril3_14/tbPr3_14'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/DPFOB2025/DPFOB_Priloha4">
    			<fo:block background-color='black' color='white'>PRÍLOHA č. 4 - Údaje na účely sociálneho poistenia a zdravotného poistenia</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Pri príjmoch podľa § 6 ods. 1 a 2 zákona vediem podvojné účtovníctvo</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/DPFOB2025/DPFOB_Priloha4/chPriPrijmoch[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Pril4_Tab">
    			<fo:block background-color='black' color='white'>Na účely sociálneho poistenia a zdravotného poistenia</fo:block><fo:block color='white'>|</fo:block>
				<fo:block text-align='justify'>Ak daňovník dosahuje príjmy za výkon osobnej asistencie podľa zákona č. 447/2008 Z.z. o peňažných príspevkoch na kompenzáciu ťažkého zdravotného postihnutia a o zmene a doplnení niektorých zákonov v znení neskorších predpisov, uvádzajú sa v tejto tabuľke príjmy a výdavky, základ dane, stratu z týchto príjmov a ak vedie podvojné účtovníctvo aj základ dane a daňová strata po uplatnení pripočítateľných a odpočítateľných položiek upravujúcich základ dane alebo daňová strata daňovníka z príjmov týkajúca sa tejto činnosti, ktoré daňovník zahrnul do základu dane (čiastkového základu dane) z príjmov podľa § 6 ods. 1 a 2 zákona uvedeného v VI. oddiele.</fo:block><fo:block color='white'>|</fo:block>		<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_Tab_01">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='184px'/><fo:table-column column-width='184px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='109px'/><fo:table-column column-width='109px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Príjmy (výnosy) z výkonu osobnej asistencie uvádzané v VI. oddiele ako súčasť základu dane (čiastkového základu dane) z príjmov podľa § 6 ods. 1 a 2 zákona/§ 6 ods. 2 písm. b) zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>01</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_Tab/Pril4_Tab_01/tbPr4S1'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_Tab/Pril4_Tab_01/tbPr4S2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>/§ 6 ods. 2 písm. b)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_Tab_02">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Základ dane z príjmov z výkonu osobného asistenta (kladný rozdiel medzi príjmami a výdavkami); výsledok hospodárenia (zisk)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>02</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>+</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_Tab/Pril4_Tab_02/tbPr4_02'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_Tab_03">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Strata z príjmov z výkonu osobného asistenta (záporný rozdiel); výsledok hospodárenia (strata)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>03</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>-</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_Tab/Pril4_Tab_03/tbPr4_03'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_Tab_04">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Položky zvyšujúce základ dane (znižujúce stratu) (§ 17 až § 17b, § 17d, § 19 ods.3 písm. n) a § 21 ods. 1 písm. h) tretí bod zákona)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>04</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_Tab/Pril4_Tab_04/tbPr4_04'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_Tab_05">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Položky znižujúce základ dane (zvyšujúce stratu) (§ 17 až § 17b a § 17 d zákona)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>05</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_Tab/Pril4_Tab_05/tbPr4_05'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_SocZdravPoist">
    			<fo:block background-color='black' color='white'>Na účely sociálneho poistenia a zdravotného poistenia</fo:block><fo:block color='white'>|</fo:block>
				<fo:block font-size='10,4px' line-height='20pt'>Ak daňovník vypĺňa riadok preukázateľne zaplateného poistného z príjmov podľa § 6 ods. 1 a 2 zákona uvedeného pod tabuľkou č. 1 priznania, vypĺňa sa aj r. 11 a r. 14 bez ohľadu na spôsob uplatňovania výdavkov (podvojné účtovníctvo, jednoduché účtovníctvo, daňová evidencia podľa § 6 ods. 11 zákona, výdavky percentom z príjmov podľa § 6 ods. 10 zákona).</fo:block><fo:block color='white'>|</fo:block>		<xsl:for-each select="./Pril4_08">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Úhrn povinného poistného (§ 5 ods. 8 zákona)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>08</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_SocZdravPoist/Pril4_08/tbPr4_08'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_zToho">
    			<fo:block background-color='black' color='white'>z toho</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril4_09">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>úhrn poistného na sociálne poistenie (zabezpečenie)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>09</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_SocZdravPoist/Pril4_zToho/Pril4_09/tbPr4_09'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_10">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>úhrn poistného na zdravotné poistenie</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>10</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_SocZdravPoist/Pril4_zToho/Pril4_10/tbPr4_10'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_11">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Preukázateľne zaplatené poistné na sociálne poistenie z príjmov podľa § 6 ods. 1 a 2 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>11</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_SocZdravPoist/Pril4_11/tbPr4_11'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_zToho12">
    			<fo:block background-color='black' color='white'>z toho</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril4_12">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>preukázateľne zaplatené poistné na dobrovoľné sociálne poistenie</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>12</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_SocZdravPoist/Pril4_zToho12/Pril4_12/tbPr4_12'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_13">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Preukázateľne zaplatené poistné na zdravotné poistenie z príjmov podľa § 6 ods. 1 a 2 zákona</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>13</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_SocZdravPoist/Pril4_13/tbPr4_13'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_zToho14">
    			<fo:block background-color='black' color='white'>z toho</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./Pril4_14">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='193px'/><fo:table-column column-width='193px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>preukázateľne zaplatené preddavky na zdravotné poistenie z príjmov podľa § 6 ods. 1 a 2 zákona príslušné k zdaňovaciemu obdobiu, za ktoré sa podáva daňové priznanie</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>14</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_SocZdravPoist/Pril4_zToho14/Pril4_14/tbPr4_14'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_15">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='171px'/><fo:table-column column-width='171px'/><fo:table-column column-width='12px'/><fo:table-column column-width='12px'/><fo:table-column column-width='130px'/><fo:table-column column-width='130px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Výnosy podľa § 6 ods. 1 a 2 zákona (vypĺňa sa, len ak daňovník vedie podvojné účtovníctvo a nevypĺňa r. 1 až 3 a r. 5 až 9 v tabuľke č. 1)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>15</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_15/tbPr4_15'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./Pril4_Datum">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='34px'/><fo:table-column column-width='34px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Dátum</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/DPFOB2025/DPFOB_Priloha4/Pril4_Datum/dtpDatumSoc'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
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
