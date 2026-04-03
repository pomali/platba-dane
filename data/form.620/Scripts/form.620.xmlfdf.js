var xml;
var stringBuilder;
//**************************************************
function createxmlfinal() {
    stringBuilder = new $.StringBuilder();

    let indent = 0;

    stringBuilder.appendLine(applyIndent('<?xml version="1.0" encoding="utf-8"?>', indent));
    stringBuilder.appendLine(applyIndent('<dokument>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<hlavicka>', indent));
    indent++;

    stringBuilder.appendLine(applyIndent('<DICaleboRodneCislo>' + htmlEncode($('#cmbDic1').val()) + '</DICaleboRodneCislo>', indent));
    stringBuilder.appendLine(applyIndent('<datumNarodenia>' + htmlEncode($('#dtpDatumNarodenia2').val()) + '</datumNarodenia>', indent));

    stringBuilder.appendLine(applyIndent('<typDP>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<rdp>' + ($('#rbDruhVykazuRiadny').is(':checked') ? '1' : '0') + '</rdp>', indent));
    stringBuilder.appendLine(applyIndent('<odp>' + ($('#rbDruhVykazuOpravny').is(':checked') ? '1' : '0') + '</odp>', indent));
    stringBuilder.appendLine(applyIndent('<ddp>' + ($('#rbDruhVykazuDodatocny').is(':checked') ? '1' : '0') + '</ddp>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</typDP>', indent));

    stringBuilder.appendLine(applyIndent('<zdanovacieObdobie>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<rok>' + htmlEncode($('#cmbRok').val()) + '</rok>', indent));
    stringBuilder.appendLine(applyIndent('<datumDDP>' + htmlEncode($('#tpDatumDDP').val()) + '</datumDDP>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</zdanovacieObdobie>', indent));
    stringBuilder.appendLine(applyIndent('<priezvisko>' + htmlEncode($('#tbPriezvisko3').val()) + '</priezvisko>', indent));
    stringBuilder.appendLine(applyIndent('<meno>' + htmlEncode($('#tbMeno4').val()) + '</meno>', indent));
    stringBuilder.appendLine(applyIndent('<titul>' + htmlEncode($('#tbTitul5_1').val()) + '</titul>', indent));
    stringBuilder.appendLine(applyIndent('<titulZa>' + htmlEncode($('#tbTitul5_2').val()) + '</titulZa>', indent));
    stringBuilder.appendLine(applyIndent('<adresaTrvPobytu>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<ulica>' + htmlEncode($('#tbUlica6').val()) + '</ulica>', indent));
    stringBuilder.appendLine(applyIndent('<cislo>' + htmlEncode($('#tbCisloDomu7').val()) + '</cislo>', indent));
    stringBuilder.appendLine(applyIndent('<psc>' + htmlEncode($('#tbPSC8').val()) + '</psc>', indent));
    stringBuilder.appendLine(applyIndent('<obec>' + htmlEncode($('#tbObec9').val()) + '</obec>', indent));
    stringBuilder.appendLine(applyIndent('<stat>' + htmlEncode($('#tbStat10').val()) + '</stat>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</adresaTrvPobytu>', indent));
    stringBuilder.appendLine(applyIndent('<nerezident>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<nerezident>' + (document.getElementById("cbNerezident").checked ? '1' : '0') + '</nerezident>', indent));
    stringBuilder.appendLine(applyIndent('<datumOd>' + htmlEncode($('#ObmedzenaPovinnostOd').val()) + '</datumOd>', indent));
    stringBuilder.appendLine(applyIndent('<datumDo>' + htmlEncode($('#ObmedzenaPovinnostDo').val()) + '</datumDo>', indent));
    stringBuilder.appendLine(applyIndent('<TIN>' + htmlEncode($('#TIN').val()) + '</TIN>'), indent);
    indent--;
    stringBuilder.appendLine(applyIndent('</nerezident>', indent));
    stringBuilder.appendLine(applyIndent('<adresaObvPobytu>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<ulica>' + htmlEncode($('#tbUlica12').val()) + '</ulica>', indent));
    stringBuilder.appendLine(applyIndent('<cislo>' + htmlEncode($('#tbCisloDomu13').val()) + '</cislo>', indent));
    stringBuilder.appendLine(applyIndent('<psc>' + htmlEncode($('#tbPSC14').val()) + '</psc>', indent));
    stringBuilder.appendLine(applyIndent('<obec>' + htmlEncode($('#tbObec15').val()) + '</obec>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</adresaObvPobytu>', indent));
    stringBuilder.appendLine(applyIndent('<zastupca>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<priezvisko>' + htmlEncode($('#tbPriezvisko16').val()) + '</priezvisko>', indent));
    stringBuilder.appendLine(applyIndent('<meno>' + htmlEncode($('#tbMeno17').val()) + '</meno>', indent));
    stringBuilder.appendLine(applyIndent('<titul>' + htmlEncode($('#tbTitul18P').val()) + '</titul>', indent));
    stringBuilder.appendLine(applyIndent('<titulZa>' + htmlEncode($('#tbTitul18Z').val()) + '</titulZa>', indent));
    stringBuilder.appendLine(applyIndent('<rodneCislo>' + htmlEncode($('#tbRodneCislo19_1').val() + $('#tbRodneCislo19_2').val()) + '</rodneCislo>', indent));
    stringBuilder.appendLine(applyIndent('<ulica>' + htmlEncode($('#tbUlica20').val()) + '</ulica>', indent));
    stringBuilder.appendLine(applyIndent('<cislo>' + htmlEncode($('#tbCislo21').val()) + '</cislo>', indent));
    stringBuilder.appendLine(applyIndent('<psc>' + htmlEncode($('#tbPSC22').val()) + '</psc>', indent));
    stringBuilder.appendLine(applyIndent('<obec>' + htmlEncode($('#tbObec23').val()) + '</obec>', indent));
    stringBuilder.appendLine(applyIndent('<stat>' + htmlEncode($('#tbStat24').val()) + '</stat>', indent));
    stringBuilder.appendLine(applyIndent('<tel>' + htmlEncode($('#t25Telefon').val()) + '</tel>', indent));
    stringBuilder.appendLine(applyIndent('<email>' + htmlEncode($('#t26Mail').val()) + '</email>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</zastupca>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</hlavicka>', indent));
    stringBuilder.appendLine(applyIndent('<telo>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<r27>' + ($('#cbR27').is(':checked') ? '1' : '0') + '</r27>', indent));
    stringBuilder.appendLine(applyIndent('<r28>' + htmlEncode($('#t28').val()) + '</r28>', indent));
    stringBuilder.appendLine(applyIndent('<r29>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<priezviskoMeno>' + htmlEncode($('#tPriezvisko29_1_1').val()) + '</priezviskoMeno>', indent));
    stringBuilder.appendLine(applyIndent('<rodneCislo>' + htmlEncode($('#tbRodneCisloR29_2').val() + $('#tbRodneCisloR29_3').val()) + '</rodneCislo>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</r29>', indent));
    stringBuilder.appendLine(applyIndent('<r30>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<uplatnujemNaManzelku>' + ($('#chr30').is(':checked') ? '1' : '0') + '</uplatnujemNaManzelku>', indent));
    stringBuilder.appendLine(applyIndent('<vlastnePrijmy>' + htmlEncode($('#tPrijmy29_4').val()) + '</vlastnePrijmy>', indent));
    stringBuilder.appendLine(applyIndent('<pocetMesiacov>' + htmlEncode($('#tMesiace29_5').val()) + '</pocetMesiacov>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</r30>', indent));
    stringBuilder.appendLine(applyIndent('<r31>', indent));
    indent++;
    for (var i = 0; i < 20; i++) {

        if (i == 0) {
            stringBuilder.appendLine(applyIndent('<dieta>', indent));
            indent++;
            stringBuilder.appendLine(applyIndent('<priezviskoMeno>' + htmlEncode($('#tPriezvisko31_1_1').val()) + '</priezviskoMeno>', indent));
            stringBuilder.appendLine(applyIndent('<rodneCislo>' + htmlEncode($('#tbRodneCislo31_1_2').val() + $('#tbRodneCislo31_1_3').val()) + '</rodneCislo>', indent));
            for (var j = 0; j < 13; j++) {
                var index = '' + j;
                if (j < 10) index = '0' + index;
                stringBuilder.appendLine(applyIndent('<m' + index + '>' + ($('#cbM' + index + '_1').is(':checked') ? '1' : '0') + '</m' + index + '>', indent));
            }
            indent--;
            stringBuilder.appendLine(applyIndent('</dieta>', indent));
        } else {

            if (!document.getElementById("tPriezvisko31_1_1_Repeating_" + i)) break;
            stringBuilder.appendLine(applyIndent('<dieta>', indent));
            indent++;
            stringBuilder.appendLine(applyIndent('<priezviskoMeno>' + htmlEncode($('#tPriezvisko31_1_1_Repeating_' + i).val()) + '</priezviskoMeno>', indent));
            stringBuilder.appendLine(applyIndent('<rodneCislo>' + htmlEncode($('#tbRodneCislo31_1_2_Repeating_' + i).val() + $('#tbRodneCislo31_1_3_Repeating_' + i).val()) + '</rodneCislo>', indent));
            for (var j = 0; j < 13; j++) {
                var index = '' + j;
                if (j < 10) index = '0' + index;
                stringBuilder.appendLine(applyIndent('<m' + index + '>' + ($('#cbM' + index + '_1_Repeating_' + i).is(':checked') ? '1' : '0') + '</m' + index + '>', indent));
            }
            indent--;
            stringBuilder.appendLine(applyIndent('</dieta>', indent));

        }
    }
    indent--;
    stringBuilder.appendLine(applyIndent('</r31>', indent));
    stringBuilder.appendLine('\t<r31a>' + (document.getElementById("cbViacAko4").checked ? '1' : '0') + '</r31a>');
    stringBuilder.appendLine('\t<uplatnujemPar33Ods8>' + (document.getElementById("cbUplatPostup").checked ? '1' : '0') + '</uplatnujemPar33Ods8>');

    stringBuilder.appendLine('\t<r32>');
    stringBuilder.appendLine('\t\t<priezviskoMeno>' + htmlEncode($('#tbPriezvisko32_1_1').val()) + '</priezviskoMeno>');
    stringBuilder.appendLine('\t\t<rodneCislo>' + htmlEncode($('#tbRodneCislo32_1_2').val()) + htmlEncode($('#tbRodneCislo32_1_3').val()) + '</rodneCislo>');
    stringBuilder.appendLine('\t\t<m00>' + (document.getElementById("cbM1_12_1").checked ? '1' : '0') + '</m00>');
    stringBuilder.appendLine('\t\t<m01>' + (document.getElementById("cbM1_1").checked ? '1' : '0') + '</m01>');
    stringBuilder.appendLine('\t\t<m02>' + (document.getElementById("cbM1_2").checked ? '1' : '0') + '</m02>');
    stringBuilder.appendLine('\t\t<m03>' + (document.getElementById("cbM1_3").checked ? '1' : '0') + '</m03>');
    stringBuilder.appendLine('\t\t<m04>' + (document.getElementById("cbM1_4").checked ? '1' : '0') + '</m04>');
    stringBuilder.appendLine('\t\t<m05>' + (document.getElementById("cbM1_5").checked ? '1' : '0') + '</m05>');
    stringBuilder.appendLine('\t\t<m06>' + (document.getElementById("cbM1_6").checked ? '1' : '0') + '</m06>');
    stringBuilder.appendLine('\t\t<m07>' + (document.getElementById("cbM1_7").checked ? '1' : '0') + '</m07>');
    stringBuilder.appendLine('\t\t<m08>' + (document.getElementById("cbM1_8").checked ? '1' : '0') + '</m08>');
    stringBuilder.appendLine('\t\t<m09>' + (document.getElementById("cbM1_9").checked ? '1' : '0') + '</m09>');
    stringBuilder.appendLine('\t\t<m10>' + (document.getElementById("cbM1_10").checked ? '1' : '0') + '</m10>');
    stringBuilder.appendLine('\t\t<m11>' + (document.getElementById("cbM1_11").checked ? '1' : '0') + '</m11>');
    stringBuilder.appendLine('\t\t<m12>' + (document.getElementById("cbM1_12").checked ? '1' : '0') + '</m12>');
    stringBuilder.appendLine('\t\t<druhaOsobaPodalaDPvSR>' + (document.getElementById("cbOznDOO").checked ? '1' : '0') + '</druhaOsobaPodalaDPvSR>');
    stringBuilder.appendLine('\t\t<dokladRocZuct>' + (document.getElementById("cbKopDokRZD").checked ? '1' : '0') + '</dokladRocZuct>');
    stringBuilder.appendLine('\t\t<dokladVyskaDane>' + (document.getElementById("cbKopDokVZD").checked ? '1' : '0') + '</dokladVyskaDane>');
    stringBuilder.appendLine('\t</r32>');
    stringBuilder.appendLine('\t<r32a>' + htmlEncode($('#t32a').val()) + '</r32a>');

    stringBuilder.appendLine(applyIndent('<r33>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<uplatnujemBonusPar33a>' + ($('#chr33').is(':checked') ? '1' : '0') + '</uplatnujemBonusPar33a>', indent));
    stringBuilder.appendLine(applyIndent('<zaplateneUroky>' + htmlEncode($('#t33_1').val()) + '</zaplateneUroky>', indent));
    stringBuilder.appendLine(applyIndent('<pocetMesiacov>' + htmlEncode($('#t33_2').val()) + '</pocetMesiacov>', indent));
    stringBuilder.appendLine(applyIndent('<datumZacatiaUroceniaUveru>' + htmlEncode($('#DatumZacUroUve').val()) + '</datumZacatiaUroceniaUveru>', indent));
    stringBuilder.appendLine(applyIndent('<datumUzavretiaZmluvyOUvere>' + htmlEncode($('#DatumUzavZmluUverByv').val()) + '</datumUzavretiaZmluvyOUvere>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</r33>', indent));
    stringBuilder.appendLine(applyIndent('<r34>' + htmlEncode($('#t34').val()) + '</r34>', indent));
    stringBuilder.appendLine(applyIndent('<r35>' + htmlEncode($('#t35').val()) + '</r35>', indent));
    stringBuilder.appendLine(applyIndent('<r36>' + htmlEncode($('#tbR36').val()) + '</r36>', indent));
    stringBuilder.appendLine(applyIndent('<r37>' + htmlEncode($('#tbR37').val()) + '</r37>', indent));
    stringBuilder.appendLine(applyIndent('<r38>' + htmlEncode($('#tbR38').val()) + '</r38>', indent));
    stringBuilder.appendLine(applyIndent('<r39>' + htmlEncode($('#t39').val()) + '</r39>', indent));
    stringBuilder.appendLine(applyIndent('<r40>' + htmlEncode($('#t40').val()) + '</r40>', indent));
    stringBuilder.appendLine(applyIndent('<r41>' + htmlEncode($('#t41').val()) + '</r41>', indent));
    stringBuilder.appendLine(applyIndent('<r42>' + htmlEncode($('#t42').val()) + '</r42>', indent));
    stringBuilder.appendLine(applyIndent('<r43>' + htmlEncode($('#t43').val()) + '</r43>', indent));
    stringBuilder.appendLine(applyIndent('<r44>' + htmlEncode($('#t44').val()) + '</r44>', indent));
    stringBuilder.appendLine(applyIndent('<r45>' + htmlEncode($('#t45').val()) + '</r45>', indent));
    stringBuilder.appendLine(applyIndent('<r46>' + htmlEncode($('#t46').val()) + '</r46>', indent));
    stringBuilder.appendLine(applyIndent('<r47>' + htmlEncode($('#t47').val()) + '</r47>', indent));
    stringBuilder.appendLine(applyIndent('<r48>' + htmlEncode($('#t48').val()) + '</r48>', indent));
    stringBuilder.appendLine(applyIndent('<r49>' + htmlEncode($('#t49').val()) + '</r49>', indent));
    stringBuilder.appendLine(applyIndent('<r50>' + htmlEncode($('#t50').val()) + '</r50>', indent));
    stringBuilder.appendLine(applyIndent('<r51>' + htmlEncode($('#t51').val()) + '</r51>', indent));
    stringBuilder.appendLine(applyIndent('<r52>' + htmlEncode($('#t52').val()) + '</r52>', indent));
    stringBuilder.appendLine(applyIndent('<r53>' + htmlEncode($('#t53').val()) + '</r53>', indent));
    stringBuilder.appendLine(applyIndent('<r54>' + htmlEncode($('#t54').val()) + '</r54>', indent));
    stringBuilder.appendLine(applyIndent('<r55>' + htmlEncode($('#t55').val()) + '</r55>', indent));
    stringBuilder.appendLine(applyIndent('<r56>' + htmlEncode($('#t56').val()) + '</r56>', indent));
    stringBuilder.appendLine(applyIndent('<r56a>' + htmlEncode($('#t56a').val()) + '</r56a>', indent));
    stringBuilder.appendLine(applyIndent('<r57>' + htmlEncode($('#t57').val()) + '</r57>', indent));
    stringBuilder.appendLine(applyIndent('<r58>' + htmlEncode($('#t58').val()) + '</r58>', indent));
    stringBuilder.appendLine(applyIndent('<r59>' + htmlEncode($('#t59').val()) + '</r59>', indent));
    stringBuilder.appendLine(applyIndent('<r60>' + htmlEncode($('#t60').val()) + '</r60>', indent));
    stringBuilder.appendLine(applyIndent('<r61>' + htmlEncode($('#t61').val()) + '</r61>', indent));
    stringBuilder.appendLine(applyIndent('<r62>' + htmlEncode($('#t62').val()) + '</r62>', indent));
    stringBuilder.appendLine(applyIndent('<r63>' + htmlEncode($('#t63').val()) + '</r63>', indent));
    stringBuilder.appendLine(applyIndent('<r64>' + htmlEncode($('#t64').val()) + '</r64>', indent));
    stringBuilder.appendLine(applyIndent('<r65>' + htmlEncode($('#t65').val()) + '</r65>', indent));
    stringBuilder.appendLine(applyIndent('<r66>' + htmlEncode($('#t66').val()) + '</r66>', indent));
    stringBuilder.appendLine(applyIndent('<r67>' + htmlEncode($('#t67').val()) + '</r67>', indent));
    stringBuilder.appendLine(applyIndent('<r68>' + htmlEncode($('#t68').val()) + '</r68>', indent));
    stringBuilder.appendLine(applyIndent('<r69>' + htmlEncode($('#t69').val()) + '</r69>', indent));
    stringBuilder.appendLine(applyIndent('<r70>' + htmlEncode($('#t70').val()) + '</r70>', indent));
    stringBuilder.appendLine(applyIndent('<r71>' + htmlEncode($('#t71').val()) + '</r71>', indent));
    stringBuilder.appendLine(applyIndent('<r72>' + htmlEncode($('#t72').val()) + '</r72>', indent));
    stringBuilder.appendLine(applyIndent('<r73>' + htmlEncode($('#t73').val()) + '</r73>', indent));
    stringBuilder.appendLine(applyIndent('<r74>' + htmlEncode($('#t74').val()) + '</r74>', indent));
    stringBuilder.appendLine(applyIndent('<r75>' + htmlEncode($('#t75').val()) + '</r75>', indent));
    stringBuilder.appendLine(applyIndent('<r76>' + htmlEncode($('#t76').val()) + '</r76>', indent));
    stringBuilder.appendLine(applyIndent('<r77>' + htmlEncode($('#t77').val()) + '</r77>', indent));
    stringBuilder.appendLine(applyIndent('<r78>' + htmlEncode($('#t78').val()) + '</r78>', indent));
    stringBuilder.appendLine(applyIndent('<r79>' + htmlEncode($('#t79').val()) + '</r79>', indent));
    stringBuilder.appendLine(applyIndent('<r80>' + htmlEncode($('#t80').val()) + '</r80>', indent));
    stringBuilder.appendLine('\t<r81>');
    stringBuilder.appendLine('\t\t<neuplatnujemPar50>' + (document.getElementById("cbParagraf50").checked ? '1' : '0') + '</neuplatnujemPar50>');
    stringBuilder.appendLine('\t\t<ico>' + htmlEncode($('#ico76').val()) + '</ico>');
    stringBuilder.appendLine('\t\t<obchodneMeno>');
    stringBuilder.appendLine('\t\t\t<riadok><![CDATA[' + $('#ObchMeno76').val().substr(0, 37) + ']]></riadok>');
    stringBuilder.appendLine('\t\t\t<riadok><![CDATA[' + $('#ObchMeno76').val().substr(37, 37) + ']]></riadok>');
    stringBuilder.appendLine('\t\t</obchodneMeno>');
    stringBuilder.appendLine('\t\t<splnam3per>' + (document.getElementById("cbSplnam3per").checked ? '1' : '0') + '</splnam3per>');
    stringBuilder.appendLine('\t\t<suhlasSoZaslanim>' + (document.getElementById("chb_SuhlasUdaje").checked ? '1' : '0') + '</suhlasSoZaslanim>');
    stringBuilder.appendLine('\t</r81>');
    stringBuilder.appendLine(applyIndent('<r82>' + htmlEncode($('#t82').val()) + '</r82>', indent));
    stringBuilder.appendLine('\t<r83>');
    stringBuilder.appendLine('\t\t<neuplatnujemPar50aa>' + (document.getElementById("cbParagraf50aa").checked ? '1' : '0') + '</neuplatnujemPar50aa>');
    stringBuilder.appendLine('\t\t<rodicA>');
    stringBuilder.appendLine('\t\t\t<rodneCislo>' + htmlEncode($('#tbRodneCislo83A_1').val()) + htmlEncode($('#tbRodneCislo83A_2').val()) + '</rodneCislo>');
    stringBuilder.appendLine('\t\t\t<priezvisko>' + htmlEncode($('#Priezvisko83A').val()) + '</priezvisko>');
    stringBuilder.appendLine('\t\t\t<meno>' + htmlEncode($('#Meno83A').val()) + '</meno>');
    stringBuilder.appendLine('\t\t</rodicA>');
    stringBuilder.appendLine('\t\t<rodicB>');
    stringBuilder.appendLine('\t\t\t<rodneCislo>' + htmlEncode($('#tbRodneCislo83B_1').val()) + htmlEncode($('#tbRodneCislo83B_2').val()) + '</rodneCislo>');
    stringBuilder.appendLine('\t\t\t<priezvisko>' + htmlEncode($('#Priezvisko83B').val()) + '</priezvisko>');
    stringBuilder.appendLine('\t\t\t<meno>' + htmlEncode($('#Meno83B').val()) + '</meno>');
    stringBuilder.appendLine('\t\t</rodicB>');
    stringBuilder.appendLine('\t\t<bolZverenyDoStarostlivosti>' + (document.getElementById("chNahrStar").checked ? '1' : '0') + '</bolZverenyDoStarostlivosti>');
    stringBuilder.appendLine('\t</r83>');
    stringBuilder.appendLine(applyIndent('<osobitneZaznamy>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<uvadza>' + ($('#cbUvadzam').is(':checked') ? '1' : '0') + '</uvadza>', indent));
    for (var i = 0; i < 20; i++) {
        if (i == 0) {
            stringBuilder.appendLine(applyIndent('<udajeOprijmoch>', indent));
            indent++;
            stringBuilder.appendLine(applyIndent('<kodStatu>' + htmlEncode($('#KodStatu').val()) + '</kodStatu>', indent));
            stringBuilder.appendLine(applyIndent('<prijmy>' + htmlEncode($('#cast9prijmy1').val()) + '</prijmy>', indent));
            stringBuilder.appendLine(applyIndent('<vydavky>' + htmlEncode($('#cast9vydavky1').val()) + '</vydavky>', indent));
            stringBuilder.appendLine(applyIndent('<zTohoVydavky>' + htmlEncode($('#cast9vydavky2').val()) + '</zTohoVydavky>', indent));
            indent--;
            stringBuilder.appendLine(applyIndent('</udajeOprijmoch>', indent));
        } else {
            if (!document.getElementById("KodStatu_Repeating_" + i)) break;

            stringBuilder.appendLine(applyIndent('<udajeOprijmoch>', indent));
            indent++;
            stringBuilder.appendLine(applyIndent('<kodStatu>' + htmlEncode($('#KodStatu_Repeating_' + i).val()) + '</kodStatu>', indent));
            stringBuilder.appendLine(applyIndent('<prijmy>' + htmlEncode($('#cast9prijmy1_Repeating_' + i).val()) + '</prijmy>', indent));
            stringBuilder.appendLine(applyIndent('<vydavky>' + htmlEncode($('#cast9vydavky1_Repeating_' + i).val()) + '</vydavky>', indent));
            stringBuilder.appendLine(applyIndent('<zTohoVydavky>' + htmlEncode($('#cast9vydavky2_Repeating_' + i).val()) + '</zTohoVydavky>', indent));
            indent--;
            stringBuilder.appendLine(applyIndent('</udajeOprijmoch>', indent));
        }
    }
    stringBuilder.appendLine(applyIndent('<zaznamy><![CDATA[' + ($('#OsobitneZaznamy').val()) + ']]></zaznamy>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</osobitneZaznamy>', indent));
    stringBuilder.appendLine(applyIndent('<r84>' + htmlEncode($('#t84').val()) + '</r84>', indent));
    stringBuilder.appendLine(applyIndent('<r85>' + htmlEncode($('#t85').val()) + '</r85>', indent));
    stringBuilder.appendLine(applyIndent('<r85a>' + htmlEncode($('#t85a').val()) + '</r85a>', indent));
    stringBuilder.appendLine(applyIndent('<r86>' + htmlEncode($('#t86').val()) + '</r86>', indent));
    stringBuilder.appendLine(applyIndent('<datumVyhlasenia>' + htmlEncode($('#tbDatumVyhlasenie').val()) + '</datumVyhlasenia>', indent));
    stringBuilder.appendLine(applyIndent('<danovyPreplatokBonus>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<vyplatitDanovyBonus>' + ($('#cbVyplatitRozdiel').is(':checked') ? '1' : '0') + '</vyplatitDanovyBonus>', indent));
    stringBuilder.appendLine(applyIndent('<vyplatitZamPremiu>' + ($('#cbVyplatitZamPremiu').is(':checked') ? '1' : '0') + '</vyplatitZamPremiu>', indent));
    stringBuilder.appendLine(applyIndent('<vyplatitDanovyBonusUroky>' + ($('#cbBonus').is(':checked') ? '1' : '0') + '</vyplatitDanovyBonusUroky>', indent));
    stringBuilder.appendLine(applyIndent('<vratitDanPreplatok>' + ($('#cbVratit').is(':checked') ? '1' : '0') + '</vratitDanPreplatok>', indent));
    stringBuilder.appendLine(applyIndent('<sposobPlatby>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<poukazka>' + ($('#cbPoukazkaDB').is(':checked') ? '1' : '0') + '</poukazka>', indent));
    stringBuilder.appendLine(applyIndent('<ucet>' + ($('#cbUcetDB').is(':checked') ? '1' : '0') + '</ucet>', indent));
    stringBuilder.appendLine(applyIndent('<ucetZahranicnyIny>' + ($('#cbUcetZahDB').is(':checked') ? '1' : '0') + '</ucetZahranicnyIny>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</sposobPlatby>', indent));
    stringBuilder.appendLine(applyIndent('<bankovyUcet>', indent));
    indent++;
    stringBuilder.appendLine(applyIndent('<IBAN>' + htmlEncode($('#cast11IBAN').val()) + '</IBAN>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</bankovyUcet>', indent));
    stringBuilder.appendLine(applyIndent('<datum>' + htmlEncode($('#dtpDatumDB').val()) + '</datum>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</danovyPreplatokBonus>', indent));

    indent--;
    stringBuilder.appendLine(applyIndent('</telo>', indent));
    indent--;
    stringBuilder.appendLine(applyIndent('</dokument>', indent));
    return stringBuilder.string();
}

function applyIndent(txt, indent) {
    let applied = txt;
    for (let i = 0; i < indent; i++) {
        applied = "  " + applied;
    }
    return applied;
}

var xml;
var stringBuilder;
//**************************************************
var xmlDoc;
var txt;
function loadxmlfinal(txt) {
    //txt = $("#xmlko").val();

    if (window.DOMParser) {
        parser = new DOMParser();
        xmlDoc = parser.parseFromString(txt, "text/xml");
    }
    else // Internet Explorer
    {
        xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
        xmlDoc.async = false;
        xmlDoc.loadXML(txt);
    }

    var dokument = xmlDoc.getElementsByTagName('dokument')[0];
    if (dokument) {
        var hlavicka = dokument.getElementsByTagName('hlavicka')[0];
        if (hlavicka) {
            $('#cmbDic1').val(getElementsValXml(hlavicka.getElementsByTagName('DICaleboRodneCislo')[0]));
            $('#dtpDatumNarodenia2').val(getElementsValXml(hlavicka.getElementsByTagName('datumNarodenia')[0]));
            var typDP = hlavicka.getElementsByTagName('typDP')[0];
            if (typDP) {
                $('#rbDruhVykazuRiadny').attr('checked', getElementsValXml(typDP.getElementsByTagName('rdp')[0]) == 1 ? true : false).change();
                $('#rbDruhVykazuOpravny').attr('checked', getElementsValXml(typDP.getElementsByTagName('odp')[0]) == 1 ? true : false).change();
                $('#rbDruhVykazuDodatocny').attr('checked', getElementsValXml(typDP.getElementsByTagName('ddp')[0]) == 1 ? true : false).change();
            }
            var zdanovacieObdobie = hlavicka.getElementsByTagName('zdanovacieObdobie')[0];
            if (zdanovacieObdobie) {
                $('#cmbRok').val(getElementsValXml(hlavicka.getElementsByTagName('rok')[0])).change();
                $('#tpDatumDDP').val(getElementsValXml(hlavicka.getElementsByTagName('datumDDP')[0]));
            }
            $('#tbPriezvisko3').val(getElementsValXml(hlavicka.getElementsByTagName('priezvisko')[0]));
            $('#tbMeno4').val(getElementsValXml(hlavicka.getElementsByTagName('meno')[0]));
            $('#tbTitul5_1').val(getElementsValXml(hlavicka.getElementsByTagName('titul')[0]));
            $('#tbTitul5_2').val(getElementsValXml(hlavicka.getElementsByTagName('titulZa')[0]));
            var adresaTrvPobytu = hlavicka.getElementsByTagName('adresaTrvPobytu')[0];
            if (adresaTrvPobytu) {
                $('#tbUlica6').val(getElementsValXml(adresaTrvPobytu.getElementsByTagName('ulica')[0]));
                $('#tbCisloDomu7').val(getElementsValXml(adresaTrvPobytu.getElementsByTagName('cislo')[0]));
                $('#tbPSC8').val(getElementsValXml(adresaTrvPobytu.getElementsByTagName('psc')[0]));
                $('#tbObec9').val(getElementsValXml(adresaTrvPobytu.getElementsByTagName('obec')[0]));
                $('#tbStat10').val(getElementsValXml(adresaTrvPobytu.getElementsByTagName('stat')[0]));
            }
            var nerezident = hlavicka.getElementsByTagName('nerezident')[0];
            if (nerezident) {
                $('#cbNerezident').attr('checked', getElementsValXml(nerezident.getElementsByTagName('nerezident')[0]) == 1 ? true : false);
                $('#ObmedzenaPovinnostOd').val(getElementsValXml(nerezident.getElementsByTagName('datumOd')[0]));
                $('#ObmedzenaPovinnostDo').val(getElementsValXml(nerezident.getElementsByTagName('datumDo')[0]));
                $('#TIN').val(getElementsValXml(nerezident.getElementsByTagName('TIN')[0]));
            }
            var adresaObvPobytu = hlavicka.getElementsByTagName('adresaObvPobytu')[0];
            if (adresaObvPobytu) {
                $('#tbUlica12').val(getElementsValXml(adresaObvPobytu.getElementsByTagName('ulica')[0]));
                $('#tbCisloDomu13').val(getElementsValXml(adresaObvPobytu.getElementsByTagName('cislo')[0]));
                $('#tbPSC14').val(getElementsValXml(adresaObvPobytu.getElementsByTagName('psc')[0]));
                $('#tbObec15').val(getElementsValXml(adresaObvPobytu.getElementsByTagName('obec')[0]));
            }
            var zastupca = hlavicka.getElementsByTagName('zastupca')[0];
            if (zastupca) {
                $('#tbPriezvisko16').val(getElementsValXml(zastupca.getElementsByTagName('priezvisko')[0]));
                $('#tbMeno17').val(getElementsValXml(zastupca.getElementsByTagName('meno')[0]));
                $('#tbTitul18P').val(getElementsValXml(zastupca.getElementsByTagName('titul')[0]));
                $('#tbTitul18Z').val(getElementsValXml(zastupca.getElementsByTagName('titulZa')[0]));
                $('#tbRodneCislo19_1').val(getElementsValXml(zastupca.getElementsByTagName('rodneCislo')[0]).substring(0, 6));
                $('#tbRodneCislo19_2').val(getElementsValXml(zastupca.getElementsByTagName('rodneCislo')[0]).substring(6));
                $('#tbUlica20').val(getElementsValXml(zastupca.getElementsByTagName('ulica')[0]));
                $('#tbCislo21').val(getElementsValXml(zastupca.getElementsByTagName('cislo')[0]));
                $('#tbPSC22').val(getElementsValXml(zastupca.getElementsByTagName('psc')[0]));
                $('#tbObec23').val(getElementsValXml(zastupca.getElementsByTagName('obec')[0]));
                $('#tbStat24').val(getElementsValXml(zastupca.getElementsByTagName('stat')[0]));
                $('#t25Telefon').val(getElementsValXml(zastupca.getElementsByTagName('tel')[0]));
                $('#t26Mail').val(getElementsValXml(zastupca.getElementsByTagName('email')[0]));
            }
        }
        var telo = dokument.getElementsByTagName('telo')[0];
        if (telo) {
            $('#cbR27').attr('checked', getElementsValXml(telo.getElementsByTagName('r27')[0]) == 1 ? true : false);
            $('#t28').val(getElementsValXml(telo.getElementsByTagName('r28')[0]));
            var r29 = telo.getElementsByTagName('r29')[0];
            if (r29) {
                $('#tPriezvisko29_1_1').val(getElementsValXml(r29.getElementsByTagName('priezviskoMeno')[0]));
                if (getElementsValXml(r29.getElementsByTagName('rodneCislo')[0]).length >= 9) {
                    $('#tbRodneCisloR29_2').val(getElementsValXml(r29.getElementsByTagName('rodneCislo')[0]).substring(0, 6));
                    $('#tbRodneCisloR29_3').val(getElementsValXml(r29.getElementsByTagName('rodneCislo')[0]).substring(6));
                } else {
                    $('#tbRodneCisloR29_2').val(getElementsValXml(r29.getElementsByTagName('rodneCislo')[0]).substring(0, 4));
                    $('#tbRodneCisloR29_3').val(getElementsValXml(r29.getElementsByTagName('rodneCislo')[0]).substring(4));
                }
            }
            var r30 = telo.getElementsByTagName('r30')[0];
            if (r30) {
                $('#chr30').attr('checked', getElementsValXml(r30.getElementsByTagName('uplatnujemNaManzelku')[0]) == 1 ? true : false);
                $('#tPrijmy29_4').val(getElementsValXml(r30.getElementsByTagName('vlastnePrijmy')[0]));
                $('#tMesiace29_5').val(getElementsValXml(r30.getElementsByTagName('pocetMesiacov')[0]));
            }
            var r31 = telo.getElementsByTagName('r31')[0];
            if (r31) {

                for (var i = 0; i < r31.getElementsByTagName('dieta').length; i++) {
                    var dieta = r31.getElementsByTagName('dieta')[i];

                    if (dieta == null) break;
                    if (dieta) {
                        if (i == 0) {
                            $('#tPriezvisko31_1_1').val(getElementsValXml(dieta.getElementsByTagName('priezviskoMeno')[0]));
                            if (getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).length >= 9) {
                                $('#tbRodneCislo31_1_2').val(getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).substring(0, 6));
                                $('#tbRodneCislo31_1_3').val(getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).substring(6));
                            } else {
                                $('#tbRodneCislo31_1_2').val(getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).substring(0, 4));
                                $('#tbRodneCislo31_1_3').val(getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).substring(4));
                            }

                            for (var j = 0; j < 13; j++) {
                                var index = '' + j;
                                if (j < 10) index = '0' + index;
                                $('#cbM' + index + '_1').attr('checked', getElementsValXml(dieta.getElementsByTagName('m' + index)[0]) == 1 ? true : false);
                            }
                        }
                        else {
                            if (i > 3) {
                                var addButton = $('div[id^=layoutRow41448]').last().find('#addSectionlayoutRow41448');
                                addSection(4, 20, addButton);
                            }

                            $('#tPriezvisko31_1_1_Repeating_' + i).val(getElementsValXml(dieta.getElementsByTagName('priezviskoMeno')[0]));
                            if (getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).length >= 9) {
                                $('#tbRodneCislo31_1_2_Repeating_' + i).val(getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).substring(0, 6));
                                $('#tbRodneCislo31_1_3_Repeating_' + i).val(getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).substring(6));
                            } else {
                                $('#tbRodneCislo31_1_2_Repeating_' + i).val(getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).substring(0, 4));
                                $('#tbRodneCislo31_1_3_Repeating_' + i).val(getElementsValXml(dieta.getElementsByTagName('rodneCislo')[0]).substring(4));
                            }

                            for (var j = 0; j < 13; j++) {
                                var index = '' + j;
                                if (j < 10) index = '0' + index;
                                $('#cbM' + index + '_1_Repeating_' + i).attr('checked', getElementsValXml(dieta.getElementsByTagName('m' + index)[0]) == 1 ? true : false);
                            }

                        }

                    }
                }

                //removeEmptySections('layoutRow18884');

            }

            $('#cbViacAko4').attr('checked', getElementsValXml(telo.getElementsByTagName('r31a')[0]) == 1 ? true : false).change();
            $('#cbUplatPostup').attr('checked', getElementsValXml(telo.getElementsByTagName('uplatnujemPar33Ods8')[0]) == 1 ? true : false).change();

            var r32 = telo.getElementsByTagName('r32')[0];
            if (r32) {
                $('#tbPriezvisko32_1_1').val(getElementsValXml(r32.getElementsByTagName('priezviskoMeno')[0]));
                if (getElementsValXml(r32.getElementsByTagName('rodneCislo')[0]).length >= 9) {
                    $('#tbRodneCislo32_1_2').val(getElementsValXml(r32.getElementsByTagName('rodneCislo')[0]).substring(0, 6));
                    $('#tbRodneCislo32_1_3').val(getElementsValXml(r32.getElementsByTagName('rodneCislo')[0]).substring(6));
                } else {
                    $('#tbRodneCislo32_1_2').val(getElementsValXml(r32.getElementsByTagName('rodneCislo')[0]).substring(0, 4));
                    $('#tbRodneCislo32_1_3').val(getElementsValXml(r32.getElementsByTagName('rodneCislo')[0]).substring(4));
                }

                $('#cbM1_12_1').attr('checked', getElementsValXml(r32.getElementsByTagName('m00')[0]) == 1 ? true : false).change();
                for (var j = 1; j < 13; j++) {
                    var index1 = '' + j;
                    var index2 = '' + j;
                    if (j < 10) var index2 = '0' + index2;
                    $('#cbM1_' + index1).attr('checked', getElementsValXml(r32.getElementsByTagName('m' + index2)[0]) == 1 ? true : false).change();
                }


                $('#cbOznDOO').attr('checked', getElementsValXml(r32.getElementsByTagName('druhaOsobaPodalaDPvSR')[0]) == 1 ? true : false).change();
                $('#cbKopDokRZD').attr('checked', getElementsValXml(r32.getElementsByTagName('dokladRocZuct')[0]) == 1 ? true : false).change();
                $('#cbKopDokVZD').attr('checked', getElementsValXml(r32.getElementsByTagName('dokladVyskaDane')[0]) == 1 ? true : false).change();
            }


            $('#t32a').val(getElementsValXml(telo.getElementsByTagName('r32a')[0]));

            var r33 = telo.getElementsByTagName('r33')[0];
            if (r33) {
                $('#chr33').attr('checked', getElementsValXml(r33.getElementsByTagName('uplatnujemBonusPar33a')[0]) == 1 ? true : false).change();
                $('#t33_1').val(getElementsValXml(r33.getElementsByTagName('zaplateneUroky')[0]));
                $('#t33_2').val(getElementsValXml(r33.getElementsByTagName('pocetMesiacov')[0]));
                $('#DatumZacUroUve').val(getElementsValXml(r33.getElementsByTagName('datumZacatiaUroceniaUveru')[0]));
                $('#DatumUzavZmluUverByv').val(getElementsValXml(r33.getElementsByTagName('datumUzavretiaZmluvyOUvere')[0]));
            }

            //for (var i = 36; i < 83; i++) $('#t' + i).val(getElementsValXml(telo.getElementsByTagName('r' + i)[0])).change();

            $('#t34').val(getElementsValXml(telo.getElementsByTagName('r34')[0])).change();
            $('#t35').val(getElementsValXml(telo.getElementsByTagName('r35')[0])).change();
            $('#tbR36').val(getElementsValXml(telo.getElementsByTagName('r36')[0])).change();
            $('#tbR37').val(getElementsValXml(telo.getElementsByTagName('r37')[0])).change();
            $('#tbR38').val(getElementsValXml(telo.getElementsByTagName('r38')[0])).change();
            $('#t39').val(getElementsValXml(telo.getElementsByTagName('r39')[0])).change();
            $('#t40').val(getElementsValXml(telo.getElementsByTagName('r40')[0])).change();
            $('#t41').val(getElementsValXml(telo.getElementsByTagName('r41')[0])).change();
            $('#t42').val(getElementsValXml(telo.getElementsByTagName('r42')[0])).change();
            $('#t43').val(getElementsValXml(telo.getElementsByTagName('r43')[0])).change();
            $('#t44').val(getElementsValXml(telo.getElementsByTagName('r44')[0])).change();
            $('#t45').val(getElementsValXml(telo.getElementsByTagName('r45')[0])).change();
            $('#t46').val(getElementsValXml(telo.getElementsByTagName('r46')[0])).change();
            $('#t47').val(getElementsValXml(telo.getElementsByTagName('r47')[0])).change();
            $('#t48').val(getElementsValXml(telo.getElementsByTagName('r48')[0])).change();
            $('#t49').val(getElementsValXml(telo.getElementsByTagName('r49')[0])).change();
            $('#t50').val(getElementsValXml(telo.getElementsByTagName('r50')[0])).change();
            $('#t51').val(getElementsValXml(telo.getElementsByTagName('r51')[0])).change();
            $('#t52').val(getElementsValXml(telo.getElementsByTagName('r52')[0])).change();
            $('#t53').val(getElementsValXml(telo.getElementsByTagName('r53')[0])).change();
            $('#t54').val(getElementsValXml(telo.getElementsByTagName('r54')[0])).change();
            $('#t55').val(getElementsValXml(telo.getElementsByTagName('r55')[0])).change();
            $('#t56').val(getElementsValXml(telo.getElementsByTagName('r56')[0])).change();
            $('#t56a').val(getElementsValXml(telo.getElementsByTagName('r56a')[0])).change();
            $('#t57').val(getElementsValXml(telo.getElementsByTagName('r57')[0])).change();
            $('#t58').val(getElementsValXml(telo.getElementsByTagName('r58')[0])).change();
            $('#t59').val(getElementsValXml(telo.getElementsByTagName('r59')[0])).change();
            $('#t60').val(getElementsValXml(telo.getElementsByTagName('r60')[0])).change();
            $('#t61').val(getElementsValXml(telo.getElementsByTagName('r61')[0])).change();
            $('#t62').val(getElementsValXml(telo.getElementsByTagName('r62')[0])).change();
            $('#t63').val(getElementsValXml(telo.getElementsByTagName('r63')[0])).change();
            $('#t64').val(getElementsValXml(telo.getElementsByTagName('r64')[0])).change();
            $('#t65').val(getElementsValXml(telo.getElementsByTagName('r65')[0])).change();
            $('#t66').val(getElementsValXml(telo.getElementsByTagName('r66')[0])).change();
            $('#t67').val(getElementsValXml(telo.getElementsByTagName('r67')[0])).change();
            $('#t68').val(getElementsValXml(telo.getElementsByTagName('r68')[0])).change();
            $('#t69').val(getElementsValXml(telo.getElementsByTagName('r69')[0])).change();
            $('#t70').val(getElementsValXml(telo.getElementsByTagName('r70')[0])).change();
            $('#t71').val(getElementsValXml(telo.getElementsByTagName('r71')[0])).change();
            $('#t72').val(getElementsValXml(telo.getElementsByTagName('r72')[0])).change();
            $('#t73').val(getElementsValXml(telo.getElementsByTagName('r73')[0])).change();
            $('#t74').val(getElementsValXml(telo.getElementsByTagName('r74')[0])).change();
            $('#t75').val(getElementsValXml(telo.getElementsByTagName('r75')[0])).change();
            $('#t76').val(getElementsValXml(telo.getElementsByTagName('r76')[0])).change();
            $('#t77').val(getElementsValXml(telo.getElementsByTagName('r77')[0])).change();
            $('#t78').val(getElementsValXml(telo.getElementsByTagName('r78')[0])).change();
            $('#t79').val(getElementsValXml(telo.getElementsByTagName('r79')[0])).change();
            $('#t80').val(getElementsValXml(telo.getElementsByTagName('r80')[0])).change();

            var r81 = telo.getElementsByTagName('r81')[0];
            if (r81) {
                $('#cbParagraf50').attr('checked', getElementsValXml(r81.getElementsByTagName('neuplatnujemPar50')[0]) == 1 ? true : false).change();
                $('#ico76').val(getElementsValXml(r81.getElementsByTagName('ico')[0]));
                var obchMeno = r81.getElementsByTagName('obchodneMeno')[0];
                if (obchMeno) {
                    $('#ObchMeno76').val(getElementsValXml(obchMeno.getElementsByTagName('riadok')[0]) + getElementsValXml(obchMeno.getElementsByTagName('riadok')[1]));
                }
                $('#cbSplnam3per').attr('checked', getElementsValXml(r81.getElementsByTagName('splnam3per')[0]) == 1 ? true : false).change();
                $('#chb_SuhlasUdaje').attr('checked', getElementsValXml(r81.getElementsByTagName('suhlasSoZaslanim')[0]) == 1 ? true : false).change();
            }
            $('#t82').val(getElementsValXml(telo.getElementsByTagName('r82')[0])).change();

            var r83 = telo.getElementsByTagName('r83')[0];
            if (r83) {
                $('#cbParagraf50aa').attr('checked', getElementsValXml(r83.getElementsByTagName('neuplatnujemPar50aa')[0]) == 1 ? true : false).change();
                var rodicA = r83.getElementsByTagName('rodicA')[0];
                if (rodicA) {
                    if (getElementsValXml(rodicA.getElementsByTagName('rodneCislo')[0]).length >= 9) {
                        $('#tbRodneCislo83A_1').val(getElementsValXml(rodicA.getElementsByTagName('rodneCislo')[0]).substring(0, 6));
                        $('#tbRodneCislo83A_2').val(getElementsValXml(rodicA.getElementsByTagName('rodneCislo')[0]).substring(6));
                    } else {
                        $('#tbRodneCislo83A_1').val(getElementsValXml(rodicA.getElementsByTagName('rodneCislo')[0]).substring(0, 4));
                        $('#tbRodneCislo83A_2').val(getElementsValXml(rodicA.getElementsByTagName('rodneCislo')[0]).substring(4));
                    }
                    $('#Priezvisko83A').val(getElementsValXml(rodicA.getElementsByTagName('priezvisko')[0]));
                    $('#Meno83A').val(getElementsValXml(rodicA.getElementsByTagName('meno')[0]));
                }
                var rodicB = r83.getElementsByTagName('rodicB')[0];
                if (rodicB) {
                    if (getElementsValXml(rodicB.getElementsByTagName('rodneCislo')[0]).length >= 9) {
                        $('#tbRodneCislo83B_1').val(getElementsValXml(rodicB.getElementsByTagName('rodneCislo')[0]).substring(0, 6));
                        $('#tbRodneCislo83B_2').val(getElementsValXml(rodicB.getElementsByTagName('rodneCislo')[0]).substring(6));
                    } else {
                        $('#tbRodneCislo83B_1').val(getElementsValXml(rodicB.getElementsByTagName('rodneCislo')[0]).substring(0, 4));
                        $('#tbRodneCislo83B_2').val(getElementsValXml(rodicB.getElementsByTagName('rodneCislo')[0]).substring(4));
                    }
                    $('#Priezvisko83B').val(getElementsValXml(rodicB.getElementsByTagName('priezvisko')[0]));
                    $('#Meno83B').val(getElementsValXml(rodicB.getElementsByTagName('meno')[0]));
                }
                $('#chNahrStar').attr('checked', getElementsValXml(r83.getElementsByTagName('bolZverenyDoStarostlivosti')[0]) == 1 ? true : false).change();
            }

            var osobitneZaznamy = telo.getElementsByTagName('osobitneZaznamy')[0];
            if (osobitneZaznamy) {

                // $('#cbUvadzam').attr('checked', getElementsValXml(osobitneZaznamy.getElementsByTagName('uvadza')[0]) == 1? true: false).change();
                // for (var i=1;i<4;i++)
                // {
                // var udajeOprijmoch = osobitneZaznamy.getElementsByTagName('udajeOprijmoch')[i-1];
                // if (udajeOprijmoch) {
                // if(i==2) {$('#cas9kod'+i).val(getElementsValXml(udajeOprijmoch.getElementsByTagName('kodStatu')[0]));}
                // else {$('#cast9kod'+i).val(getElementsValXml(udajeOprijmoch.getElementsByTagName('kodStatu')[0]));}
                // $('#cast9prijmy'+i).val(getElementsValXml(udajeOprijmoch.getElementsByTagName('prijmy')[0]));
                // $('#cast9vydavky'+i).val(getElementsValXml(udajeOprijmoch.getElementsByTagName('vydavky')[0]));
                // }
                // }
                // $('#OsobitneZaznamy').val(getElementsValXml(osobitneZaznamy.getElementsByTagName('zaznamy')[0]));


                $('#cbUvadzam').attr('checked', getElementsValXml(osobitneZaznamy.getElementsByTagName('uvadza')[0]) == 1 ? true : false).change();
                for (var i = 0; i < osobitneZaznamy.getElementsByTagName('udajeOprijmoch').length; i++) {
                    var udajeOprijmoch = osobitneZaznamy.getElementsByTagName('udajeOprijmoch')[i];

                    if (udajeOprijmoch == null) break;
                    if (udajeOprijmoch) {
                        if (i == 0) {
                            $('#KodStatu').val(getElementsValXml(udajeOprijmoch.getElementsByTagName('kodStatu')[0]));
                            $('#cast9prijmy1').val(getElementsValXml(udajeOprijmoch.getElementsByTagName('prijmy')[0]));
                            $('#cast9vydavky1').val(getElementsValXml(udajeOprijmoch.getElementsByTagName('vydavky')[0]));
                            $('#cast9vydavky2').val(getElementsValXml(udajeOprijmoch.getElementsByTagName('zTohoVydavky')[0]));
                        } else {
                            if (i > 2) {
                                var addButton = $('div[id^=layoutRow41527]').last().find('#addSectionlayoutRow41527');
                                addSection(3, 20, addButton);
                            }
                            $('#KodStatu_Repeating_' + i).val(getElementsValXml(udajeOprijmoch.getElementsByTagName('kodStatu')[0]));
                            $('#cast9prijmy1_Repeating_' + i).val(getElementsValXml(udajeOprijmoch.getElementsByTagName('prijmy')[0]));
                            $('#cast9vydavky1_Repeating_' + i).val(getElementsValXml(udajeOprijmoch.getElementsByTagName('vydavky')[0]));
                            $('#cast9vydavky2_Repeating_' + i).val(getElementsValXml(udajeOprijmoch.getElementsByTagName('zTohoVydavky')[0]));
                        }
                    }
                }
                $('#OsobitneZaznamy').val(getElementsValXml(osobitneZaznamy.getElementsByTagName('zaznamy')[0]));

            }
            $('#t84').val(getElementsValXml(telo.getElementsByTagName('r84')[0])).change();
            $('#t85').val(getElementsValXml(telo.getElementsByTagName('r85')[0])).change();
            $('#t85a').val(getElementsValXml(telo.getElementsByTagName('r85a')[0])).change();
            $('#t86').val(getElementsValXml(telo.getElementsByTagName('r86')[0])).change();
            $('#tbDatumVyhlasenie').val(getElementsValXml(telo.getElementsByTagName('datumVyhlasenia')[0]));
            var danovyPreplatokBonus = telo.getElementsByTagName('danovyPreplatokBonus')[0];
            if (danovyPreplatokBonus) {
                $('#cbVyplatitRozdiel').attr('checked', getElementsValXml(danovyPreplatokBonus.getElementsByTagName('vyplatitDanovyBonus')[0]) == 1 ? true : false).change();
                $('#cbVyplatitZamPremiu').attr('checked', getElementsValXml(danovyPreplatokBonus.getElementsByTagName('vyplatitZamPremiu')[0]) == 1 ? true : false).change();
                $('#cbBonus').attr('checked', getElementsValXml(danovyPreplatokBonus.getElementsByTagName('vyplatitDanovyBonusUroky')[0]) == 1 ? true : false).change();
                $('#cbVratit').attr('checked', getElementsValXml(danovyPreplatokBonus.getElementsByTagName('vratitDanPreplatok')[0]) == 1 ? true : false).change();
                var sposobPlatby = danovyPreplatokBonus.getElementsByTagName('sposobPlatby')[0];
                if (sposobPlatby) {

                    $('#cbPoukazkaDB').attr('checked', getElementsValXml(sposobPlatby.getElementsByTagName('poukazka')[0]) == 1 ? true : false).change();
                    $('#cbUcetDB').attr('checked', getElementsValXml(sposobPlatby.getElementsByTagName('ucet')[0]) == 1 ? true : false).change();
                    $('#cbUcetZahDB').attr('checked', getElementsValXml(sposobPlatby.getElementsByTagName('ucetZahranicnyIny')[0]) == 1 ? true : false).change();

                }
                var bankovyUcet = danovyPreplatokBonus.getElementsByTagName('bankovyUcet')[0];
                if (bankovyUcet) {
                    $('#cast11IBAN').val(getElementsValXml(bankovyUcet.getElementsByTagName('IBAN')[0]));
                }
                $('#dtpDatumDB').val(getElementsValXml(danovyPreplatokBonus.getElementsByTagName('datum')[0]));
            }

        }
    }
}

function getElementsValXml(element) {
    return htmlDecode(element.textContent) || htmlDecode(element.text) || '';
}


//*************************************
var fdfDoc;
var stringBuilder;
//**************************************************


function createfdf(segment, index) {

    isFdfUpper = true;
    if (segment > 0 || index > 0)
        return null;
    stringBuilder = new $.StringBuilder();
    stringBuilder.appendLine('%FDF-1.2');
    stringBuilder.appendLine('%âăĎÓ');
    stringBuilder.appendLine('1 0 obj');
    stringBuilder.appendLine('<< /FDF ');
    stringBuilder.appendLine('  << /Fields');
    stringBuilder.appendLine('    [');
    stringBuilder.appendLine('       << /V(' + prepisznakyFdf('Tlačivo vytlačené z Portálu FS', false) + ')/T (print)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#cmbDic1').val()) + ')/T (DIC)>>');
    if (!!$('#dtpDatumNarodenia2').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#dtpDatumNarodenia2').val().split(".")[0]) + ')/T (02a)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (02a)>>');
    }
    if (!!$('#dtpDatumNarodenia2').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#dtpDatumNarodenia2').val().split(".")[1]) + ')/T (02b)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (02b)>>');
    }
    if (!!$('#dtpDatumNarodenia2').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#dtpDatumNarodenia2').val().split(".")[2]) + ')/T (02c)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (02c)>>');
    }
    stringBuilder.appendLine('    << /V (' + ($('#rbDruhVykazuRiadny').is(':checked') ? 'X' : '') + ')/T (dp1)>>');
    stringBuilder.appendLine('    << /V (' + ($('#rbDruhVykazuOpravny').is(':checked') ? 'X' : '') + ')/T (dp2)>>');
    stringBuilder.appendLine('    << /V (' + ($('#rbDruhVykazuDodatocny').is(':checked') ? 'X' : '') + ')/T (dp3)>>');
    if (!!$('#cmbRok').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#cmbRok').val().substr(2, 2)) + ')/T (rok)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (rok)>>');
    }
    if (!!$('#tpDatumDDP').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tpDatumDDP').val().split(".")[0]) + ')/T (dz1)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (dz1)>>');
    }
    if (!!$('#tpDatumDDP').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tpDatumDDP').val().split(".")[1]) + ')/T (dz2)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (dz2)>>');
    }
    if (!!$('#tpDatumDDP').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tpDatumDDP').val().split(".")[2].substr(2, 2)) + ')/T (dz3)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (dz3)>>');
    }
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPriezvisko3').val()) + ')/T (03)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbMeno4').val()) + ')/T (04)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbTitul5_1').val()) + ')/T (05a)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbTitul5_2').val()) + ')/T (05b)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbUlica6').val()) + ')/T (06)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbCisloDomu7').val()) + ')/T (07)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPSC8').val()) + ')/T (08)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbObec9').val()) + ')/T (09)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbStat10').val()) + ')/T (10)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbNerezident').is(':checked') ? 'X' : '') + ')/T (11a)>>');
    if (!!$('#ObmedzenaPovinnostOd').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#ObmedzenaPovinnostOd').val().split(".")[0]) + ')/T (11b)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (11b)>>');
    }
    if (!!$('#ObmedzenaPovinnostOd').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#ObmedzenaPovinnostOd').val().split(".")[1]) + ')/T (11c)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (11c)>>');
    }
    if (!!$('#ObmedzenaPovinnostOd').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#ObmedzenaPovinnostOd').val().split(".")[2].substr(2, 2)) + ')/T (11d)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (11d)>>');
    }
    if (!!$('#ObmedzenaPovinnostDo').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#ObmedzenaPovinnostDo').val().split(".")[0]) + ')/T (11e)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (11e)>>');
    }
    if (!!$('#ObmedzenaPovinnostDo').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#ObmedzenaPovinnostDo').val().split(".")[1]) + ')/T (11f)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (11f)>>');
    }
    if (!!$('#ObmedzenaPovinnostDo').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#ObmedzenaPovinnostDo').val().split(".")[2].substr(2, 2)) + ')/T (11g)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (11g)>>');
    }
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#TIN').val()) + ')/T (11h)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbUlica12').val()) + ')/T (12)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbCisloDomu13').val()) + ')/T (13)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPSC14').val()) + ')/T (14)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbObec15').val()) + ')/T (15)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPriezvisko16').val()) + ')/T (16)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbMeno17').val()) + ')/T (17)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbTitul18P').val()) + ')/T (18a)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbTitul18Z').val()) + ')/T (18b)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo19_1').val()) + ')/T (19a)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo19_2').val()) + ')/T (19b)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbUlica20').val()) + ')/T (20)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbCislo21').val()) + ')/T (21)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPSC22').val()) + ')/T (22)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbObec23').val()) + ')/T (23)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbStat24').val()) + ')/T (24)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t25Telefon').val()) + ')/T (25)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t26Mail').val()) + ')/T (26)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbR27').is(':checked') ? 'X' : '') + ')/T (27)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t28').val()) + ')/T (28)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t28').val(), 2) + ')/T (28d)>>');

    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tPriezvisko29_1_1').val()) + ')/T (29a)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCisloR29_2').val()) + ')/T (29b)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCisloR29_3').val()) + ')/T (29c)>>');
    stringBuilder.appendLine('    << /V (' + ($('#chr30').is(':checked') ? 'X' : '') + ')/T (30a)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#tPrijmy29_4').val()) + ')/T (30b)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#tPrijmy29_4').val(), 2) + ')/T (30c)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tMesiace29_5').val()) + ')/T (30d)>>');
    stringBuilder.appendLine('    << /V (' + ($('#chr31').is(':checked') ? 'X' : '') + ')/T (31a)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t31').val()) + ')/T (31b)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t31').val(), 2) + ')/T (31c)>>');

    for (var i = 1; i <= 4; i++) {
        var suffix = i == 1 ? "" : "_Repeating_" + (i - 1);
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tPriezvisko31_1_1' + suffix).val()) + ')/T (31-' + i + 'a)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo31_1_2' + suffix).val()) + ')/T (31-' + i + 'b)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo31_1_3' + suffix).val()) + ')/T (31-' + i + 'c)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM00_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e00)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM01_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e01)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM02_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e02)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM03_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e03)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM04_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e04)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM05_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e05)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM06_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e06)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM07_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e07)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM08_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e08)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM09_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e09)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM10_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e10)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM11_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e11)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbM12_1' + suffix).is(':checked') ? 'X' : '') + ')/T (31-' + i + 'e12)>>');
        stringBuilder.appendLine('    << /V (' + ($('#cbViacAko4').is(':checked') ? 'X' : '') + ')/T (31a)>>');

    }


    stringBuilder.appendLine('    << /V (' + ($('#cbUplatPostup').is(':checked') ? 'X' : '') + ')/T (32-0)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPriezvisko32_1_1').val()) + ')/T (32-1a)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo32_1_2').val()) + ')/T (32-1b)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo32_1_3').val()) + ')/T (32-1c)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_12_1').is(':checked') ? 'X' : '') + ')/T (32-1e00)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_1').is(':checked') ? 'X' : '') + ')/T (32-1e01)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_2').is(':checked') ? 'X' : '') + ')/T (32-1e02)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_3').is(':checked') ? 'X' : '') + ')/T (32-1e03)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_4').is(':checked') ? 'X' : '') + ')/T (32-1e04)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_5').is(':checked') ? 'X' : '') + ')/T (32-1e05)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_6').is(':checked') ? 'X' : '') + ')/T (32-1e06)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_7').is(':checked') ? 'X' : '') + ')/T (32-1e07)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_8').is(':checked') ? 'X' : '') + ')/T (32-1e08)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_9').is(':checked') ? 'X' : '') + ')/T (32-1e09)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_10').is(':checked') ? 'X' : '') + ')/T (32-1e10)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_11').is(':checked') ? 'X' : '') + ')/T (32-1e11)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbM1_12').is(':checked') ? 'X' : '') + ')/T (32-1e12)>>');

    stringBuilder.appendLine('    << /V (' + ($('#cbOznDOO').is(':checked') ? 'X' : '') + ')/T (32-2)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbKopDokRZD').is(':checked') ? 'X' : '') + ')/T (32-3)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbKopDokVZD').is(':checked') ? 'X' : '') + ')/T (32-4)>>');

    stringBuilder.appendLine('    << /V (' + celacast($('#t32a').val()) + ')/T (32a)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t32a').val(), 2) + ')/T (32ad)>>');
    if (!!$('#Datum').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#Datum').val().split(".")[0]) + ')/T (32a1)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (32a1)>>');
    }
    if (!!$('#Datum').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#Datum').val().split(".")[1]) + ')/T (32a2)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (32a2)>>');
    }

    stringBuilder.appendLine('    << /V (' + ($('#chr33').is(':checked') ? 'X' : '') + ')/T (33a)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t33_1').val()) + ')/T (33b)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t33_1').val(), 2) + ')/T (33c)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t33_2').val()) + ')/T (33d)>>');

    if (!!$('#DatumZacUroUve').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#DatumZacUroUve').val().split(".")[0]) + ')/T (33e)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (33e)>>');
    }
    if (!!$('#DatumZacUroUve').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#DatumZacUroUve').val().split(".")[1]) + ')/T (33f)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (33f)>>');
    }
    if (!!$('#DatumZacUroUve').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#DatumZacUroUve').val().split(".")[2].substr(2, 2)) + ')/T (33g)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (33g)>>');
    }
    if (!!$('#DatumUzavZmluUverByv').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#DatumUzavZmluUverByv').val().split(".")[0]) + ')/T (33h)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (33h)>>');
    }
    if (!!$('#DatumUzavZmluUverByv').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#DatumUzavZmluUverByv').val().split(".")[1]) + ')/T (33i)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (33i)>>');
    }
    if (!!$('#DatumUzavZmluUverByv').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#DatumUzavZmluUverByv').val().split(".")[2].substr(2, 2)) + ')/T (33j)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (33j)>>');
    }

    stringBuilder.appendLine('    << /V (' + celacast($('#t34').val()) + ')/T (34)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t34').val(), 2) + ')/T (34d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t35').val()) + ')/T (35)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t35').val(), 2) + ')/T (35d)>>');

    stringBuilder.appendLine('    << /V (' + celacast($('#tbR36').val()) + ')/T (36)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#tbR36').val(), 2) + ')/T (36d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#tbR37').val()) + ')/T (37)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#tbR37').val(), 2) + ')/T (37d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#tbR38').val()) + ')/T (38)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#tbR38').val(), 2) + ')/T (38d)>>');

    stringBuilder.appendLine('    << /V (' + celacast($('#t39').val()) + ')/T (39)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t39').val(), 2) + ')/T (39d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t40').val()) + ')/T (40)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t40').val(), 2) + ')/T (40d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t41').val()) + ')/T (41)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t41').val(), 2) + ')/T (41d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t42').val()) + ')/T (42)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t42').val(), 2) + ')/T (42d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t43').val()) + ')/T (43)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t43').val(), 2) + ')/T (43d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t44').val()) + ')/T (44)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t44').val(), 2) + ')/T (44d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t45').val()) + ')/T (45)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t45').val(), 2) + ')/T (45d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t46').val()) + ')/T (46)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t46').val(), 2) + ')/T (46d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t47').val()) + ')/T (47)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t47').val(), 2) + ')/T (47d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t48').val()) + ')/T (48)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t48').val(), 2) + ')/T (48d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t49').val()) + ')/T (49)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t49').val(), 2) + ')/T (49d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t50').val()) + ')/T (50)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t50').val(), 2) + ')/T (50d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t51').val()) + ')/T (51)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t51').val(), 2) + ')/T (51d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t52').val()) + ')/T (52)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t52').val(), 2) + ')/T (52d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t53').val()) + ')/T (53)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t53').val(), 2) + ')/T (53d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t54').val()) + ')/T (54)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t54').val(), 2) + ')/T (54d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t55').val()) + ')/T (55)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t55').val(), 2) + ')/T (55d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t56').val()) + ')/T (56)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t56').val(), 2) + ')/T (56d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t56a').val()) + ')/T (56a)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t56a').val(), 2) + ')/T (56ad)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t57').val()) + ')/T (57)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t57').val(), 2) + ')/T (57d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t58').val()) + ')/T (58)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t58').val(), 2) + ')/T (58d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t59').val()) + ')/T (59)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t59').val(), 2) + ')/T (59d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t60').val()) + ')/T (60)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t60').val(), 2) + ')/T (60d)>>');

    stringBuilder.appendLine('    << /V (' + celacast($('#t61').val()) + ')/T (61)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t61').val(), 2) + ')/T (61d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t62').val()) + ')/T (62)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t62').val(), 2) + ')/T (62d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t63').val()) + ')/T (63)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t63').val(), 2) + ')/T (63d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t64').val()) + ')/T (64)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t64').val(), 2) + ')/T (64d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t65').val()) + ')/T (65)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t65').val(), 2) + ')/T (65d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t66').val()) + ')/T (66)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t66').val(), 2) + ')/T (66d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t67').val()) + ')/T (67)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t67').val(), 2) + ')/T (67d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t68').val()) + ')/T (68)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t68').val(), 2) + ')/T (68d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t69').val()) + ')/T (69)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t69').val(), 2) + ')/T (69d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t70').val()) + ')/T (70)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t70').val(), 2) + ')/T (70d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t71').val()) + ')/T (71)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t71').val(), 2) + ')/T (71d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t72').val()) + ')/T (72)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t72').val(), 2) + ')/T (72d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t73').val()) + ')/T (73)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t73').val(), 2) + ')/T (73d)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf(znamienko($('#t74').val())) + ')/T (74z)>>');
    stringBuilder.appendLine('    << /V (' + bezZnamienka(celacast($('#t74').val())) + ')/T (74)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t74').val(), 2) + ')/T (74d)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf(znamienko($('#t75').val())) + ')/T (75z)>>');
    stringBuilder.appendLine('    << /V (' + bezZnamienka(celacast($('#t75').val())) + ')/T (75)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t75').val(), 2) + ')/T (75d)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf(znamienko($('#t76').val())) + ')/T (76z)>>');
    stringBuilder.appendLine('    << /V (' + bezZnamienka(celacast($('#t76').val())) + ')/T (76)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t76').val(), 2) + ')/T (76d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t77').val()) + ')/T (77)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t77').val(), 2) + ')/T (77d)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf(znamienko($('#t78').val())) + ')/T (78z)>>');
    stringBuilder.appendLine('    << /V (' + bezZnamienka(celacast($('#t78').val())) + ')/T (78)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t78').val(), 2) + ')/T (78d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t79').val()) + ')/T (79)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t79').val(), 2) + ')/T (79d)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf(znamienko($('#t80').val())) + ')/T (80z)>>');
    stringBuilder.appendLine('    << /V (' + bezZnamienka(celacast($('#t80').val())) + ')/T (80)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t80').val(), 2) + ')/T (80d)>>');


    stringBuilder.appendLine('    << /V (' + ($('#cbParagraf50').is(':checked') ? 'X' : '') + ')/T (neuplatnit)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#ico76').val()) + ')/T (81a)>>');
    if (!!$('#ObchMeno76').val()) {
        var meno = divideRows(2, 'ObchMeno76');

        stringBuilder.appendLine('    << /V (' + prepisznakyFdf(meno[0], false) + ')/T (81b)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf(meno[1], false) + ')/T (81c)>>');

    }
    stringBuilder.appendLine('    << /V (' + ($('#cbSplnam3per').is(':checked') ? 'X' : '') + ')/T (splnam)>>');
    stringBuilder.appendLine('    << /V (' + bezZnamienka(celacast($('#t82').val())) + ')/T (82)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t82').val(), 2) + ')/T (82d)>>');

    stringBuilder.appendLine('    << /V (' + ($('#chb_SuhlasUdaje').is(':checked') ? 'X' : '') + ')/T (suhlasim)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbParagraf50aa').is(':checked') ? 'X' : '') + ')/T (neuplatnit-rodicia)>>');

    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo83A_1').val()) + ')/T (83a-rc1)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo83A_2').val()) + ')/T (83a-rc2)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#Priezvisko83A').val()) + ')/T (83a-priezvisko)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#Meno83A').val()) + ')/T (83a-meno)>>');

    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo83B_1').val()) + ')/T (83b-rc1)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbRodneCislo83B_2').val()) + ')/T (83b-rc2)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#Priezvisko83B').val()) + ')/T (83b-priezvisko)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#Meno83B').val()) + ')/T (83b-meno)>>');
    stringBuilder.appendLine('    << /V (' + ($('#chNahrStar').is(':checked') ? 'X' : '') + ')/T (zvereny)>>');


    stringBuilder.appendLine('    << /V (' + ($('#cbUvadzam').is(':checked') ? 'X' : '') + ')/T (zaznam1)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#KodStatu').val()) + ')/T (IX1a)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9prijmy1').val()) + ')/T (IX1p)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9prijmy1').val(), 2) + ')/T (IX1pd)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9vydavky1').val()) + ')/T (IX1v)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9vydavky1').val(), 2) + ')/T (IX1vd)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9vydavky2').val()) + ')/T (IX1ztv)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9vydavky2').val(), 2) + ')/T (IX1ztvd)>>');

    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#KodStatu_Repeating_1').val()) + ')/T (IX2a)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9prijmy1_Repeating_1').val()) + ')/T (IX2p)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9prijmy1_Repeating_1').val(), 2) + ')/T (IX2pd)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9vydavky1_Repeating_1').val()) + ')/T (IX2v)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9vydavky1_Repeating_1').val(), 2) + ')/T (IX2vd)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9vydavky2_Repeating_1').val()) + ')/T (IX2ztv)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9vydavky2_Repeating_1').val(), 2) + ')/T (IX2ztvd)>>');

    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#KodStatu_Repeating_2').val()) + ')/T (IX3a)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9prijmy1_Repeating_2').val()) + ')/T (IX3p)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9prijmy1_Repeating_2').val(), 2) + ')/T (IX3pd)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9vydavky1_Repeating_2').val()) + ')/T (IX3v)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9vydavky1_Repeating_2').val(), 2) + ')/T (IX3vd)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#cast9vydavky2_Repeating_2').val()) + ')/T (IX3ztv)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#cast9vydavky2_Repeating_2').val(), 2) + ')/T (IX3ztvd)>>');
    stringBuilder.appendLine('    << /V (');



    var polesekcii = $('#layoutRow41527');
    var pocetsekcii = polesekcii.siblings('div[id^=layoutRow41527' + repeatingPostfix + ']').length + 1;
    if (pocetsekcii > 3) {
        stringBuilder.appendLine(prepisznakyFdf('Ďalšie záznamy:'));
        for (var i = 3; i < pocetsekcii; i++) {

            stringBuilder.appendLine(prepisznakyFdf(
                'Kód štátu: ' + $('#KodStatu_Repeating_' + i).val() +
                '	Príjmy: ' + celacast($('#cast9prijmy1_Repeating_' + i).val()) + ',' + desatinnacast($('#cast9prijmy1_Repeating_' + i).val(), 2) +
                '	Výdavky: ' + celacast($('#cast9vydavky1_Repeating_' + i).val()) + ',' + desatinnacast($('#cast9vydavky1_Repeating_' + i).val(), 2) +
                '	z toho výdavky: ' + celacast($('#cast9vydavky2_Repeating_' + i).val()) + ',' + desatinnacast($('#cast9vydavky2_Repeating_' + i).val(), 2)
            ));
        }
    }
    var polesekcii2 = $('#layoutRow41448');
    var polesekcii2 = polesekcii2.siblings('div[id^=layoutRow41448' + repeatingPostfix + ']').length + 1;
    if (polesekcii2 > 4) {
        stringBuilder.appendLine(prepisznakyFdf('\rĎalšie vyživované deti:'));
        for (var i = 4; i < polesekcii2; i++) {
            var line = prepisznakyFdf('Priezvisko a meno: ' + $('#tPriezvisko31_1_1_Repeating_' + i).val() + ', Rodné číslo: ' + $('#tbRodneCislo31_1_2_Repeating_' + i).val() + ' / ' +
                $('#tbRodneCislo31_1_3_Repeating_' + i).val() + ', Mesiace: ' +
                ($('#cbM00_1_Repeating_' + i).is(':checked') ? '1 - 12, ' : '') +
                ($('#cbM01_1_Repeating_' + i).is(':checked') ? '1, ' : '') +
                ($('#cbM02_1_Repeating_' + i).is(':checked') ? '2, ' : '') +
                ($('#cbM03_1_Repeating_' + i).is(':checked') ? '3, ' : '') +
                ($('#cbM04_1_Repeating_' + i).is(':checked') ? '4, ' : '') +
                ($('#cbM05_1_Repeating_' + i).is(':checked') ? '5, ' : '') +
                ($('#cbM06_1_Repeating_' + i).is(':checked') ? '6, ' : '') +
                ($('#cbM07_1_Repeating_' + i).is(':checked') ? '7, ' : '') +
                ($('#cbM08_1_Repeating_' + i).is(':checked') ? '8, ' : '') +
                ($('#cbM09_1_Repeating_' + i).is(':checked') ? '9, ' : '') +
                ($('#cbM10_1_Repeating_' + i).is(':checked') ? '10, ' : '') +
                ($('#cbM11_1_Repeating_' + i).is(':checked') ? '11, ' : '') +
                ($('#cbM12_1_Repeating_' + i).is(':checked') ? '12' : ''));
            line = line.replace(/\s+$/g, '');
            stringBuilder.appendLine(line[line.length - 1] == ',' ? line.substring(0, line.length - 1) : line);
        }
    }
    if (pocetsekcii > 4 || polesekcii2 > 4)
        stringBuilder.appendLine('\r' + prepisznakyFdf($('#OsobitneZaznamy').val()) + ')/T (zaznam2)>>');
    else
        stringBuilder.appendLine(prepisznakyFdf($('#OsobitneZaznamy').val()) + ')/T (zaznam2)>>');
    //stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#OsobitneZaznamy').val()) + ')/T (zaznam2)>>'); pôvodné



    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t84').val()) + ')/T (84)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t85').val()) + ')/T (85)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t85').val(), 2) + ')/T (85d)>>');
    stringBuilder.appendLine('    << /V (' + celacast($('#t85a').val()) + ')/T (85a)>>');
    stringBuilder.appendLine('    << /V (' + desatinnacast($('#t85a').val(), 2) + ')/T (85ad)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t86').val()) + ')/T (86)>>');



    if (!!$('#tbDatumVyhlasenie').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbDatumVyhlasenie').val().split(".")[0]) + ')/T (datum1)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (datum1)>>');
    }
    if (!!$('#tbDatumVyhlasenie').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbDatumVyhlasenie').val().split(".")[1]) + ')/T (datum2)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (datum2)>>');
    }
    if (!!$('#tbDatumVyhlasenie').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbDatumVyhlasenie').val().split(".")[2].substr(2, 2)) + ')/T (datum3)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (datum3)>>');
    }
    stringBuilder.appendLine('    << /V (' + ($('#cbVyplatitRozdiel').is(':checked') ? 'X' : '') + ')/T (XIa)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbVyplatitZamPremiu').is(':checked') ? 'X' : '') + ')/T (XIb)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbBonus').is(':checked') ? 'X' : '') + ')/T (XIc)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbVratit').is(':checked') ? 'X' : '') + ')/T (XId)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbPoukazkaDB').is(':checked') ? 'X' : '') + ')/T (XIe)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbUcetDB').is(':checked') ? 'X' : '') + ')/T (XIf)>>');
    stringBuilder.appendLine('    << /V (' + ($('#cbUcetZahDB').is(':checked') ? 'X' : '') + ')/T (XIg)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#cast11IBAN').val()) + ')/T (XIh)>>');
    if (!!$('#dtpDatumDB').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#dtpDatumDB').val().split(".")[0]) + ')/T (XIdatum1)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (XIdatum1)>>');
    }
    if (!!$('#dtpDatumDB').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#dtpDatumDB').val().split(".")[1]) + ')/T (XIdatum2)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (XIdatum2)>>');
    }
    if (!!$('#dtpDatumDB').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#dtpDatumDB').val().split(".")[2].substr(2, 2)) + ')/T (XIdatum3)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (XIdatum3)>>');
    }
    stringBuilder.appendLine('    ] ');
    stringBuilder.appendLine('  /F (form.620.DPFOA-25-print-save.pdf)');
    stringBuilder.appendLine('  /ID [ <0f1c0c5013770170f4042d0f9bbdc064><67bbe03ad822ab86734fd4c8c191afa2>]');
    stringBuilder.appendLine('  >>	');
    stringBuilder.appendLine('>>	');
    stringBuilder.appendLine('endobj');
    stringBuilder.appendLine('trailer');
    stringBuilder.appendLine('<< /Root 1 0 R >>	');
    stringBuilder.appendLine('%%EOF');
    return stringBuilder.string();
}

function createpotvrdenie() {
    isFdfUpper = false;
    stringBuilder = new $.StringBuilder();
    stringBuilder.appendLine('%FDF-1.2');
    stringBuilder.appendLine('%âăĎÓ');
    stringBuilder.appendLine('1 0 obj');
    stringBuilder.appendLine('<<');
    stringBuilder.appendLine('  /FDF');
    stringBuilder.appendLine('    << /Fields');
    stringBuilder.appendLine('      [');
    stringBuilder.appendLine('    << /V(' + prepisznakyFdf('Tlačivo vytlačené z Portálu FS') + ')/T (print)>>');
    if (!!$('#cmbRok').val()) {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#cmbRok').val()) + ')/T (rok)>>');
    } else {
        stringBuilder.appendLine('    << /V ()/T (rok)>>');
    }
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPriezvisko3').val()) + ')/T (Priezvisko)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbMeno4').val()) + ')/T (Meno)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#cmbDic1').val()) + ')/T (RC)>>');

    if ($('#tbUlica6').val() != '' || $('#tbCisloDomu7').val() != '' || $('#tbPSC8').val() != '' || $('#tbObec9').val() != '' || $('#tbStat10').val() != '') {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbUlica6').val() + ' ' + $('#tbCisloDomu7').val()) + ')/T (Ulica)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPSC8').val()) + ')/T (PSC)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbObec9').val()) + ')/T (Obec)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbStat10').val()) + ')/T (Stat)>>');
    }
    else {
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbUlica12').val() + ' ' + $('#tbCisloDomu13').val()) + ')/T (Ulica)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbPSC14').val()) + ')/T (PSC)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#tbObec15').val()) + ')/T (Obec)>>');
        stringBuilder.appendLine('    << /V (' + prepisznakyFdf('SK') + ')/T (Stat)>>');
    }

    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t44').val()) + ')/T (r44)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t56').val()) + ')/T (r56)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t71').val()) + ')/T (r71)>>');
    stringBuilder.appendLine('    << /V (' + prepisznakyFdf($('#t72').val()) + ')/T (r72)>>');
    stringBuilder.appendLine('    ] ');
    stringBuilder.appendLine('  /F (form.620.DPFOA-25-potvrdenie-print-save.pdf)');
    stringBuilder.appendLine('  /ID [ <b310ccfdb26d1b632b562cd598a3cb97><50178e60984b848bcecd3e9e265bf14a>]');
    stringBuilder.appendLine('  >>	');
    stringBuilder.appendLine('>>	');
    stringBuilder.appendLine('endobj');
    stringBuilder.appendLine('trailer');
    stringBuilder.appendLine('<< /Root 1 0 R >>	');
    stringBuilder.appendLine('%%EOF');
    return stringBuilder.string();
}


// funkcie pre IBAN

function Country(name, code, bank_form, acc_form) {
    this.name = name;
    this.code = code;
    this.bank = Country_decode_format(bank_form);
    this.acc = Country_decode_format(acc_form);
    this.bank_lng = Country_calc_length(this.bank);
    this.acc_lng = Country_calc_length(this.acc);
    this.total_lng = 4 + this.bank_lng + this.acc_lng;
}

function Country_decode_format(form) {
    var form_list = new Array();
    var parts = form.split(" ");
    for (var i = 0; i < parts.length; ++i) {
        var part = parts[i];
        if (part != "") {
            var typ = part.charAt(part.length - 1);
            if (typ == "a" || typ == "n")
                part = part.substring(0, part.length - 1);
            else
                typ = "c";
            var lng = parseInt(part);
            form_list[form_list.length] = new Array(lng, typ);
        }
    }
    return form_list;
}

function Country_calc_length(form_list) {
    var sum = 0;
    for (var i = 0; i < form_list.length; ++i)
        sum += form_list[i][0];
    return sum;
}


var iban_data = new Array(
    new Country("Andorra", "AD", "0  4n 4n", "0  12   0 "),
    new Country("Albania", "AL", "0  8n 0 ", "0  16   0 "),
    new Country("Austria", "AT", "0  5n 0 ", "0  11n  0 "),
    new Country("Bosnia and Herzegovina",
        "BA", "0  3n 3n", "0   8n  2n"),
    new Country("Belgium", "BE", "0  3n 0 ", "0   7n  2n"),
    new Country("Bulgaria", "BG", "0  4a 4n", "2n  8   0 "),
    new Country("Switzerland", "CH", "0  5n 0 ", "0  12   0 "),
    new Country("Cyprus", "CY", "0  3n 5n", "0  16   0 "),
    new Country("Czech Republic", "CZ", "0  4n 0 ", "0  16n  0 "),
    new Country("Germany", "DE", "0  8n 0 ", "0  10n  0 "),
    new Country("Denmark", "DK", "0  4n 0 ", "0   9n  1n"),
    new Country("Estonia", "EE", "0  2n 0 ", "2n 11n  1n"),
    new Country("Spain", "ES", "0  4n 4n", "2n 10n  0 "),
    new Country("Finland", "FI", "0  6n 0 ", "0   7n  1n"),
    new Country("Faroe Islands", "FO", "0  4n 0 ", "0   9n  1n"),
    new Country("France", "FR", "0  5n 5n", "0  11   2n"),
    new Country("United Kingdom", "GB", "0  4a 6n", "0   8n  0 "),
    new Country("Georgia", "GE", "0  2a 0 ", "0  16n  0 "),
    new Country("Gibraltar", "GI", "0  4a 0 ", "0  15   0 "),
    new Country("Greenland", "GL", "0  4n 0 ", "0   9n  1n"),
    new Country("Greece", "GR", "0  3n 4n", "0  16   0 "),
    new Country("Croatia", "HR", "0  7n 0 ", "0  10n  0 "),
    new Country("Hungary", "HU", "0  3n 4n", "1n 15n  1n"),
    new Country("Ireland", "IE", "0  4a 6n", "0   8n  0 "),
    new Country("Israel", "IL", "0  3n 3n", "0  13n  0 "),
    new Country("Iceland", "IS", "0  4n 0 ", "2n 16n  0 "),
    new Country("Italy", "IT", "1a 5n 5n", "0  12   0 "),
    new Country("Kuwait", "KW", "0  4a 0 ", "0  22   0 "),
    new Country("Kazakhstan", "KZ", "0  3n 0 ", "0  13   0 "),
    new Country("Lebanon", "LB", "0  4n 0 ", "0  20   0 "),
    new Country("Liechtenstein", "LI", "0  5n 0 ", "0  12   0 "),
    new Country("Lithuania", "LT", "0  5n 0 ", "0  11n  0 "),
    new Country("Luxembourg", "LU", "0  3n 0 ", "0  13   0 "),
    new Country("Latvia", "LV", "0  4a 0 ", "0  13   0 "),
    new Country("Monaco", "MC", "0  5n 5n", "0  11   2n"),
    new Country("Montenegro", "ME", "0  3n 0 ", "0  13n  2n"),
    new Country("Macedonia, Former Yugoslav Republic of",
        "MK", "0  3n 0 ", "0  10   2n"),
    new Country("Mauritania", "MR", "0  5n 5n", "0  11n  2n"),
    new Country("Malta", "MT", "0  4a 5n", "0  18   0 "),
    new Country("Mauritius", "MU", "0  4a 4n", "0  15n  3a"),
    new Country("Netherlands", "NL", "0  4a 0 ", "0  10n  0 "),
    new Country("Norway", "NO", "0  4n 0 ", "0   6n  1n"),
    new Country("Poland", "PL", "0  8n 0 ", "0  16n  0 "),
    new Country("Portugal", "PT", "0  4n 4n", "0  11n  2n"),
    new Country("Romania", "RO", "0  4a 0 ", "0  16   0 "),
    new Country("Serbia", "RS", "0  3n 0 ", "0  13n  2n"),
    new Country("Saudi Arabia", "SA", "0  2n 0 ", "0  18   0 "),
    new Country("Sweden", "SE", "0  3n 0 ", "0  16n  1n"),
    new Country("Slovenia", "SI", "0  5n 0 ", "0   8n  2n"),
    new Country("Slovak Republic",
        "SK", "0  4n 0 ", "0  16n  0 "),
    new Country("San Marino", "SM", "1a 5n 5n", "0  12   0 "),
    new Country("Tunisia", "TN", "0  2n 3n", "0  13n  2n"),
    new Country("Turkey", "TR", "0  5n 0 ", "1  16   0 "),
    new Country("Ukraine", "UA", "0 6n 0", "0 19 0"));

// Search the country code in the iban_data list.
function CountryData(code) {
    for (var i = 0; i < iban_data.length; ++i)
        if (iban_data[i].code == code)
            return iban_data[i];
    return null;
}

// Modulo 97 for huge numbers given as digit strings.
function mod97(digit_string) {
    var m = 0;
    for (var i = 0; i < digit_string.length; ++i)
        m = (m * 10 + parseInt(digit_string.charAt(i))) % 97;
    return m;
}

// Convert a capital letter into digits: A -> 10 ... Z -> 35 (ISO 13616).
function capital2digits(ch) {
    var capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    for (var i = 0; i < capitals.length; ++i)
        if (ch == capitals.charAt(i))
            break;
    return i + 10;
}

// Fill the string with leading zeros until length is reached.
function fill0(s, l) {
    while (s.length < l)
        s = "0" + s;
    return s;
}

// Compare two strings respecting german umlauts.
function strcmp(s1, s2) {
    var chars = "AaÄäBbCcDdEeFfGgHhIiJjKkLlMmNnOoÖöPpQqRrSsßTtUuÜüVvWwXxYyZz";
    var lng = (s1.length < s2.length) ? s1.length : s2.length;
    for (var i = 0; i < lng; ++i) {
        var d = chars.indexOf(s1.charAt(i)) - chars.indexOf(s2.charAt(i));
        if (d != 0)
            return d;
    }
    return s1.length - s2.length;
}

// Create an index table of the iban_data list sorted by country names.
function CountryIndexTable() {
    var tab = new Array();
    var i, j, t;
    for (i = 0; i < iban_data.length; ++i)
        tab[i] = i;
    for (i = tab.length - 1; i > 0; --i)
        for (j = 0; j < i; ++j)
            if (strcmp(iban_data[tab[j]].name, iban_data[tab[j + 1]].name) > 0)
                t = tab[j], tab[j] = tab[j + 1], tab[j + 1] = t;
    return tab;
}

// Calculate 2-digit checksum of an IBAN.
function ChecksumIBAN(iban) {
    var code = iban.substring(0, 2);
    var checksum = iban.substring(2, 4);
    var bban = iban.substring(4);

    // Assemble digit string
    var digits = "";
    for (var i = 0; i < bban.length; ++i) {
        var ch = bban.charAt(i).toUpperCase();
        if ("0" <= ch && ch <= "9")
            digits += ch;
        else
            digits += capital2digits(ch);
    }
    for (var i = 0; i < code.length; ++i) {
        var ch = code.charAt(i);
        digits += capital2digits(ch);
    }
    digits += checksum;

    // Calculate checksum
    checksum = 98 - mod97(digits);
    return fill0("" + checksum, 2);
}

// Fill the account number part of IBAN with leading zeros.
function FillAccount(country, account) {
    return fill0(account, country.acc_lng);
}

function FillPrefix(prefix) {
    return fill0(prefix, 6);
}

function FillAccountIn(accountIn) {
    return fill0(accountIn, 10);
}

// Check if syntax of the part of IBAN is invalid.
function InvalidPart(form_list, iban_part) {
    for (var f = 0; f < form_list.length; ++f) {
        var lng = form_list[f][0], typ = form_list[f][1];
        if (lng > iban_part.length)
            lng = iban_part.length;
        for (var i = 0; i < lng; ++i) {
            var ch = iban_part.charAt(i);
            var a = ("A" <= ch && ch <= "Z");
            var n = ("0" <= ch && ch <= "9");
            var c = n || a || ("a" <= ch && ch <= "z");
            if ((!c && typ == "c") || (!a && typ == "a") || (!n && typ == "n"))
                return true;
        }
        iban_part = iban_part.substring(lng);
    }
    return false;
}

// Check if length of the bank/branch code part of IBAN is invalid.
function InvalidBankLength(country, bank) {
    return (bank.length != country.bank_lng);
}

// Check if syntax of the bank/branch code part of IBAN is invalid.
function InvalidBank(country, bank) {
    return (InvalidBankLength(country, bank) ||
        InvalidPart(country.bank, bank));
}

// Check if length of the account number part of IBAN is invalid.
function InvalidAccountLength(country, account) {
    return (account.length < 1 || account.length > country.acc_lng);
}

function InvalidPrefixLength(prefix) {
    return (prefix.length > 6);
}

function InvalidAccountInLength(accountIn) {
    return (accountIn.length < 1 || accountIn.length > 10);
}

// Check if syntax of the account number part of IBAN is invalid.
function InvalidAccount(country, account) {
    return (InvalidAccountLength(country, account) ||
        InvalidPart(country.acc, FillAccount(country, account)));
}

function InvalidPrefix(country, prefix) {
    return (InvalidPrefixLength(prefix) ||
        InvalidPart(country.acc, FillPrefix(prefix)));
}

function InvalidAccountIn(country, accountIn) {
    return (InvalidAccountInLength(accountIn) ||
        InvalidPart(country.acc, FillAccountIn(accountIn)));
}

// Check if length of IBAN is invalid.
function InvalidIBANlength(country, iban) {
    return (iban.length != country.total_lng);
}

function InvalidPrefixModulo(prefix) {
    var prefixTmp = FillPrefix(prefix);
    var number = prefixTmp.charAt(0) * 10 + prefixTmp.charAt(1) * 5 + prefixTmp.charAt(2) * 8 +
        prefixTmp.charAt(3) * 4 + prefixTmp.charAt(4) * 2 + prefixTmp.charAt(5) * 1;
    return !(number % 11 === 0);
}

function InvalidAccountInModulo(accountIn) {
    var accountInTmp = FillAccountIn(accountIn);
    var number = accountInTmp.charAt(0) * 6 + accountInTmp.charAt(1) * 3 + accountInTmp.charAt(2) * 7 +
        accountInTmp.charAt(3) * 9 + accountInTmp.charAt(4) * 10 + accountInTmp.charAt(5) * 5 +
        accountInTmp.charAt(6) * 8 + accountInTmp.charAt(7) * 4 + accountInTmp.charAt(8) * 2 + accountInTmp.charAt(9) * 1;
    return !(number % 11 === 0);
}

// Convert iban from intern value to string format (IBAN XXXX XXXX ...).
function extern(intern) {
    var s = "IBAN";
    for (var i = 0; i < intern.length; ++i) {
        if (i % 4 == 0)
            s += " ";
        s += intern.charAt(i);
    }
    return s;
}

// Convert iban from string format to intern value.
function intern(extern) {
    if (extern.substring(0, 4) == "IBAN")
        extern = extern.substring(4);
    var s = "";
    for (var i = 0; i < extern.length; ++i)
        if (extern.charAt(i) != " ")
            s += extern.charAt(i);
    return s;
}

// Calculate the checksum and assemble the IBAN.
function CalcIBAN(country, bank, account) {
    var fill_acc = FillAccount(country, account);
    var checksum = ChecksumIBAN(country.code + "00" + bank + fill_acc);
    return country.code + checksum + bank + fill_acc;
}

function CalcAltIBAN(country, bank, account) {
    var fill_acc = FillAccount(country, account);
    var checksum = ChecksumIBAN(country.code + "00" + bank + fill_acc);
    checksum = fill0("" + mod97(checksum), 2);
    return country.code + checksum + bank + fill_acc;
}

// Check the checksum of an IBAN.
function IBANokay(iban) {
    return ChecksumIBAN(iban) == "97";
}

// Check the input, calculate the checksum and assemble the IBAN.
function CreateIBAN(pCode, pBank, pPrefix, pAccountIn) {
    // var form = document.ibanform;
    var code = pCode; //form.country.options[form.country.selectedIndex].value;
    var bank = pBank;//.attr('code').val();//intern(form.bank.value);
    //bank = AdresaFiller.GetCodeValue("banky",null,GetOlineLookupUri(""),bank);
    var prefix = pPrefix;
    var accountIn = pAccountIn;
    var country = CountryData(code);

    var err = null, err_focus = null;
    /*
        if (country == null) {
            err = _("Neznámy kód krajiny: ") + code;
            err_focus = form.country;
        }
        else if (InvalidBankLength(country, bank)) {
            err = _("Bank/Branch Code length ") + bank.length +
              _(" is not correct for ") + country.name +
              " (" + country.bank_lng + ")";
            err_focus = form.bank;
        }
        else if (InvalidBank(country, bank)) {
            err = _("Bank/Branch Code ") + bank + _(" is not correct for ") +
              country.name;
            err_focus = form.bank;
        }
        else if (InvalidPrefixLength(prefix)) {
            err = _("Prefix Number length ") + prefix.length +
              _(" is not correct for ") + country.name +
              " (6)";
            err_focus = form.prefix;
        }
        else if (InvalidPrefix(country, prefix)) {
            err = _("Prefix Number ") + prefix + _(" is not correct for ") +
              country.name;
            err_focus = form.prefix;
        }
        else if (InvalidPrefixModulo(prefix)) {
            err = _("Prefix Number ") + prefix + _(" is not valid ") +
              country.name;
            err_focus = form.prefix;
        }
        else if (InvalidAccountInLength(accountIn)) {
            err = _("Account Number length ") + accountIn.length +
              _(" is not correct for ") + country.name +
              " (10)";
            err_focus = form.account;
        }
        else if (InvalidAccountIn(country, accountIn)) {
            err = _("Account Number ") + accountIn + _(" is not correct for ") +
              country.name;
            err_focus = form.account;
        }
        else if (InvalidAccountInModulo(accountIn)) {
            err = _("Account Number ") + accountIn + _(" is not valid ") +
              country.name;
            err_focus = form.account;
        }
    */
    if (err) {
        // Set error image on BBAN side
        //document.bban_img.src = error_img.src;
        //document.iban_img.src = blank_img.src;

        // Clear destination fields, set focus to wrong field
        form.iban.value = "";
        //form.alt_iban.value = "";
        err_focus.focus();

        // Show message box with error message
        alert(err);
    }
    else {
        // Set okay image on IBAN side
        //document.iban_img.src = okay_img.src;
        //document.bban_img.src = blank_img.src;
        /*
                // Calculate IBAN, write results in form fields
                form.bank.value = bank;
                form.prefix.value = FillPrefix(prefix);
                form.account.value = FillAccountIn(accountIn);
        */
        var account = prefix + accountIn;

        //extern(CalcIBAN(country, bank, account));

        // Calculate alternative IBAN, write warning if not the same
        /*form.alt_iban.value = extern(CalcAltIBAN(country, bank, account));
        if (form.alt_iban.value != form.iban.value)
            form.alt_iban.value += " (*)";
        else
            form.alt_iban.value = "";*/

        // Check for dispensable global variables in debug modus
        if (debug_output)
            debug_check_vars();

        return CalcIBAN(country, bank, account);
    }
}

// Check the syntax and the checksum of the IBAN.
function CheckIBAN(pIban) {
    //var form = document.ibanform;
    //var iban = intern(form.iban.value);
    var iban = intern(pIban);

    var code = iban.substring(0, 2);
    var checksum = iban.substring(2, 4);
    var bban = iban.substring(4);
    var country = CountryData(code);

    var err = null;
    if (country == null)
        err = _("Neznámy kód štátu: ") + code;//err = _("Unknown Country Code: ") + code;
    else if (InvalidIBANlength(country, iban))
        err = _("Dĺžka IBAN ") + iban.length + _(" nie je korektná pre ") + country.name + " (" + country.total_lng + ")";//err = _("IBAN length ") + iban.length + _(" is not correct for ") + country.name + " (" + country.total_lng + ")";
    else {
        var bank_lng = country.bank_lng;
        var bank = bban.substring(0, bank_lng);
        var account = bban.substring(bank_lng);

        if (code == 'SK') {
            var invalidKodBanky = InvalidKodBanky(bank);
            var invalidPredcislie = InvalidPredcislie(account);
            var invalidCislo = InvalidCislo(account);

            if (invalidKodBanky && invalidPredcislie && invalidCislo)
                err = _("Kód banky/pobočky ") + bank + _(", predčíslie účtu a číslo účtu ") + account + _(" nie su korektné pre ") + country.name;
            else if (invalidKodBanky && invalidPredcislie)
                err = _("Kód banky/pobočky ") + bank + _(" a predčíslie účtu ") + account + _(" nie su korektné pre ") + country.name;
            else if (invalidKodBanky && invalidCislo)
                err = _("Kód banky/pobočky ") + bank + _(" a číslo účtu ") + account + _(" nie su korektné pre ") + country.name;
            else if (invalidPredcislie && invalidCislo)
                err = _("Predčíslie účtu a číslo účtu ") + account + _(" nie su korektné pre ") + country.name;
            else if (invalidKodBanky)
                err = _("Kód banky/pobočky ") + bank + _(" nie je korektný pre ") + country.name;
            else if (invalidPredcislie)
                err = _("Predčíslie účtu ") + account + _(" nie je korektné pre ") + country.name;
            else if (invalidCislo)
                err = _("Číslo účtu ") + account + _(" nie je korektné pre ") + country.name;
            else if (!IBANokay(iban))
                err = _("Kontrolná suma pre IBAN nie je korektná");
        }
        else {
            if (InvalidBank(country, bank))
                err = _("Kód banky/pobočky ") + bank + _(" nie je korektný pre ") + country.name;//err = _("Bank/Branch Code ") + bank + _(" is not correct for ") + country.name;
            else if (InvalidAccount(country, account))
                err = _("Číslo účtu ") + account + _(" nie je korektné pre ") + country.name;//err = _("Account Number ") + account + _(" is not correct for ") + country.name;
            else if (!IBANokay(iban))
                err = _("Kontrolná suma pre IBAN nie je korektná");//err = _("Checksum of IBAN incorrect");
        }
    }

    if (err) {
        // Set error image on IBAN side
        //document.iban_img.src = error_img.src;
        //document.bban_img.src = blank_img.src;

        // Clear destination fields, set focus to wrong field
        //form.country.selectedIndex = 0;
        //form.bank.value = "";
        //form.account.value = "";
        //form.alt_iban.value = "";
        //form.iban.focus();

        // Show message box with error message
        //alert(err);

        return err;
    }
    //else {
    // Set okay image on BBAN side
    //document.bban_img.src = okay_img.src;
    //document.iban_img.src = blank_img.src;

    // Write results in form fields
    //form.iban.value = extern(iban);
    /*for (var i = form.country.options.length - 1; i > 0; --i)
        if (form.country.options[i].value == code)
            break;
    form.country.selectedIndex = i;*/
    //form.bank.value = bank;
    //form.account.value = account;

    // Calculate alternative IBAN, write warning if not the same
    /*form.alt_iban.value = extern(CalcAltIBAN(country, bank, account));
    if (form.alt_iban.value != form.iban.value)
        form.alt_iban.value += " (*)";
    else
        form.alt_iban.value = "";*/

    // Check for dispensable global variables in debug modus
    //if (debug_output)
    //debug_check_vars();
    //}

    return 1;
}

// Write the selection bar into the form.
function WriteCountrySelectionBar() {
    document.write('<select name="country" size="1">');
    document.write('<option value="??">&nbsp;</option>');
    var tab = CountryIndexTable();
    for (var i = 0; i < tab.length; ++i) {
        var country = iban_data[tab[i]];
        document.write('<option value="' + country.code + '">' +
            country.name + ' (' + country.code + ')</option>');
    }
    document.write('</select>');
}

// Write a table with the country specific iban format.
function WriteCountryFormatTable() {
    document.write('<table bgcolor="#99FFCC" width="100%" border="4">' +
        ' <tr>' +
        '  <th rowspan="2">&nbsp;</th>' +
        '  <th rowspan="2">' + _("Country") + '<BR />Code</th>' +
        '  <th colspan="3">' + _("Bank/Branch Code") + '</th>' +
        '  <th colspan="3">' + _("Account Number") + '</th>' +
        ' </tr>' +
        ' <tr>' +
        '  <th>' + _("check1") + '</th><th>' + _("bank") + '</th>' +
        '  <th>' + _("branch") + '</th><th>' + _("check2") + '</th>' +
        '  <th>' + _("number") + '</th><th>' + _("check3") + '</th>' +
        ' </tr>');
    var tab = CountryIndexTable();
    for (var i = 0; i < tab.length; ++i) {
        var country = iban_data[tab[i]];
        document.write(' <tr>' +
            '  <td>' + country.name + '</td>' +
            '  <td align="center">' + country.code + '</td>');
        for (var f = 0; f < country.bank.length; ++f) {
            var lng = country.bank[f][0], typ = country.bank[f][1];
            if (lng > 0)
                document.write('  <td align="center">' + lng + ' ' + typ + '</td>');
            else
                document.write('  <td align="center">-</td>');
        }
        for (var f = 0; f < country.acc.length; ++f) {
            var lng = country.acc[f][0], typ = country.acc[f][1];
            if (lng > 0)
                document.write('  <td align="center">' + lng + ' ' + typ + '</td>');
            else
                document.write('  <td align="center">-</td>');
        }
    }
    document.write(' <tr>' +
        '  <td colspan="2">&nbsp;</td>' +
        '  <td colspan="8" align="center">' +
        _("a = A-Z, n = 0-9, c = A-Z/a-z/0-9") +
        '  </td>' +
        ' </tr>' +
        '</table>');
}

// Write a table with iban test data.
function WriteTestTable(data) {
    document.write('<table bgcolor="#99FFCC" width="100%" border="4">' +
        ' <tr>' +
        '  <th>' + _('Country Code') + '</th>' +
        '  <th>' + _('Bank/Branch Code') + '</th>' +
        '  <th>' + _('Account Number') + '</th>' +
        '  <th>&nbsp;</th>' +
        '  <th>' + _('International Bank Account Number') + '</th>' +
        '  <th>' + _('Checksum') + '</th>' +
        ' </tr>');
    for (var i = 0; i < data.length; ++i) {
        var code = data[i][0];
        var bank = data[i][1];
        var account = data[i][2];
        var checksum = data[i][3];
        var country = CountryData(code);
        var iban = "", err = null;

        if (country == null)
            err = _("Unknown Country Code");
        else if (InvalidBank(country, bank))
            err = _("Incorrect Bank/Branch Code");
        else if (InvalidAccount(country, account))
            err = _("Incorrect Account Number");
        else {
            iban = CalcIBAN(country, bank, account);

            if (iban.substring(2, 4) != checksum) {
                var alt_iban = CalcAltIBAN(country, bank, account);
                if (alt_iban.substring(2, 4) == checksum)
                    iban = alt_iban;
            }

            if (iban.substring(0, 2) != code)
                err = _("Country code changed");
            else if (InvalidIBANlength(country, iban))
                err = _("Incorrect IBAN length: ") + iban.length +
                    " (" + country.total_lng + ")";
            else {
                var bban = iban.substring(4);
                var bank_lng = country.bank_lng;

                if (bban.substring(0, bank_lng) != bank)
                    err = _("Bank/Branch Code changed");
                else if (bban.substring(bank_lng) != FillAccount(country, account))
                    err = _("Account Number changed");
                else if (!IBANokay(iban))
                    err = _("Incorrect checksum");
                else if (iban.substring(2, 4) != checksum)
                    err = _("Checksum changed");
            }
        }
        document.write(' <tr>' +
            '  <td align="center">' + code + '</td>' +
            '  <td align="center">' + bank + '</td>' +
            '  <td align="center">' + account + '</td>');
        if (err)
            document.write('  <td colspan="3" align="center">' + err + '</td>');
        else
            document.write('  <td align="center">' +
                '   <img src="' + arrow_img.src + '"' +
                '        width="' + arrow_img.width + '"' +
                '        height="' + arrow_img.height + '"' +
                '        border="0" alt="<==>" />' +
                '  </td>' +
                '  <td align="center">' + extern(iban) + '</td>' +
                '  <td align="center">' + checksum + '</td>');
        document.write(' </tr>');
    }
    document.write('</table>');
}

// Write a table with an example for each country.
function WriteExampleTestTable() {
    WriteTestTable(examples);

    // Write table with test data only in debug modus
    if (debug_output)
        WriteTestTable(test_data);
}

// Examples of IBANs for each country.
var examples = new Array(
    new Array("AD", "00012030", "200359100100", "12"),
    new Array("AL", "21211009", "0000000235698741", "47"),
    new Array("AT", "19043", "00234573201", "61"),
    new Array("BA", "129007", "9401028494", "39"),
    new Array("BE", "539", "007547034", "68"),
    new Array("BG", "BNBG9661", "1020345678", "80"),
    new Array("CH", "00762", "011623852957", "93"),
    new Array("CY", "00200128", "0000001200527600", "17"),
    new Array("CZ", "0800", "0000192000145399", "65"),
    new Array("DE", "37040044", "0532013000", "89"),
    new Array("DK", "0040", "0440116243", "50"),
    new Array("EE", "22", "00221020145685", "38"),
    new Array("ES", "21000418", "450200051332", "91"),
    new Array("FI", "123456", "00000785", "21"),
    new Array("FO", "6460", "0001631634", "62"),
    new Array("FR", "2004101005", "0500013M02606", "14"),
    new Array("GB", "NWBK601613", "31926819", "29"),
    new Array("GE", "NB", "0000000101904917", "29"),
    new Array("GI", "NWBK", "000000007099453", "75"),
    new Array("GL", "6471", "0001000206", "89"),
    new Array("GR", "0110125", "0000000012300695", "16"),
    new Array("HR", "1001005", "1863000160", "12"),
    new Array("HU", "1177301", "61111101800000000", "42"),
    new Array("IE", "AIBK931152", "12345678", "29"),
    new Array("IL", "010800", "0000099999999", "62"),
    new Array("IS", "0159", "260076545510730339", "14"),
    new Array("IT", "X0542811101", "000000123456", "60"),
    new Array("KW", "CBKU", "0000000000001234560101", "81"),
    new Array("KZ", "125", "KZT5004100100", "86"),
    new Array("LB", "0999", "00000001001901229114", "62"),
    new Array("LI", "08810", "0002324013AA", "21"),
    new Array("LT", "10000", "11101001000", "12"),
    new Array("LU", "001", "9400644750000", "28"),
    new Array("LV", "BANK", "0000435195001", "80"),
    new Array("MC", "1273900070", "0011111000h79", "11"),
    new Array("ME", "505", "000012345678951", "25"),
    new Array("MK", "250", "120000058984", "07"),
    new Array("MR", "0002000101", "0000123456753", "13"),
    new Array("MT", "MALT01100", "0012345MTLCAST001S", "84"),
    new Array("MU", "BOMM0101", "101030300200000MUR", "17"),
    new Array("NL", "ABNA", "0417164300", "91"),
    new Array("NO", "8601", "1117947", "93"),
    new Array("PL", "10901014", "0000071219812874", "61"),
    new Array("PT", "00020123", "1234567890154", "50"),
    new Array("RO", "AAAA", "1B31007593840000", "49"),
    new Array("RS", "260", "005601001611379", "35"),
    new Array("SA", "80", "000000608010167519", "03"),
    new Array("SE", "500", "00000058398257466", "45"),
    new Array("SI", "19100", "0000123438", "56"),
    new Array("SK", "1200", "0000198742637541", "31"),
    new Array("SM", "U0322509800", "000000270100", "86"),
    new Array("TN", "10006", "035183598478831", "59"),
    new Array("TR", "00061", "00519786457841326", "33"));

// Test data for each country.
var test_data = new Array(
    new Array("XY", "1", "2", "33"),
    new Array("AD", "11112222", "C3C3C3C3C3C3", "11"),
    new Array("AD", "1111222", "C3C3C3C3C3C3", "11"),
    new Array("AD", "X1112222", "C3C3C3C3C3C3", "11"),
    new Array("AD", "111@2222", "C3C3C3C3C3C3", "11"),
    new Array("AD", "1111X222", "C3C3C3C3C3C3", "11"),
    new Array("AD", "1111222@", "C3C3C3C3C3C3", "11"),
    new Array("AD", "11112222", "@3C3C3C3C3C3", "11"),
    new Array("AD", "11112222", "C3C3C3C3C3C@", "11"),
    new Array("AL", "11111111", "B2B2B2B2B2B2B2B2", "54"),
    new Array("AL", "1111111", "B2B2B2B2B2B2B2B2", "54"),
    new Array("AL", "X1111111", "B2B2B2B2B2B2B2B2", "54"),
    new Array("AL", "1111111@", "B2B2B2B2B2B2B2B2", "54"),
    new Array("AL", "11111111", "@2B2B2B2B2B2B2B2", "54"),
    new Array("AL", "11111111", "B2B2B2B2B2B2B2B@", "54"),
    new Array("AT", "11111", "22222222222", "17"),
    new Array("AT", "1111", "22222222222", "17"),
    new Array("AT", "X1111", "22222222222", "17"),
    new Array("AT", "1111@", "22222222222", "17"),
    new Array("AT", "11111", "X2222222222", "17"),
    new Array("AT", "11111", "2222222222@", "17"),
    new Array("BA", "111222", "3333333344", "79"),
    new Array("BA", "11122", "3333333344", "79"),
    new Array("BA", "X11222", "3333333344", "79"),
    new Array("BA", "11@222", "3333333344", "79"),
    new Array("BA", "111X22", "3333333344", "79"),
    new Array("BA", "11122@", "3333333344", "79"),
    new Array("BA", "111222", "X333333344", "79"),
    new Array("BA", "111222", "3333333@44", "79"),
    new Array("BA", "111222", "33333333X4", "79"),
    new Array("BA", "111222", "333333334@", "79"),
    new Array("BE", "111", "222222233", "93"),
    new Array("BE", "11", "222222233", "93"),
    new Array("BE", "X11", "222222233", "93"),
    new Array("BE", "11@", "222222233", "93"),
    new Array("BE", "111", "X22222233", "93"),
    new Array("BE", "111", "222222@33", "93"),
    new Array("BE", "111", "2222222X3", "93"),
    new Array("BE", "111", "22222223@", "93"),
    new Array("BG", "AAAA2222", "33D4D4D4D4", "20"),
    new Array("BG", "AAAA222", "33D4D4D4D4", "20"),
    new Array("BG", "8AAA2222", "33D4D4D4D4", "20"),
    new Array("BG", "AAA@2222", "33D4D4D4D4", "20"),
    new Array("BG", "AAAAX222", "33D4D4D4D4", "20"),
    new Array("BG", "AAAA222@", "33D4D4D4D4", "20"),
    new Array("BG", "AAAA2222", "X3D4D4D4D4", "20"),
    new Array("BG", "AAAA2222", "3@D4D4D4D4", "20"),
    new Array("BG", "AAAA2222", "33@4D4D4D4", "20"),
    new Array("BG", "AAAA2222", "33D4D4D4D@", "20"),
    new Array("CH", "11111", "B2B2B2B2B2B2", "60"),
    new Array("CH", "1111", "B2B2B2B2B2B2", "60"),
    new Array("CH", "X1111", "B2B2B2B2B2B2", "60"),
    new Array("CH", "1111@", "B2B2B2B2B2B2", "60"),
    new Array("CH", "11111", "@2B2B2B2B2B2", "60"),
    new Array("CH", "11111", "B2B2B2B2B2B@", "60"),
    new Array("CY", "11122222", "C3C3C3C3C3C3C3C3", "29"),
    new Array("CY", "1112222", "C3C3C3C3C3C3C3C3", "29"),
    new Array("CY", "X1122222", "C3C3C3C3C3C3C3C3", "29"),
    new Array("CY", "11@22222", "C3C3C3C3C3C3C3C3", "29"),
    new Array("CY", "111X2222", "C3C3C3C3C3C3C3C3", "29"),
    new Array("CY", "1112222@", "C3C3C3C3C3C3C3C3", "29"),
    new Array("CY", "11122222", "@3C3C3C3C3C3C3C3", "29"),
    new Array("CY", "11122222", "C3C3C3C3C3C3C3C@", "29"),
    new Array("CZ", "1111", "2222222222222222", "68"),
    new Array("CZ", "111", "2222222222222222", "68"),
    new Array("CZ", "X111", "2222222222222222", "68"),
    new Array("CZ", "111@", "2222222222222222", "68"),
    new Array("CZ", "1111", "X222222222222222", "68"),
    new Array("CZ", "1111", "222222222222222@", "68"),
    new Array("DE", "11111111", "2222222222", "16"),
    new Array("DE", "1111111", "2222222222", "16"),
    new Array("DE", "X1111111", "2222222222", "16"),
    new Array("DE", "1111111@", "2222222222", "16"),
    new Array("DE", "11111111", "X222222222", "16"),
    new Array("DE", "11111111", "222222222@", "16"),
    new Array("DK", "1111", "2222222223", "79"),
    new Array("DK", "111", "2222222223", "79"),
    new Array("DK", "X111", "2222222223", "79"),
    new Array("DK", "111@", "2222222223", "79"),
    new Array("DK", "1111", "X222222223", "79"),
    new Array("DK", "1111", "22222222@3", "79"),
    new Array("DK", "1111", "222222222X", "79"),
    new Array("EE", "11", "22333333333334", "96"),
    new Array("EE", "1", "22333333333334", "96"),
    new Array("EE", "X1", "22333333333334", "96"),
    new Array("EE", "1@", "22333333333334", "96"),
    new Array("EE", "11", "X2333333333334", "96"),
    new Array("EE", "11", "2@333333333334", "96"),
    new Array("EE", "11", "22X33333333334", "96"),
    new Array("EE", "11", "223333333333@4", "96"),
    new Array("EE", "11", "2233333333333X", "96"),
    new Array("ES", "11112222", "334444444444", "71"),
    new Array("ES", "1111222", "334444444444", "71"),
    new Array("ES", "X1112222", "334444444444", "71"),
    new Array("ES", "111@2222", "334444444444", "71"),
    new Array("ES", "1111X222", "334444444444", "71"),
    new Array("ES", "1111222@", "334444444444", "71"),
    new Array("ES", "11112222", "X34444444444", "71"),
    new Array("ES", "11112222", "3@4444444444", "71"),
    new Array("ES", "11112222", "33X444444444", "71"),
    new Array("ES", "11112222", "33444444444@", "71"),
    new Array("FI", "111111", "22222223", "68"),
    new Array("FI", "11111", "22222223", "68"),
    new Array("FI", "X11111", "22222223", "68"),
    new Array("FI", "11111@", "22222223", "68"),
    new Array("FI", "111111", "X2222223", "68"),
    new Array("FI", "111111", "222222@3", "68"),
    new Array("FI", "111111", "2222222X", "68"),
    new Array("FO", "1111", "2222222223", "49"),
    new Array("FO", "111", "2222222223", "49"),
    new Array("FO", "X111", "2222222223", "49"),
    new Array("FO", "111@", "2222222223", "49"),
    new Array("FO", "1111", "X222222223", "49"),
    new Array("FO", "1111", "22222222@3", "49"),
    new Array("FO", "1111", "222222222X", "49"),
    new Array("FR", "1111122222", "C3C3C3C3C3C44", "44"),
    new Array("FR", "111112222", "C3C3C3C3C3C44", "44"),
    new Array("FR", "X111122222", "C3C3C3C3C3C44", "44"),
    new Array("FR", "1111@22222", "C3C3C3C3C3C44", "44"),
    new Array("FR", "11111X2222", "C3C3C3C3C3C44", "44"),
    new Array("FR", "111112222@", "C3C3C3C3C3C44", "44"),
    new Array("FR", "1111122222", "@3C3C3C3C3C44", "44"),
    new Array("FR", "1111122222", "C3C3C3C3C3@44", "44"),
    new Array("FR", "1111122222", "C3C3C3C3C3CX4", "44"),
    new Array("FR", "1111122222", "C3C3C3C3C3C4@", "44"),
    new Array("GB", "AAAA222222", "33333333", "45"),
    new Array("GB", "AAAA22222", "33333333", "45"),
    new Array("GB", "8AAA222222", "33333333", "45"),
    new Array("GB", "AAA@222222", "33333333", "45"),
    new Array("GB", "AAAAX22222", "33333333", "45"),
    new Array("GB", "AAAA22222@", "33333333", "45"),
    new Array("GB", "AAAA222222", "X3333333", "45"),
    new Array("GB", "AAAA222222", "3333333@", "45"),
    new Array("GE", "AA", "2222222222222222", "98"),
    new Array("GE", "A", "2222222222222222", "98"),
    new Array("GE", "8A", "2222222222222222", "98"),
    new Array("GE", "A@", "2222222222222222", "98"),
    new Array("GE", "AA", "X222222222222222", "98"),
    new Array("GE", "AA", "222222222222222@", "98"),
    new Array("GI", "AAAA", "B2B2B2B2B2B2B2B", "72"),
    new Array("GI", "AAA", "B2B2B2B2B2B2B2B", "72"),
    new Array("GI", "8AAA", "B2B2B2B2B2B2B2B", "72"),
    new Array("GI", "AAA@", "B2B2B2B2B2B2B2B", "72"),
    new Array("GI", "AAAA", "@2B2B2B2B2B2B2B", "72"),
    new Array("GI", "AAAA", "B2B2B2B2B2B2B2@", "72"),
    new Array("GL", "1111", "2222222223", "49"),
    new Array("GL", "111", "2222222223", "49"),
    new Array("GL", "X111", "2222222223", "49"),
    new Array("GL", "111@", "2222222223", "49"),
    new Array("GL", "1111", "X222222223", "49"),
    new Array("GL", "1111", "22222222@3", "49"),
    new Array("GL", "1111", "222222222X", "49"),
    new Array("GR", "1112222", "C3C3C3C3C3C3C3C3", "61"),
    new Array("GR", "111222", "C3C3C3C3C3C3C3C3", "61"),
    new Array("GR", "X112222", "C3C3C3C3C3C3C3C3", "61"),
    new Array("GR", "11@2222", "C3C3C3C3C3C3C3C3", "61"),
    new Array("GR", "111X222", "C3C3C3C3C3C3C3C3", "61"),
    new Array("GR", "111222@", "C3C3C3C3C3C3C3C3", "61"),
    new Array("GR", "1112222", "@3C3C3C3C3C3C3C3", "61"),
    new Array("GR", "1112222", "C3C3C3C3C3C3C3C@", "61"),
    new Array("HR", "1111111", "2222222222", "94"),
    new Array("HR", "111111", "2222222222", "94"),
    new Array("HR", "X111111", "2222222222", "94"),
    new Array("HR", "111111@", "2222222222", "94"),
    new Array("HR", "1111111", "X222222222", "94"),
    new Array("HR", "1111111", "222222222@", "94"),
    new Array("HU", "1112222", "34444444444444445", "35"),
    new Array("HU", "111222", "34444444444444445", "35"),
    new Array("HU", "X112222", "34444444444444445", "35"),
    new Array("HU", "11@2222", "34444444444444445", "35"),
    new Array("HU", "111X222", "34444444444444445", "35"),
    new Array("HU", "111222@", "34444444444444445", "35"),
    new Array("HU", "1112222", "X4444444444444445", "35"),
    new Array("HU", "1112222", "3X444444444444445", "35"),
    new Array("HU", "1112222", "344444444444444@5", "35"),
    new Array("HU", "1112222", "3444444444444444X", "35"),
    new Array("IE", "AAAA222222", "33333333", "18"),
    new Array("IE", "AAAA22222", "33333333", "18"),
    new Array("IE", "8AAA222222", "33333333", "18"),
    new Array("IE", "AAA@222222", "33333333", "18"),
    new Array("IE", "AAAAX22222", "33333333", "18"),
    new Array("IE", "AAAA22222@", "33333333", "18"),
    new Array("IE", "AAAA222222", "X3333333", "18"),
    new Array("IE", "AAAA222222", "3333333@", "18"),
    new Array("IL", "111222", "3333333344", "64"),
    new Array("IL", "11122", "3333333344", "64"),
    new Array("IL", "X11222", "3333333344", "64"),
    new Array("IL", "11@222", "3333333344", "64"),
    new Array("IL", "111X22", "3333333344", "64"),
    new Array("IL", "11122@", "3333333344", "64"),
    new Array("IL", "111222", "X333333333333", "64"),
    new Array("IL", "111222", "333333333333@", "64"),
    new Array("IS", "1111", "223333333333333333", "12"),
    new Array("IS", "111", "223333333333333333", "12"),
    new Array("IS", "X111", "223333333333333333", "12"),
    new Array("IS", "111@", "223333333333333333", "12"),
    new Array("IS", "1111", "X23333333333333333", "12"),
    new Array("IS", "1111", "2@3333333333333333", "12"),
    new Array("IS", "1111", "22X333333333333333", "12"),
    new Array("IS", "1111", "22333333333333333@", "12"),
    new Array("IT", "A2222233333", "D4D4D4D4D4D4", "43"),
    new Array("IT", "A222223333", "D4D4D4D4D4D4", "43"),
    new Array("IT", "82222233333", "D4D4D4D4D4D4", "43"),
    new Array("IT", "AX222233333", "D4D4D4D4D4D4", "43"),
    new Array("IT", "A2222@33333", "D4D4D4D4D4D4", "43"),
    new Array("IT", "A22222X3333", "D4D4D4D4D4D4", "43"),
    new Array("IT", "A222223333@", "D4D4D4D4D4D4", "43"),
    new Array("IT", "A2222233333", "@4D4D4D4D4D4", "43"),
    new Array("IT", "A2222233333", "D4D4D4D4D4D@", "43"),
    new Array("KW", "AAAA", "B2B2B2B2B2B2B2B2B2B2B2", "93"),
    new Array("KW", "AAA", "B2B2B2B2B2B2B2B2B2B2B2", "93"),
    new Array("KW", "8AAA", "B2B2B2B2B2B2B2B2B2B2B2", "93"),
    new Array("KW", "AAA@", "B2B2B2B2B2B2B2B2B2B2B2", "93"),
    new Array("KW", "AAAA", "@2B2B2B2B2B2B2B2B2B2B2", "93"),
    new Array("KW", "AAAA", "B2B2B2B2B2B2B2B2B2B2B@", "93"),
    new Array("KZ", "111", "B2B2B2B2B2B2B", "21"),
    new Array("KZ", "11", "B2B2B2B2B2B2B", "21"),
    new Array("KZ", "X11", "B2B2B2B2B2B2B", "21"),
    new Array("KZ", "11@", "B2B2B2B2B2B2B", "21"),
    new Array("KZ", "111", "@2B2B2B2B2B2B", "21"),
    new Array("KZ", "111", "B2B2B2B2B2B2@", "21"),
    new Array("LB", "1111", "B2B2B2B2B2B2B2B2B2B2", "88"),
    new Array("LB", "111", "B2B2B2B2B2B2B2B2B2B2", "88"),
    new Array("LB", "X111", "B2B2B2B2B2B2B2B2B2B2", "88"),
    new Array("LB", "111@", "B2B2B2B2B2B2B2B2B2B2", "88"),
    new Array("LB", "1111", "@2B2B2B2B2B2B2B2B2B2", "88"),
    new Array("LB", "1111", "B2B2B2B2B2B2B2B2B2B@", "88"),
    new Array("LI", "11111", "B2B2B2B2B2B2", "73"),
    new Array("LI", "1111", "B2B2B2B2B2B2", "73"),
    new Array("LI", "X1111", "B2B2B2B2B2B2", "73"),
    new Array("LI", "1111@", "B2B2B2B2B2B2", "73"),
    new Array("LI", "11111", "@2B2B2B2B2B2", "73"),
    new Array("LI", "11111", "B2B2B2B2B2B@", "73"),
    new Array("LT", "11111", "22222222222", "15"),
    new Array("LT", "1111", "22222222222", "15"),
    new Array("LT", "X1111", "22222222222", "15"),
    new Array("LT", "1111@", "22222222222", "15"),
    new Array("LT", "11111", "X2222222222", "15"),
    new Array("LT", "11111", "2222222222@", "15"),
    new Array("LU", "111", "B2B2B2B2B2B2B", "27"),
    new Array("LU", "11", "B2B2B2B2B2B2B", "27"),
    new Array("LU", "X11", "B2B2B2B2B2B2B", "27"),
    new Array("LU", "11@", "B2B2B2B2B2B2B", "27"),
    new Array("LU", "111", "@2B2B2B2B2B2B", "27"),
    new Array("LU", "111", "B2B2B2B2B2B2@", "27"),
    new Array("LV", "AAAA", "B2B2B2B2B2B2B", "86"),
    new Array("LV", "AAA", "B2B2B2B2B2B2B", "86"),
    new Array("LV", "8AAA", "B2B2B2B2B2B2B", "86"),
    new Array("LV", "AAA@", "B2B2B2B2B2B2B", "86"),
    new Array("LV", "AAAA", "@2B2B2B2B2B2B", "86"),
    new Array("LV", "AAAA", "B2B2B2B2B2B2@", "86"),
    new Array("MC", "1111122222", "C3C3C3C3C3C44", "26"),
    new Array("MC", "111112222", "C3C3C3C3C3C44", "26"),
    new Array("MC", "X111122222", "C3C3C3C3C3C44", "26"),
    new Array("MC", "1111@22222", "C3C3C3C3C3C44", "26"),
    new Array("MC", "11111X2222", "C3C3C3C3C3C44", "26"),
    new Array("MC", "111112222@", "C3C3C3C3C3C44", "26"),
    new Array("MC", "1111122222", "@3C3C3C3C3C44", "26"),
    new Array("MC", "1111122222", "C3C3C3C3C3@44", "26"),
    new Array("MC", "1111122222", "C3C3C3C3C3CX4", "26"),
    new Array("MC", "1111122222", "C3C3C3C3C3C4@", "26"),
    new Array("ME", "111", "222222222222233", "38"),
    new Array("ME", "11", "222222222222233", "38"),
    new Array("ME", "X11", "222222222222233", "38"),
    new Array("ME", "11@", "222222222222233", "38"),
    new Array("ME", "111", "X22222222222233", "38"),
    new Array("ME", "111", "222222222222@33", "38"),
    new Array("ME", "111", "2222222222222X3", "38"),
    new Array("ME", "111", "22222222222223@", "38"),
    new Array("MK", "111", "B2B2B2B2B233", "41"),
    new Array("MK", "11", "B2B2B2B2B233", "41"),
    new Array("MK", "X11", "B2B2B2B2B233", "41"),
    new Array("MK", "11@", "B2B2B2B2B233", "41"),
    new Array("MK", "111", "@2B2B2B2B233", "41"),
    new Array("MK", "111", "B2B2B2B2B@33", "41"),
    new Array("MK", "111", "B2B2B2B2B2X3", "41"),
    new Array("MK", "111", "B2B2B2B2B23@", "41"),
    new Array("MR", "1111122222", "3333333333344", "21"),
    new Array("MR", "111112222", "3333333333344", "21"),
    new Array("MR", "X111122222", "3333333333344", "21"),
    new Array("MR", "1111@22222", "3333333333344", "21"),
    new Array("MR", "11111X2222", "3333333333344", "21"),
    new Array("MR", "111112222@", "3333333333344", "21"),
    new Array("MR", "1111122222", "X333333333344", "21"),
    new Array("MR", "1111122222", "3333333333@44", "21"),
    new Array("MR", "1111122222", "33333333333X4", "21"),
    new Array("MR", "1111122222", "333333333334@", "21"),
    new Array("MT", "AAAA22222", "C3C3C3C3C3C3C3C3C3", "39"),
    new Array("MT", "AAAA2222", "C3C3C3C3C3C3C3C3C3", "39"),
    new Array("MT", "8AAA22222", "C3C3C3C3C3C3C3C3C3", "39"),
    new Array("MT", "AAA@22222", "C3C3C3C3C3C3C3C3C3", "39"),
    new Array("MT", "AAAAX2222", "C3C3C3C3C3C3C3C3C3", "39"),
    new Array("MT", "AAAA2222@", "C3C3C3C3C3C3C3C3C3", "39"),
    new Array("MT", "AAAA22222", "@3C3C3C3C3C3C3C3C3", "39"),
    new Array("MT", "AAAA22222", "C3C3C3C3C3C3C3C3C@", "39"),
    new Array("MU", "AAAA2222", "333333333333333DDD", "37"),
    new Array("MU", "AAAA222", "333333333333333DDD", "37"),
    new Array("MU", "8AAA2222", "333333333333333DDD", "37"),
    new Array("MU", "AAA@2222", "333333333333333DDD", "37"),
    new Array("MU", "AAAAX222", "333333333333333DDD", "37"),
    new Array("MU", "AAAA222@", "333333333333333DDD", "37"),
    new Array("MU", "AAAA2222", "X33333333333333DDD", "37"),
    new Array("MU", "AAAA2222", "33333333333333@DDD", "37"),
    new Array("MU", "AAAA2222", "3333333333333338DD", "37"),
    new Array("MU", "AAAA2222", "333333333333333DD@", "37"),
    new Array("NL", "AAAA", "2222222222", "57"),
    new Array("NL", "AAA", "2222222222", "57"),
    new Array("NL", "8AAA", "2222222222", "57"),
    new Array("NL", "AAA@", "2222222222", "57"),
    new Array("NL", "AAAA", "X222222222", "57"),
    new Array("NL", "AAAA", "222222222@", "57"),
    new Array("NO", "1111", "2222223", "40"),
    new Array("NO", "111", "2222223", "40"),
    new Array("NO", "X111", "2222223", "40"),
    new Array("NO", "111@", "2222223", "40"),
    new Array("NO", "1111", "X222223", "40"),
    new Array("NO", "1111", "22222@3", "40"),
    new Array("NO", "1111", "222222X", "40"),
    new Array("PL", "11111111", "2222222222222222", "84"),
    new Array("PL", "1111111", "2222222222222222", "84"),
    new Array("PL", "X1111111", "2222222222222222", "84"),
    new Array("PL", "1111111@", "2222222222222222", "84"),
    new Array("PL", "11111111", "X222222222222222", "84"),
    new Array("PL", "11111111", "222222222222222@", "84"),
    new Array("PT", "11112222", "3333333333344", "59"),
    new Array("PT", "1111222", "3333333333344", "59"),
    new Array("PT", "X1112222", "3333333333344", "59"),
    new Array("PT", "111@2222", "3333333333344", "59"),
    new Array("PT", "1111X222", "3333333333344", "59"),
    new Array("PT", "1111222@", "3333333333344", "59"),
    new Array("PT", "11112222", "X333333333344", "59"),
    new Array("PT", "11112222", "3333333333@44", "59"),
    new Array("PT", "11112222", "33333333333X4", "59"),
    new Array("PT", "11112222", "333333333334@", "59"),
    new Array("RO", "AAAA", "B2B2B2B2B2B2B2B2", "91"),
    new Array("RO", "AAA", "B2B2B2B2B2B2B2B2", "91"),
    new Array("RO", "8AAA", "B2B2B2B2B2B2B2B2", "91"),
    new Array("RO", "AAA@", "B2B2B2B2B2B2B2B2", "91"),
    new Array("RO", "AAAA", "@2B2B2B2B2B2B2B2", "91"),
    new Array("RO", "AAAA", "B2B2B2B2B2B2B2B@", "91"),
    new Array("RS", "111", "222222222222233", "48"),
    new Array("RS", "11", "222222222222233", "48"),
    new Array("RS", "X11", "222222222222233", "48"),
    new Array("RS", "11@", "222222222222233", "48"),
    new Array("RS", "111", "X22222222222233", "48"),
    new Array("RS", "111", "222222222222@33", "48"),
    new Array("RS", "111", "2222222222222X3", "48"),
    new Array("RS", "111", "22222222222223@", "48"),
    new Array("SA", "11", "B2B2B2B2B2B2B2B2B2", "46"),
    new Array("SA", "1", "B2B2B2B2B2B2B2B2B2", "46"),
    new Array("SA", "X1", "B2B2B2B2B2B2B2B2B2", "46"),
    new Array("SA", "1@", "B2B2B2B2B2B2B2B2B2", "46"),
    new Array("SA", "11", "@2B2B2B2B2B2B2B2B2", "46"),
    new Array("SA", "11", "B2B2B2B2B2B2B2B2B@", "46"),
    new Array("SE", "111", "22222222222222223", "32"),
    new Array("SE", "11", "22222222222222223", "32"),
    new Array("SE", "X11", "22222222222222223", "32"),
    new Array("SE", "11@", "22222222222222223", "32"),
    new Array("SE", "111", "X2222222222222223", "32"),
    new Array("SE", "111", "222222222222222@3", "32"),
    new Array("SE", "111", "2222222222222222X", "32"),
    new Array("SI", "11111", "2222222233", "92"),
    new Array("SI", "1111", "2222222233", "92"),
    new Array("SI", "X1111", "2222222233", "92"),
    new Array("SI", "1111@", "2222222233", "92"),
    new Array("SI", "11111", "X222222233", "92"),
    new Array("SI", "11111", "2222222@33", "92"),
    new Array("SI", "11111", "22222222X3", "92"),
    new Array("SI", "11111", "222222223@", "92"),
    new Array("SK", "1111", "2222222222222222", "66"),
    new Array("SK", "111", "2222222222222222", "66"),
    new Array("SK", "X111", "2222222222222222", "66"),
    new Array("SK", "111@", "2222222222222222", "66"),
    new Array("SK", "1111", "X222222222222222", "66"),
    new Array("SK", "1111", "222222222222222@", "66"),
    new Array("SM", "A2222233333", "D4D4D4D4D4D4", "71"),
    new Array("SM", "A222223333", "D4D4D4D4D4D4", "71"),
    new Array("SM", "82222233333", "D4D4D4D4D4D4", "71"),
    new Array("SM", "AX222233333", "D4D4D4D4D4D4", "71"),
    new Array("SM", "A2222@33333", "D4D4D4D4D4D4", "71"),
    new Array("SM", "A22222X3333", "D4D4D4D4D4D4", "71"),
    new Array("SM", "A222223333@", "D4D4D4D4D4D4", "71"),
    new Array("SM", "A2222233333", "@4D4D4D4D4D4", "71"),
    new Array("SM", "A2222233333", "D4D4D4D4D4D@", "71"),
    new Array("TN", "11222", "333333333333344", "23"),
    new Array("TN", "1122", "333333333333344", "23"),
    new Array("TN", "X1222", "333333333333344", "23"),
    new Array("TN", "1@222", "333333333333344", "23"),
    new Array("TN", "11X22", "333333333333344", "23"),
    new Array("TN", "1122@", "333333333333344", "23"),
    new Array("TN", "11222", "X33333333333344", "23"),
    new Array("TN", "11222", "333333333333@44", "23"),
    new Array("TN", "11222", "3333333333333X4", "23"),
    new Array("TN", "11222", "33333333333334@", "23"),
    new Array("TR", "11111", "BC3C3C3C3C3C3C3C3", "95"),
    new Array("TR", "1111", "BC3C3C3C3C3C3C3C3", "95"),
    new Array("TR", "X1111", "BC3C3C3C3C3C3C3C3", "95"),
    new Array("TR", "1111@", "BC3C3C3C3C3C3C3C3", "95"),
    new Array("TR", "11111", "@C3C3C3C3C3C3C3C3", "95"),
    new Array("TR", "11111", "B@3C3C3C3C3C3C3C3", "95"),
    new Array("TR", "11111", "BC3C3C3C3C3C3C3C@", "95"),
    new Array("DE", "12345678", "5", "06"),
    new Array("DE", "12345678", "16", "97"),
    new Array("DE", "12345678", "16", "00"),
    new Array("DE", "12345678", "95", "98"),
    new Array("DE", "12345678", "95", "01"));


// Translation table and translation function for localized versions
var trans_tab = new Array();

function _(s) {
    var t = trans_tab[s];
    if (t)
        s = t;
    return s;
}

// Fill the translation table
function fill_trans_tab(trans_data) {
    for (var i = 0; i < trans_data.length / 2; ++i)
        trans_tab[trans_data[2 * i]] = trans_data[2 * i + 1];

    // Translate the country names in the iban_data list
    for (var i = 0; i < iban_data.length; ++i)
        iban_data[i].name = _(iban_data[i].name);
}


// Set debug_output = true if location ends with a hash or a quotation mark
var debug_output = (location.href.charAt(location.href.length - 1) == "#") ||
    (location.href.charAt(location.href.length - 1) == "?");

if (debug_output)
    debug_iban_data();

function debug_iban_data() {
    var s = "";
    for (var i = 0; i < iban_data.length; ++i) {
        var country = iban_data[i];
        s += country.name + " / " + country.code + " / ";
        for (var f = 0; f < country.bank.length; ++f)
            s += country.bank[f][0] + country.bank[f][1];
        s += " = " + country.bank_lng + " / ";
        for (var f = 0; f < country.acc.length; ++f)
            s += country.acc[f][0] + country.acc[f][1];
        s += " = " + country.acc_lng + " / " + country.total_lng + "\n";
    }
    alert(s);
}

function debug_check_vars() {
    var o = false;
    var s = "";
    for (var v in window) {
        if (o)
            s += "" + v + "=" + window[v] + "\n";
        if (v == "debug_check_vars")
            o = true;
    }
    if (s != "")
        alert("vars:\n" + s);
    else
        alert("no vars");
}


// dolnok pre SK IBAN

// Kontrola kodu banky
function InvalidKodBanky(kodBanky) {
    if (kodBanky == '0200') return false;
    if (kodBanky == '0900') return false;
    if (kodBanky == '0720') return false;
    if (kodBanky == '1100') return false;
    if (kodBanky == '1111') return false;
    if (kodBanky == '3000') return false;
    if (kodBanky == '3100') return false;
    if (kodBanky == '5200') return false;
    if (kodBanky == '5600') return false;
    if (kodBanky == '5900') return false;
    if (kodBanky == '6500') return false;
    if (kodBanky == '7300') return false;
    if (kodBanky == '7500') return false;
    if (kodBanky == '7930') return false;
    if (kodBanky == '8050') return false;
    if (kodBanky == '8100') return false;
    if (kodBanky == '8120') return false;
    if (kodBanky == '8130') return false;
    if (kodBanky == '8170') return false;
    if (kodBanky == '8160') return false;
    if (kodBanky == '8180') return false;
    if (kodBanky == '8191') return false;
    if (kodBanky == '8400') return false;
    if (kodBanky == '8320') return false;
    if (kodBanky == '8330') return false;
    if (kodBanky == '8350') return false;
    if (kodBanky == '8360') return false;
    if (kodBanky == '8370') return false;
    if (kodBanky == '8390') return false;
    if (kodBanky == '8410') return false;
    if (kodBanky == '8420') return false;
    if (kodBanky == '8430') return false;
    if (kodBanky == '1030') return false;
    if (kodBanky == '9950') return false;
    if (kodBanky == '9951') return false;
    if (kodBanky == '9952') return false;
    if (kodBanky == '2010') return false;

    return true;
}


// Kontrola predcislia
function InvalidPredcislie(ibanPart) {
    var predcislie = ibanPart.substring(0, 6);
    var jePredcislie = false;
    var pSucet;

    if (predcislie.charAt(5))
        pSucet = Number(predcislie.charAt(5)); // cislo * 1
    if (predcislie.charAt(4))
        pSucet = pSucet + predcislie.charAt(4) * 2;
    if (predcislie.charAt(3))
        pSucet = pSucet + predcislie.charAt(3) * 4;
    if (predcislie.charAt(2))
        pSucet = pSucet + predcislie.charAt(2) * 8;
    if (predcislie.charAt(1))
        pSucet = pSucet + predcislie.charAt(1) * 5;
    if (predcislie.charAt(0))
        pSucet = pSucet + predcislie.charAt(0) * 10;

    if (pSucet % 11 == 0)
        jePredcislie = true;

    return !jePredcislie;
}

// Kontrola cisla
function InvalidCislo(ibanPart) {
    var cislo = ibanPart.substring(6);
    var jeCislo = false;
    var cSucet;

    if (cislo.charAt(9))
        cSucet = Number(cislo.charAt(9)); // cislo * 1
    if (cislo.charAt(8))
        cSucet = cSucet + cislo.charAt(8) * 2;
    if (cislo.charAt(7))
        cSucet = cSucet + cislo.charAt(7) * 4;
    if (cislo.charAt(6))
        cSucet = cSucet + cislo.charAt(6) * 8;
    if (cislo.charAt(5))
        cSucet = cSucet + cislo.charAt(5) * 5;
    if (cislo.charAt(4))
        cSucet = cSucet + cislo.charAt(4) * 10;
    if (cislo.charAt(3))
        cSucet = cSucet + cislo.charAt(3) * 9;
    if (cislo.charAt(2))
        cSucet = cSucet + cislo.charAt(2) * 7;
    if (cislo.charAt(1))
        cSucet = cSucet + cislo.charAt(1) * 3;
    if (cislo.charAt(0))
        cSucet = cSucet + cislo.charAt(0) * 6;

    if (cSucet % 11 == 0)
        jeCislo = true;

    return !jeCislo;
}


// funkcie pre IBAN

function IbanExamples() {
    var ibans = '';

    for (i = 0; i < examples.length; i++) {
        ibans += examples[i][0] + examples[i][3] + examples[i][1] + examples[i][2] + '\r\n';
    }

    return ibans;
}

function CheckIbanExamples() {
    var checkResult = '';
    var iban = '';
    var result = '';

    for (i = 0; i < examples.length; i++) {
        iban = examples[i][0] + examples[i][3] + examples[i][1] + examples[i][2];
        result = CheckIBAN(iban);

        if (result == 1)
            checkResult += 'IBAN ' + iban + ' je OK\r\n';
        else
            checkResult += 'IBAN ' + iban + ' ' + result + '\r\n';
    }

    return checkResult;
}

function CheckTheseIbans(stringIbans) {
    var ibans = stringIbans.split(',');
    var checkResult = '';
    var iban = '';
    var result = '';

    for (i = 0; i < ibans.length; i++) {
        iban = ibans[i];
        result = CheckIBAN(iban);

        if (result == 1)
            checkResult += 'IBAN ' + iban + ' je OK\r\n';
        else
            checkResult += 'IBAN ' + iban + ' ' + result + '\r\n';
    }

    return checkResult;
}