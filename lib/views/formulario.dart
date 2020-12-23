import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:front/views/%20graphic.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:flutter_app_v2/views/grafico.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();

}

class _FormPageState extends State<FormPage> {
  List<DropdownMenuItem<String>> indicadores=[];
  List<DropdownMenuItem<int>> ano=[];
  List<DropdownMenuItem<int>> ano2=[];
  List<DropdownMenuItem<String>> pais=[];
  List<DropdownMenuItem<String>> pais2=[];
  String indicadorSelected=null;
  int anoSelected=null;
  int ano2Selected=null;
  String paisSelected=null;
  String pais2Selected=null;

  void loadDataIndicador(){
    indicadores=[];
    indicadores.add(new DropdownMenuItem(child:new Text('Producto interno bruto'),
        value:'PIB'));
    indicadores.add(new DropdownMenuItem(child:new Text('Desempleo'),
        value:'TDA'));
    indicadores.add(new DropdownMenuItem(child:new Text('Inflacion'),
        value:'IFL'));
    indicadores.add(new DropdownMenuItem(child:new Text('Tasa de cambio'),
        value:'TSC'));
  }
  void loadDataAno(){
    ano=[];
    ano.add(new DropdownMenuItem(child:new Text('2005'),
        value:2005));
    ano.add(new DropdownMenuItem(child:new Text('2006'),
        value:2006));
    ano.add(new DropdownMenuItem(child:new Text('2007'),
        value:2007));
    ano.add(new DropdownMenuItem(child:new Text('2008'),
        value:2008));
    ano.add(new DropdownMenuItem(child:new Text('2009'),
        value:2009));
    ano.add(new DropdownMenuItem(child:new Text('2010'),
        value:2010));
    ano.add(new DropdownMenuItem(child:new Text('2011'),
        value:2011));
    ano.add(new DropdownMenuItem(child:new Text('2012'),
        value:2012));
    ano.add(new DropdownMenuItem(child:new Text('2013'),
        value:2013));
    ano.add(new DropdownMenuItem(child:new Text('2014'),
        value:2014));
    ano.add(new DropdownMenuItem(child:new Text('2015'),
        value:2015));
    ano.add(new DropdownMenuItem(child:new Text('2016'),
        value:2016));
    ano.add(new DropdownMenuItem(child:new Text('2017'),
        value:2017));
    ano.add(new DropdownMenuItem(child:new Text('2018'),
        value:2018));
    ano.add(new DropdownMenuItem(child:new Text('2019'),
        value:2019));
    ano.add(new DropdownMenuItem(child:new Text('2020'),
        value:2020));
  }
  void loadDataAno2(){
    ano2=[];
    ano2.add(new DropdownMenuItem(child:new Text('2005'),
        value:2005));
    ano2.add(new DropdownMenuItem(child:new Text('2006'),
        value:2006));
    ano2.add(new DropdownMenuItem(child:new Text('2007'),
        value:2007));
    ano2.add(new DropdownMenuItem(child:new Text('2008'),
        value:2008));
    ano2.add(new DropdownMenuItem(child:new Text('2009'),
        value:2009));
    ano2.add(new DropdownMenuItem(child:new Text('2010'),
        value:2010));
    ano2.add(new DropdownMenuItem(child:new Text('2011'),
        value:2011));
    ano2.add(new DropdownMenuItem(child:new Text('2012'),
        value:2012));
    ano2.add(new DropdownMenuItem(child:new Text('2013'),
        value:2013));
    ano2.add(new DropdownMenuItem(child:new Text('2014'),
        value:2014));
    ano2.add(new DropdownMenuItem(child:new Text('2015'),
        value:2015));
    ano2.add(new DropdownMenuItem(child:new Text('2016'),
        value:2016));
    ano2.add(new DropdownMenuItem(child:new Text('2017'),
        value:2017));
    ano2.add(new DropdownMenuItem(child:new Text('2018'),
        value:2018));
    ano2.add(new DropdownMenuItem(child:new Text('2019'),
        value:2019));
    ano2.add(new DropdownMenuItem(child:new Text('2020'),
        value:2020));
  }
  void loadDataPais2(){
    pais2=[];
    pais2.add(new DropdownMenuItem(child:new Text('Afghanistan'),value:'AF'));
    pais2.add(new DropdownMenuItem(child:new Text('Åland Islands'),value:'AX'));
    pais2.add(new DropdownMenuItem(child:new Text('Albania'),value:'AL'));
    pais2.add(new DropdownMenuItem(child:new Text('Algeria'),value:'DZ'));
    pais2.add(new DropdownMenuItem(child:new Text('American Samoa'),value:'AS'));
    pais2.add(new DropdownMenuItem(child:new Text('Andorra'),value:'AD'));
    pais2.add(new DropdownMenuItem(child:new Text('Angola'),value:'AO'));
    pais2.add(new DropdownMenuItem(child:new Text('Anguilla'),value:'AI'));
    pais2.add(new DropdownMenuItem(child:new Text('Antarctica'),value:'AQ'));
    pais2.add(new DropdownMenuItem(child:new Text('Antigua and Barbuda'),value:'AG'));
    pais2.add(new DropdownMenuItem(child:new Text('Argentina'),value:'AR'));
    pais2.add(new DropdownMenuItem(child:new Text('Armenia'),value:'AM'));
    pais2.add(new DropdownMenuItem(child:new Text('Aruba'),value:'AW'));
    pais2.add(new DropdownMenuItem(child:new Text('Australia'),value:'AU'));
    pais2.add(new DropdownMenuItem(child:new Text('Austria'),value:'AT'));
    pais2.add(new DropdownMenuItem(child:new Text('Azerbaijan'),value:'AZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Bahamas'),value:'BS'));
    pais2.add(new DropdownMenuItem(child:new Text('Bahrain'),value:'BH'));
    pais2.add(new DropdownMenuItem(child:new Text('Bangladesh'),value:'BD'));
    pais2.add(new DropdownMenuItem(child:new Text('Barbados'),value:'BB'));
    pais2.add(new DropdownMenuItem(child:new Text('Belarus'),value:'BY'));
    pais2.add(new DropdownMenuItem(child:new Text('Belgium'),value:'BE'));
    pais2.add(new DropdownMenuItem(child:new Text('Belize'),value:'BZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Benin'),value:'BJ'));
    pais2.add(new DropdownMenuItem(child:new Text('Bermuda'),value:'BM'));
    pais2.add(new DropdownMenuItem(child:new Text('Bhutan'),value:'BT'));
    pais2.add(new DropdownMenuItem(child:new Text('Bolivia'),value:'BO'));
    pais2.add(new DropdownMenuItem(child:new Text('Bonaire'),value:'BQ'));
    pais2.add(new DropdownMenuItem(child:new Text('Bosnia and Herzegovina'),value:'BA'));
    pais2.add(new DropdownMenuItem(child:new Text('Botswana'),value:'BW'));
    pais2.add(new DropdownMenuItem(child:new Text('Bouvet Island'),value:'BV'));
    pais2.add(new DropdownMenuItem(child:new Text('Brazil'),value:'BR'));
    pais2.add(new DropdownMenuItem(child:new Text('British Indian Ocean Territory'),value:'IO'));
    pais2.add(new DropdownMenuItem(child:new Text('British Virgin Islands'),value:'VG'));
    pais2.add(new DropdownMenuItem(child:new Text('Brunei Darussalam'),value:'BN'));
    pais2.add(new DropdownMenuItem(child:new Text('Bulgaria'),value:'BG'));
    pais2.add(new DropdownMenuItem(child:new Text('Burkina Faso'),value:'BF'));
    pais2.add(new DropdownMenuItem(child:new Text('Burundi'),value:'BI'));
    pais2.add(new DropdownMenuItem(child:new Text('Cambodia'),value:'KH'));
    pais2.add(new DropdownMenuItem(child:new Text('Cameroon'),value:'CM'));
    pais2.add(new DropdownMenuItem(child:new Text('Canada'),value:'CA'));
    pais2.add(new DropdownMenuItem(child:new Text('Cape Verde'),value:'CV'));
    pais2.add(new DropdownMenuItem(child:new Text('Cayman Islands'),value:'KY'));
    pais2.add(new DropdownMenuItem(child:new Text('Central African Republic'),value:'CF'));
    pais2.add(new DropdownMenuItem(child:new Text('Chad'),value:'TD'));
    pais2.add(new DropdownMenuItem(child:new Text('Chile'),value:'CL'));
    pais2.add(new DropdownMenuItem(child:new Text('China'),value:'CN'));
    pais2.add(new DropdownMenuItem(child:new Text('Christmas Island'),value:'CX'));
    pais2.add(new DropdownMenuItem(child:new Text('Clipperton Islands'),value:'CP'));
    pais2.add(new DropdownMenuItem(child:new Text('Cocos (Keeling) Islands'),value:'CC'));
    pais2.add(new DropdownMenuItem(child:new Text('Colombia'),value:'CO'));
    pais2.add(new DropdownMenuItem(child:new Text('Comoros'),value:'KM'));
    pais2.add(new DropdownMenuItem(child:new Text('Congo DR'),value:'CD'));
    pais2.add(new DropdownMenuItem(child:new Text('Congo-Brazzaville'),value:'CG'));
    pais2.add(new DropdownMenuItem(child:new Text('Cook Islands'),value:'CK'));
    pais2.add(new DropdownMenuItem(child:new Text('Costa Rica'),value:'CR'));
    pais2.add(new DropdownMenuItem(child:new Text('Côte DIvoire'),value:'CI'));
    pais2.add(new DropdownMenuItem(child:new Text('Croatia'),value:'HR'));
    pais2.add(new DropdownMenuItem(child:new Text('Cuba'),value:'CU'));
    pais2.add(new DropdownMenuItem(child:new Text('Curaçao'),value:'CW'));
    pais2.add(new DropdownMenuItem(child:new Text('Cyprus'),value:'CY'));
    pais2.add(new DropdownMenuItem(child:new Text('Czechia'),value:'CZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Denmark'),value:'DK'));
    pais2.add(new DropdownMenuItem(child:new Text('Djibouti'),value:'DJ'));
    pais2.add(new DropdownMenuItem(child:new Text('Dominica'),value:'DM'));
    pais2.add(new DropdownMenuItem(child:new Text('Dominican Republic'),value:'DO'));
    pais2.add(new DropdownMenuItem(child:new Text('East Timor'),value:'TL'));
    pais2.add(new DropdownMenuItem(child:new Text('Ecuador'),value:'EC'));
    pais2.add(new DropdownMenuItem(child:new Text('Egypt'),value:'EG'));
    pais2.add(new DropdownMenuItem(child:new Text('El Salvador'),value:'SV'));
    pais2.add(new DropdownMenuItem(child:new Text('Equatorial Guinea'),value:'GQ'));
    pais2.add(new DropdownMenuItem(child:new Text('Eritrea'),value:'ER'));
    pais2.add(new DropdownMenuItem(child:new Text('Estonia'),value:'EE'));
    pais2.add(new DropdownMenuItem(child:new Text('Ethiopia'),value:'ET'));
    pais2.add(new DropdownMenuItem(child:new Text('Falkland Islands'),value:'FK'));
    pais2.add(new DropdownMenuItem(child:new Text('Faroe Islands'),value:'FO'));
    pais2.add(new DropdownMenuItem(child:new Text('Fiji'),value:'FJ'));
    pais2.add(new DropdownMenuItem(child:new Text('Finland'),value:'FI'));
    pais2.add(new DropdownMenuItem(child:new Text('France'),value:'FR'));
    pais2.add(new DropdownMenuItem(child:new Text('French Guiana'),value:'GF'));
    pais2.add(new DropdownMenuItem(child:new Text('French Polynesia'),value:'PF'));
    pais2.add(new DropdownMenuItem(child:new Text('French Southern Territories'),value:'TF'));
    pais2.add(new DropdownMenuItem(child:new Text('Gabon'),value:'GA'));
    pais2.add(new DropdownMenuItem(child:new Text('Gambia'),value:'GM'));
    pais2.add(new DropdownMenuItem(child:new Text('Georgia'),value:'GE'));
    pais2.add(new DropdownMenuItem(child:new Text('Germany'),value:'DE'));
    pais2.add(new DropdownMenuItem(child:new Text('Ghana'),value:'GH'));
    pais2.add(new DropdownMenuItem(child:new Text('Gibraltar'),value:'GI'));
    pais2.add(new DropdownMenuItem(child:new Text('Greece'),value:'GR'));
    pais2.add(new DropdownMenuItem(child:new Text('Greenland'),value:'GL'));
    pais2.add(new DropdownMenuItem(child:new Text('Grenada'),value:'GD'));
    pais2.add(new DropdownMenuItem(child:new Text('Guadeloupe'),value:'GP'));
    pais2.add(new DropdownMenuItem(child:new Text('Guam'),value:'GU'));
    pais2.add(new DropdownMenuItem(child:new Text('Guatemala'),value:'GT'));
    pais2.add(new DropdownMenuItem(child:new Text('Guernsey'),value:'GG'));
    pais2.add(new DropdownMenuItem(child:new Text('Guinea'),value:'GN'));
    pais2.add(new DropdownMenuItem(child:new Text('Guinea-Bissau'),value:'GW'));
    pais2.add(new DropdownMenuItem(child:new Text('Guyana'),value:'GY'));
    pais2.add(new DropdownMenuItem(child:new Text('Haiti'),value:'HT'));
    pais2.add(new DropdownMenuItem(child:new Text('Heard Island and McDonald Islands'),value:'HM'));
    pais2.add(new DropdownMenuItem(child:new Text('Honduras'),value:'HN'));
    pais2.add(new DropdownMenuItem(child:new Text('Hong Kong'),value:'HK'));
    pais2.add(new DropdownMenuItem(child:new Text('Hungary'),value:'HU'));
    pais2.add(new DropdownMenuItem(child:new Text('Iceland'),value:'IS'));
    pais2.add(new DropdownMenuItem(child:new Text('India'),value:'IN'));
    pais2.add(new DropdownMenuItem(child:new Text('Indonesia'),value:'ID'));
    pais2.add(new DropdownMenuItem(child:new Text('Iran'),value:'IR'));
    pais2.add(new DropdownMenuItem(child:new Text('Iraq'),value:'IQ'));
    pais2.add(new DropdownMenuItem(child:new Text('Ireland'),value:'IE'));
    pais2.add(new DropdownMenuItem(child:new Text('Isle of Man'),value:'IM'));
    pais2.add(new DropdownMenuItem(child:new Text('Israel'),value:'IL'));
    pais2.add(new DropdownMenuItem(child:new Text('Italy'),value:'IT'));
    pais2.add(new DropdownMenuItem(child:new Text('Jamaica'),value:'JM'));
    pais2.add(new DropdownMenuItem(child:new Text('Japan'),value:'JP'));
    pais2.add(new DropdownMenuItem(child:new Text('Jersey'),value:'JE'));
    pais2.add(new DropdownMenuItem(child:new Text('Jordan'),value:'JO'));
    pais2.add(new DropdownMenuItem(child:new Text('Kazakhstan'),value:'KZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Kenya'),value:'KE'));
    pais2.add(new DropdownMenuItem(child:new Text('Kiribati'),value:'KI'));
    pais2.add(new DropdownMenuItem(child:new Text('Kosovo'),value:'XK'));
    pais2.add(new DropdownMenuItem(child:new Text('Kuwait'),value:'KW'));
    pais2.add(new DropdownMenuItem(child:new Text('Kyrgyzstan'),value:'KG'));
    pais2.add(new DropdownMenuItem(child:new Text('Laos'),value:'LA'));
    pais2.add(new DropdownMenuItem(child:new Text('Latvia'),value:'LV'));
    pais2.add(new DropdownMenuItem(child:new Text('Lebanon'),value:'LB'));
    pais2.add(new DropdownMenuItem(child:new Text('Lesotho'),value:'LS'));
    pais2.add(new DropdownMenuItem(child:new Text('Liberia'),value:'LR'));
    pais2.add(new DropdownMenuItem(child:new Text('Libya'),value:'LY'));
    pais2.add(new DropdownMenuItem(child:new Text('Liechtenstein'),value:'LI'));
    pais2.add(new DropdownMenuItem(child:new Text('Lithuania'),value:'LT'));
    pais2.add(new DropdownMenuItem(child:new Text('Luxembourg'),value:'LU'));
    pais2.add(new DropdownMenuItem(child:new Text('Macau'),value:'MO'));
    pais2.add(new DropdownMenuItem(child:new Text('Macedonia'),value:'MK'));
    pais2.add(new DropdownMenuItem(child:new Text('Madagascar'),value:'MG'));
    pais2.add(new DropdownMenuItem(child:new Text('Malawi'),value:'MW'));
    pais2.add(new DropdownMenuItem(child:new Text('Malaysia'),value:'MY'));
    pais2.add(new DropdownMenuItem(child:new Text('Maldives'),value:'MV'));
    pais2.add(new DropdownMenuItem(child:new Text('Mali'),value:'ML'));
    pais2.add(new DropdownMenuItem(child:new Text('Malta'),value:'MT'));
    pais2.add(new DropdownMenuItem(child:new Text('Marshall Islands'),value:'MH'));
    pais2.add(new DropdownMenuItem(child:new Text('Martinique'),value:'MQ'));
    pais2.add(new DropdownMenuItem(child:new Text('Mauritania'),value:'MR'));
    pais2.add(new DropdownMenuItem(child:new Text('Mauritius'),value:'MU'));
    pais2.add(new DropdownMenuItem(child:new Text('Mayotte'),value:'YT'));
    pais2.add(new DropdownMenuItem(child:new Text('Mexico'),value:'MX'));
    pais2.add(new DropdownMenuItem(child:new Text('Micronesia'),value:'FM'));
    pais2.add(new DropdownMenuItem(child:new Text('Moldova'),value:'MD'));
    pais2.add(new DropdownMenuItem(child:new Text('Monaco'),value:'MC'));
    pais2.add(new DropdownMenuItem(child:new Text('Mongolia'),value:'MN'));
    pais2.add(new DropdownMenuItem(child:new Text('Montenegro'),value:'ME'));
    pais2.add(new DropdownMenuItem(child:new Text('Montserrat'),value:'MS'));
    pais2.add(new DropdownMenuItem(child:new Text('Morocco'),value:'MA'));
    pais2.add(new DropdownMenuItem(child:new Text('Mozambique'),value:'MZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Myanmar (Burma)'),value:'MM'));
    pais2.add(new DropdownMenuItem(child:new Text('Namibia'),value:'NA'));
    pais2.add(new DropdownMenuItem(child:new Text('Nauru'),value:'NR'));
    pais2.add(new DropdownMenuItem(child:new Text('Nepal'),value:'NP'));
    pais2.add(new DropdownMenuItem(child:new Text('Netherlands'),value:'NL'));
    pais2.add(new DropdownMenuItem(child:new Text('Netherlands Antilles'),value:'AN'));
    pais2.add(new DropdownMenuItem(child:new Text('New Caledonia'),value:'NC'));
    pais2.add(new DropdownMenuItem(child:new Text('New Zealand'),value:'NZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Nicaragua'),value:'NI'));
    pais2.add(new DropdownMenuItem(child:new Text('Niger'),value:'NE'));
    pais2.add(new DropdownMenuItem(child:new Text('Nigeria'),value:'NG'));
    pais2.add(new DropdownMenuItem(child:new Text('Niue'),value:'NU'));
    pais2.add(new DropdownMenuItem(child:new Text('Norfolk Island'),value:'NF'));
    pais2.add(new DropdownMenuItem(child:new Text('North Korea'),value:'KP'));
    pais2.add(new DropdownMenuItem(child:new Text('Northern Mariana Islands'),value:'MP'));
    pais2.add(new DropdownMenuItem(child:new Text('Norway'),value:'NO'));
    pais2.add(new DropdownMenuItem(child:new Text('Oman'),value:'OM'));
    pais2.add(new DropdownMenuItem(child:new Text('Pakistan'),value:'PK'));
    pais2.add(new DropdownMenuItem(child:new Text('Palau'),value:'PW'));
    pais2.add(new DropdownMenuItem(child:new Text('Palestinian Territory (Gaza Strip)'),value:'PS'));
    pais2.add(new DropdownMenuItem(child:new Text('Panama'),value:'PA'));
    pais2.add(new DropdownMenuItem(child:new Text('Papua New Guinea'),value:'PG'));
    pais2.add(new DropdownMenuItem(child:new Text('Paraguay'),value:'PY'));
    pais2.add(new DropdownMenuItem(child:new Text('Peru'),value:'PE'));
    pais2.add(new DropdownMenuItem(child:new Text('Philippines'),value:'PH'));
    pais2.add(new DropdownMenuItem(child:new Text('Pitcairn Islands'),value:'PN'));
    pais2.add(new DropdownMenuItem(child:new Text('Poland'),value:'PL'));
    pais2.add(new DropdownMenuItem(child:new Text('Portugal'),value:'PT'));
    pais2.add(new DropdownMenuItem(child:new Text('Puerto Rico'),value:'PR'));
    pais2.add(new DropdownMenuItem(child:new Text('Qatar'),value:'QA'));
    pais2.add(new DropdownMenuItem(child:new Text('Réunion'),value:'RE'));
    pais2.add(new DropdownMenuItem(child:new Text('Romania'),value:'RO'));
    pais2.add(new DropdownMenuItem(child:new Text('Russia'),value:'RU'));
    pais2.add(new DropdownMenuItem(child:new Text('Rwanda'),value:'RW'));
    pais2.add(new DropdownMenuItem(child:new Text('Sahrawi Arab (Western Sahara)'),value:'EH'));
    pais2.add(new DropdownMenuItem(child:new Text('Saint Barthélemy'),value:'BL'));
    pais2.add(new DropdownMenuItem(child:new Text('Saint Helena'),value:'SH'));
    pais2.add(new DropdownMenuItem(child:new Text('Saint Kitts and Nevis'),value:'KN'));
    pais2.add(new DropdownMenuItem(child:new Text('Saint Lucia'),value:'LC'));
    pais2.add(new DropdownMenuItem(child:new Text('Saint Martin'),value:'MF'));
    pais2.add(new DropdownMenuItem(child:new Text('Saint Pierre and Miquelon'),value:'PM'));
    pais2.add(new DropdownMenuItem(child:new Text('Saint Vincent and the Grenadines'),value:'VC'));
    pais2.add(new DropdownMenuItem(child:new Text('Samoa'),value:'WS'));
    pais2.add(new DropdownMenuItem(child:new Text('San Marino'),value:'SM'));
    pais2.add(new DropdownMenuItem(child:new Text('São Tomé and Príncipe'),value:'ST'));
    pais2.add(new DropdownMenuItem(child:new Text('Saudi Arabia'),value:'SA'));
    pais2.add(new DropdownMenuItem(child:new Text('Senegal'),value:'SN'));
    pais2.add(new DropdownMenuItem(child:new Text('Serbia'),value:'RS'));
    pais2.add(new DropdownMenuItem(child:new Text('Seychelles'),value:'SC'));
    pais2.add(new DropdownMenuItem(child:new Text('Sierra Leone'),value:'SL'));
    pais2.add(new DropdownMenuItem(child:new Text('Singapore'),value:'SG'));
    pais2.add(new DropdownMenuItem(child:new Text('Sint Maarten'),value:'SX'));
    pais2.add(new DropdownMenuItem(child:new Text('Slovakia'),value:'SK'));
    pais2.add(new DropdownMenuItem(child:new Text('Slovenia'),value:'SI'));
    pais2.add(new DropdownMenuItem(child:new Text('Solomon Islands'),value:'SB'));
    pais2.add(new DropdownMenuItem(child:new Text('Somalia'),value:'SO'));
    pais2.add(new DropdownMenuItem(child:new Text('South Africa'),value:'ZA'));
    pais2.add(new DropdownMenuItem(child:new Text('South Georgia and the South Sandwich Islands'),value:'GS'));
    pais2.add(new DropdownMenuItem(child:new Text('South Korea'),value:'KR'));
    pais2.add(new DropdownMenuItem(child:new Text('South Sudan'),value:'SS'));
    pais2.add(new DropdownMenuItem(child:new Text('Spain'),value:'ES'));
    pais2.add(new DropdownMenuItem(child:new Text('Sri Lanka'),value:'LK'));
    pais2.add(new DropdownMenuItem(child:new Text('Sudan'),value:'SD'));
    pais2.add(new DropdownMenuItem(child:new Text('Suriname'),value:'SR'));
    pais2.add(new DropdownMenuItem(child:new Text('Svalbard and Jan Mayen'),value:'SJ'));
    pais2.add(new DropdownMenuItem(child:new Text('Swaziland'),value:'SZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Sweden'),value:'SE'));
    pais2.add(new DropdownMenuItem(child:new Text('Switzerland'),value:'CH'));
    pais2.add(new DropdownMenuItem(child:new Text('Syria'),value:'SY'));
    pais2.add(new DropdownMenuItem(child:new Text('Taiwan'),value:'TW'));
    pais2.add(new DropdownMenuItem(child:new Text('Tajikistan'),value:'TJ'));
    pais2.add(new DropdownMenuItem(child:new Text('Tanzania'),value:'TZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Thailand'),value:'TH'));
    pais2.add(new DropdownMenuItem(child:new Text('Togo'),value:'TG'));
    pais2.add(new DropdownMenuItem(child:new Text('Tokelau'),value:'TK'));
    pais2.add(new DropdownMenuItem(child:new Text('Tonga'),value:'TO'));
    pais2.add(new DropdownMenuItem(child:new Text('Trinidad and Tobago'),value:'TT'));
    pais2.add(new DropdownMenuItem(child:new Text('Tunisia'),value:'TN'));
    pais2.add(new DropdownMenuItem(child:new Text('Turkey'),value:'TR'));
    pais2.add(new DropdownMenuItem(child:new Text('Turkmenistan'),value:'TM'));
    pais2.add(new DropdownMenuItem(child:new Text('Turks and Caicos'),value:'TC'));
    pais2.add(new DropdownMenuItem(child:new Text('Tuvalu'),value:'TV'));
    pais2.add(new DropdownMenuItem(child:new Text('Uganda'),value:'UG'));
    pais2.add(new DropdownMenuItem(child:new Text('Ukraine'),value:'UA'));
    pais2.add(new DropdownMenuItem(child:new Text('United Arab Emirates'),value:'AE'));
    pais2.add(new DropdownMenuItem(child:new Text('United Kingdom'),value:'GB'));
    pais2.add(new DropdownMenuItem(child:new Text('United States'),value:'US'));
    pais2.add(new DropdownMenuItem(child:new Text('United States Minor Outlying Islands'),value:'UM'));
    pais2.add(new DropdownMenuItem(child:new Text('Uruguay'),value:'UY'));
    pais2.add(new DropdownMenuItem(child:new Text('US Virgin Islands'),value:'VI'));
    pais2.add(new DropdownMenuItem(child:new Text('Uzbekistan'),value:'UZ'));
    pais2.add(new DropdownMenuItem(child:new Text('Vanuatu'),value:'VU'));
    pais2.add(new DropdownMenuItem(child:new Text('Vatican'),value:'VA'));
    pais2.add(new DropdownMenuItem(child:new Text('Venezuela'),value:'VE'));
    pais2.add(new DropdownMenuItem(child:new Text('Viet Nam'),value:'VN'));
    pais2.add(new DropdownMenuItem(child:new Text('Wallis and Futuna'),value:'WF'));
    pais2.add(new DropdownMenuItem(child:new Text('Yemen'),value:'YE'));
    pais2.add(new DropdownMenuItem(child:new Text('Zambia'),value:'ZM'));
    pais2.add(new DropdownMenuItem(child:new Text('Zimbabwe'),value:'ZW'));

  }
  void loadDataPais(){
    pais=[];
    pais.add(new DropdownMenuItem(child:new Text('Afghanistan'),value:'AF'));
    pais.add(new DropdownMenuItem(child:new Text('Åland Islands'),value:'AX'));
    pais.add(new DropdownMenuItem(child:new Text('Albania'),value:'AL'));
    pais.add(new DropdownMenuItem(child:new Text('Algeria'),value:'DZ'));
    pais.add(new DropdownMenuItem(child:new Text('American Samoa'),value:'AS'));
    pais.add(new DropdownMenuItem(child:new Text('Andorra'),value:'AD'));
    pais.add(new DropdownMenuItem(child:new Text('Angola'),value:'AO'));
    pais.add(new DropdownMenuItem(child:new Text('Anguilla'),value:'AI'));
    pais.add(new DropdownMenuItem(child:new Text('Antarctica'),value:'AQ'));
    pais.add(new DropdownMenuItem(child:new Text('Antarctica'),value:'AQ'));
    pais.add(new DropdownMenuItem(child:new Text('Antigua and Barbuda'),value:'AG'));
    pais.add(new DropdownMenuItem(child:new Text('Argentina'),value:'AR'));
    pais.add(new DropdownMenuItem(child:new Text('Armenia'),value:'AM'));
    pais.add(new DropdownMenuItem(child:new Text('Aruba'),value:'AW'));
    pais.add(new DropdownMenuItem(child:new Text('Australia'),value:'AU'));
    pais.add(new DropdownMenuItem(child:new Text('Austria'),value:'AT'));
    pais.add(new DropdownMenuItem(child:new Text('Azerbaijan'),value:'AZ'));
    pais.add(new DropdownMenuItem(child:new Text('Bahamas'),value:'BS'));
    pais.add(new DropdownMenuItem(child:new Text('Bahrain'),value:'BH'));
    pais.add(new DropdownMenuItem(child:new Text('Bangladesh'),value:'BD'));
    pais.add(new DropdownMenuItem(child:new Text('Barbados'),value:'BB'));
    pais.add(new DropdownMenuItem(child:new Text('Belarus'),value:'BY'));
    pais.add(new DropdownMenuItem(child:new Text('Belgium'),value:'BE'));
    pais.add(new DropdownMenuItem(child:new Text('Belize'),value:'BZ'));
    pais.add(new DropdownMenuItem(child:new Text('Benin'),value:'BJ'));
    pais.add(new DropdownMenuItem(child:new Text('Bermuda'),value:'BM'));
    pais.add(new DropdownMenuItem(child:new Text('Bhutan'),value:'BT'));
    pais.add(new DropdownMenuItem(child:new Text('Bolivia'),value:'BO'));
    pais.add(new DropdownMenuItem(child:new Text('Bonaire'),value:'BQ'));
    pais.add(new DropdownMenuItem(child:new Text('Bosnia and Herzegovina'),value:'BA'));
    pais.add(new DropdownMenuItem(child:new Text('Botswana'),value:'BW'));
    pais.add(new DropdownMenuItem(child:new Text('Bouvet Island'),value:'BV'));
    pais.add(new DropdownMenuItem(child:new Text('Brazil'),value:'BR'));
    pais.add(new DropdownMenuItem(child:new Text('British Indian Ocean Territory'),value:'IO'));
    pais.add(new DropdownMenuItem(child:new Text('British Virgin Islands'),value:'VG'));
    pais.add(new DropdownMenuItem(child:new Text('Brunei Darussalam'),value:'BN'));
    pais.add(new DropdownMenuItem(child:new Text('Bulgaria'),value:'BG'));
    pais.add(new DropdownMenuItem(child:new Text('Burkina Faso'),value:'BF'));
    pais.add(new DropdownMenuItem(child:new Text('Burundi'),value:'BI'));
    pais.add(new DropdownMenuItem(child:new Text('Cambodia'),value:'KH'));
    pais.add(new DropdownMenuItem(child:new Text('Cameroon'),value:'CM'));
    pais.add(new DropdownMenuItem(child:new Text('Canada'),value:'CA'));
    pais.add(new DropdownMenuItem(child:new Text('Cape Verde'),value:'CV'));
    pais.add(new DropdownMenuItem(child:new Text('Cayman Islands'),value:'KY'));
    pais.add(new DropdownMenuItem(child:new Text('Central African Republic'),value:'CF'));
    pais.add(new DropdownMenuItem(child:new Text('Chad'),value:'TD'));
    pais.add(new DropdownMenuItem(child:new Text('Chile'),value:'CL'));
    pais.add(new DropdownMenuItem(child:new Text('China'),value:'CN'));
    pais.add(new DropdownMenuItem(child:new Text('Christmas Island'),value:'CX'));
    pais.add(new DropdownMenuItem(child:new Text('Clipperton Islands'),value:'CP'));
    pais.add(new DropdownMenuItem(child:new Text('Cocos (Keeling) Islands'),value:'CC'));
    pais.add(new DropdownMenuItem(child:new Text('Colombia'),value:'CO'));
    pais.add(new DropdownMenuItem(child:new Text('Comoros'),value:'KM'));
    pais.add(new DropdownMenuItem(child:new Text('Congo DR'),value:'CD'));
    pais.add(new DropdownMenuItem(child:new Text('Congo-Brazzaville'),value:'CG'));
    pais.add(new DropdownMenuItem(child:new Text('Cook Islands'),value:'CK'));
    pais.add(new DropdownMenuItem(child:new Text('Costa Rica'),value:'CR'));
    pais.add(new DropdownMenuItem(child:new Text('Côte DIvoire'),value:'CI'));
    pais.add(new DropdownMenuItem(child:new Text('Croatia'),value:'HR'));
    pais.add(new DropdownMenuItem(child:new Text('Cuba'),value:'CU'));
    pais.add(new DropdownMenuItem(child:new Text('Curaçao'),value:'CW'));
    pais.add(new DropdownMenuItem(child:new Text('Cyprus'),value:'CY'));
    pais.add(new DropdownMenuItem(child:new Text('Czechia'),value:'CZ'));
    pais.add(new DropdownMenuItem(child:new Text('Denmark'),value:'DK'));
    pais.add(new DropdownMenuItem(child:new Text('Djibouti'),value:'DJ'));
    pais.add(new DropdownMenuItem(child:new Text('Dominica'),value:'DM'));
    pais.add(new DropdownMenuItem(child:new Text('Dominican Republic'),value:'DO'));
    pais.add(new DropdownMenuItem(child:new Text('East Timor'),value:'TL'));
    pais.add(new DropdownMenuItem(child:new Text('Ecuador'),value:'EC'));
    pais.add(new DropdownMenuItem(child:new Text('Egypt'),value:'EG'));
    pais.add(new DropdownMenuItem(child:new Text('El Salvador'),value:'SV'));
    pais.add(new DropdownMenuItem(child:new Text('Equatorial Guinea'),value:'GQ'));
    pais.add(new DropdownMenuItem(child:new Text('Eritrea'),value:'ER'));
    pais.add(new DropdownMenuItem(child:new Text('Estonia'),value:'EE'));
    pais.add(new DropdownMenuItem(child:new Text('Ethiopia'),value:'ET'));
    pais.add(new DropdownMenuItem(child:new Text('Falkland Islands'),value:'FK'));
    pais.add(new DropdownMenuItem(child:new Text('Faroe Islands'),value:'FO'));
    pais.add(new DropdownMenuItem(child:new Text('Fiji'),value:'FJ'));
    pais.add(new DropdownMenuItem(child:new Text('Finland'),value:'FI'));
    pais.add(new DropdownMenuItem(child:new Text('France'),value:'FR'));
    pais.add(new DropdownMenuItem(child:new Text('French Guiana'),value:'GF'));
    pais.add(new DropdownMenuItem(child:new Text('French Polynesia'),value:'PF'));
    pais.add(new DropdownMenuItem(child:new Text('French Southern Territories'),value:'TF'));
    pais.add(new DropdownMenuItem(child:new Text('Gabon'),value:'GA'));
    pais.add(new DropdownMenuItem(child:new Text('Gambia'),value:'GM'));
    pais.add(new DropdownMenuItem(child:new Text('Georgia'),value:'GE'));
    pais.add(new DropdownMenuItem(child:new Text('Germany'),value:'DE'));
    pais.add(new DropdownMenuItem(child:new Text('Ghana'),value:'GH'));
    pais.add(new DropdownMenuItem(child:new Text('Gibraltar'),value:'GI'));
    pais.add(new DropdownMenuItem(child:new Text('Greece'),value:'GR'));
    pais.add(new DropdownMenuItem(child:new Text('Greenland'),value:'GL'));
    pais.add(new DropdownMenuItem(child:new Text('Grenada'),value:'GD'));
    pais.add(new DropdownMenuItem(child:new Text('Guadeloupe'),value:'GP'));
    pais.add(new DropdownMenuItem(child:new Text('Guam'),value:'GU'));
    pais.add(new DropdownMenuItem(child:new Text('Guatemala'),value:'GT'));
    pais.add(new DropdownMenuItem(child:new Text('Guernsey'),value:'GG'));
    pais.add(new DropdownMenuItem(child:new Text('Guinea'),value:'GN'));
    pais.add(new DropdownMenuItem(child:new Text('Guinea-Bissau'),value:'GW'));
    pais.add(new DropdownMenuItem(child:new Text('Guyana'),value:'GY'));
    pais.add(new DropdownMenuItem(child:new Text('Haiti'),value:'HT'));
    pais.add(new DropdownMenuItem(child:new Text('Heard Island and McDonald Islands'),value:'HM'));
    pais.add(new DropdownMenuItem(child:new Text('Honduras'),value:'HN'));
    pais.add(new DropdownMenuItem(child:new Text('Hong Kong'),value:'HK'));
    pais.add(new DropdownMenuItem(child:new Text('Hungary'),value:'HU'));
    pais.add(new DropdownMenuItem(child:new Text('Iceland'),value:'IS'));
    pais.add(new DropdownMenuItem(child:new Text('India'),value:'IN'));
    pais.add(new DropdownMenuItem(child:new Text('Indonesia'),value:'ID'));
    pais.add(new DropdownMenuItem(child:new Text('Iran'),value:'IR'));
    pais.add(new DropdownMenuItem(child:new Text('Iraq'),value:'IQ'));
    pais.add(new DropdownMenuItem(child:new Text('Ireland'),value:'IE'));
    pais.add(new DropdownMenuItem(child:new Text('Isle of Man'),value:'IM'));
    pais.add(new DropdownMenuItem(child:new Text('Israel'),value:'IL'));
    pais.add(new DropdownMenuItem(child:new Text('Italy'),value:'IT'));
    pais.add(new DropdownMenuItem(child:new Text('Jamaica'),value:'JM'));
    pais.add(new DropdownMenuItem(child:new Text('Japan'),value:'JP'));
    pais.add(new DropdownMenuItem(child:new Text('Jersey'),value:'JE'));
    pais.add(new DropdownMenuItem(child:new Text('Jordan'),value:'JO'));
    pais.add(new DropdownMenuItem(child:new Text('Kazakhstan'),value:'KZ'));
    pais.add(new DropdownMenuItem(child:new Text('Kenya'),value:'KE'));
    pais.add(new DropdownMenuItem(child:new Text('Kiribati'),value:'KI'));
    pais.add(new DropdownMenuItem(child:new Text('Kosovo'),value:'XK'));
    pais.add(new DropdownMenuItem(child:new Text('Kuwait'),value:'KW'));
    pais.add(new DropdownMenuItem(child:new Text('Kyrgyzstan'),value:'KG'));
    pais.add(new DropdownMenuItem(child:new Text('Laos'),value:'LA'));
    pais.add(new DropdownMenuItem(child:new Text('Latvia'),value:'LV'));
    pais.add(new DropdownMenuItem(child:new Text('Lebanon'),value:'LB'));
    pais.add(new DropdownMenuItem(child:new Text('Lesotho'),value:'LS'));
    pais.add(new DropdownMenuItem(child:new Text('Liberia'),value:'LR'));
    pais.add(new DropdownMenuItem(child:new Text('Libya'),value:'LY'));
    pais.add(new DropdownMenuItem(child:new Text('Liechtenstein'),value:'LI'));
    pais.add(new DropdownMenuItem(child:new Text('Lithuania'),value:'LT'));
    pais.add(new DropdownMenuItem(child:new Text('Luxembourg'),value:'LU'));
    pais.add(new DropdownMenuItem(child:new Text('Macau'),value:'MO'));
    pais.add(new DropdownMenuItem(child:new Text('Macedonia'),value:'MK'));
    pais.add(new DropdownMenuItem(child:new Text('Madagascar'),value:'MG'));
    pais.add(new DropdownMenuItem(child:new Text('Malawi'),value:'MW'));
    pais.add(new DropdownMenuItem(child:new Text('Malaysia'),value:'MY'));
    pais.add(new DropdownMenuItem(child:new Text('Maldives'),value:'MV'));
    pais.add(new DropdownMenuItem(child:new Text('Mali'),value:'ML'));
    pais.add(new DropdownMenuItem(child:new Text('Malta'),value:'MT'));
    pais.add(new DropdownMenuItem(child:new Text('Marshall Islands'),value:'MH'));
    pais.add(new DropdownMenuItem(child:new Text('Martinique'),value:'MQ'));
    pais.add(new DropdownMenuItem(child:new Text('Mauritania'),value:'MR'));
    pais.add(new DropdownMenuItem(child:new Text('Mauritius'),value:'MU'));
    pais.add(new DropdownMenuItem(child:new Text('Mayotte'),value:'YT'));
    pais.add(new DropdownMenuItem(child:new Text('Mexico'),value:'MX'));
    pais.add(new DropdownMenuItem(child:new Text('Micronesia'),value:'FM'));
    pais.add(new DropdownMenuItem(child:new Text('Moldova'),value:'MD'));
    pais.add(new DropdownMenuItem(child:new Text('Monaco'),value:'MC'));
    pais.add(new DropdownMenuItem(child:new Text('Mongolia'),value:'MN'));
    pais.add(new DropdownMenuItem(child:new Text('Montenegro'),value:'ME'));
    pais.add(new DropdownMenuItem(child:new Text('Montserrat'),value:'MS'));
    pais.add(new DropdownMenuItem(child:new Text('Morocco'),value:'MA'));
    pais.add(new DropdownMenuItem(child:new Text('Mozambique'),value:'MZ'));
    pais.add(new DropdownMenuItem(child:new Text('Myanmar (Burma)'),value:'MM'));
    pais.add(new DropdownMenuItem(child:new Text('Namibia'),value:'NA'));
    pais.add(new DropdownMenuItem(child:new Text('Nauru'),value:'NR'));
    pais.add(new DropdownMenuItem(child:new Text('Nepal'),value:'NP'));
    pais.add(new DropdownMenuItem(child:new Text('Netherlands'),value:'NL'));
    pais.add(new DropdownMenuItem(child:new Text('Netherlands Antilles'),value:'AN'));
    pais.add(new DropdownMenuItem(child:new Text('New Caledonia'),value:'NC'));
    pais.add(new DropdownMenuItem(child:new Text('New Zealand'),value:'NZ'));
    pais.add(new DropdownMenuItem(child:new Text('Nicaragua'),value:'NI'));
    pais.add(new DropdownMenuItem(child:new Text('Niger'),value:'NE'));
    pais.add(new DropdownMenuItem(child:new Text('Nigeria'),value:'NG'));
    pais.add(new DropdownMenuItem(child:new Text('Niue'),value:'NU'));
    pais.add(new DropdownMenuItem(child:new Text('Norfolk Island'),value:'NF'));
    pais.add(new DropdownMenuItem(child:new Text('North Korea'),value:'KP'));
    pais.add(new DropdownMenuItem(child:new Text('Northern Mariana Islands'),value:'MP'));
    pais.add(new DropdownMenuItem(child:new Text('Norway'),value:'NO'));
    pais.add(new DropdownMenuItem(child:new Text('Oman'),value:'OM'));
    pais.add(new DropdownMenuItem(child:new Text('Pakistan'),value:'PK'));
    pais.add(new DropdownMenuItem(child:new Text('Palau'),value:'PW'));
    pais.add(new DropdownMenuItem(child:new Text('Palestinian Territory (Gaza Strip)'),value:'PS'));
    pais.add(new DropdownMenuItem(child:new Text('Panama'),value:'PA'));
    pais.add(new DropdownMenuItem(child:new Text('Papua New Guinea'),value:'PG'));
    pais.add(new DropdownMenuItem(child:new Text('Paraguay'),value:'PY'));
    pais.add(new DropdownMenuItem(child:new Text('Peru'),value:'PE'));
    pais.add(new DropdownMenuItem(child:new Text('Philippines'),value:'PH'));
    pais.add(new DropdownMenuItem(child:new Text('Pitcairn Islands'),value:'PN'));
    pais.add(new DropdownMenuItem(child:new Text('Poland'),value:'PL'));
    pais.add(new DropdownMenuItem(child:new Text('Portugal'),value:'PT'));
    pais.add(new DropdownMenuItem(child:new Text('Puerto Rico'),value:'PR'));
    pais.add(new DropdownMenuItem(child:new Text('Qatar'),value:'QA'));
    pais.add(new DropdownMenuItem(child:new Text('Réunion'),value:'RE'));
    pais.add(new DropdownMenuItem(child:new Text('Romania'),value:'RO'));
    pais.add(new DropdownMenuItem(child:new Text('Russia'),value:'RU'));
    pais.add(new DropdownMenuItem(child:new Text('Rwanda'),value:'RW'));
    pais.add(new DropdownMenuItem(child:new Text('Sahrawi Arab (Western Sahara)'),value:'EH'));
    pais.add(new DropdownMenuItem(child:new Text('Saint Barthélemy'),value:'BL'));
    pais.add(new DropdownMenuItem(child:new Text('Saint Helena'),value:'SH'));
    pais.add(new DropdownMenuItem(child:new Text('Saint Kitts and Nevis'),value:'KN'));
    pais.add(new DropdownMenuItem(child:new Text('Saint Lucia'),value:'LC'));
    pais.add(new DropdownMenuItem(child:new Text('Saint Martin'),value:'MF'));
    pais.add(new DropdownMenuItem(child:new Text('Saint Pierre and Miquelon'),value:'PM'));
    pais.add(new DropdownMenuItem(child:new Text('Saint Vincent and the Grenadines'),value:'VC'));
    pais.add(new DropdownMenuItem(child:new Text('Samoa'),value:'WS'));
    pais.add(new DropdownMenuItem(child:new Text('San Marino'),value:'SM'));
    pais.add(new DropdownMenuItem(child:new Text('São Tomé and Príncipe'),value:'ST'));
    pais.add(new DropdownMenuItem(child:new Text('Saudi Arabia'),value:'SA'));
    pais.add(new DropdownMenuItem(child:new Text('Senegal'),value:'SN'));
    pais.add(new DropdownMenuItem(child:new Text('Serbia'),value:'RS'));
    pais.add(new DropdownMenuItem(child:new Text('Seychelles'),value:'SC'));
    pais.add(new DropdownMenuItem(child:new Text('Sierra Leone'),value:'SL'));
    pais.add(new DropdownMenuItem(child:new Text('Singapore'),value:'SG'));
    pais.add(new DropdownMenuItem(child:new Text('Sint Maarten'),value:'SX'));
    pais.add(new DropdownMenuItem(child:new Text('Slovakia'),value:'SK'));
    pais.add(new DropdownMenuItem(child:new Text('Slovenia'),value:'SI'));
    pais.add(new DropdownMenuItem(child:new Text('Solomon Islands'),value:'SB'));
    pais.add(new DropdownMenuItem(child:new Text('Somalia'),value:'SO'));
    pais.add(new DropdownMenuItem(child:new Text('South Africa'),value:'ZA'));
    pais.add(new DropdownMenuItem(child:new Text('South Georgia and the South Sandwich Islands'),value:'GS'));
    pais.add(new DropdownMenuItem(child:new Text('South Korea'),value:'KR'));
    pais.add(new DropdownMenuItem(child:new Text('South Sudan'),value:'SS'));
    pais.add(new DropdownMenuItem(child:new Text('Spain'),value:'ES'));
    pais.add(new DropdownMenuItem(child:new Text('Sri Lanka'),value:'LK'));
    pais.add(new DropdownMenuItem(child:new Text('Sudan'),value:'SD'));
    pais.add(new DropdownMenuItem(child:new Text('Suriname'),value:'SR'));
    pais.add(new DropdownMenuItem(child:new Text('Svalbard and Jan Mayen'),value:'SJ'));
    pais.add(new DropdownMenuItem(child:new Text('Swaziland'),value:'SZ'));
    pais.add(new DropdownMenuItem(child:new Text('Sweden'),value:'SE'));
    pais.add(new DropdownMenuItem(child:new Text('Switzerland'),value:'CH'));
    pais.add(new DropdownMenuItem(child:new Text('Syria'),value:'SY'));
    pais.add(new DropdownMenuItem(child:new Text('Taiwan'),value:'TW'));
    pais.add(new DropdownMenuItem(child:new Text('Tajikistan'),value:'TJ'));
    pais.add(new DropdownMenuItem(child:new Text('Tanzania'),value:'TZ'));
    pais.add(new DropdownMenuItem(child:new Text('Thailand'),value:'TH'));
    pais.add(new DropdownMenuItem(child:new Text('Togo'),value:'TG'));
    pais.add(new DropdownMenuItem(child:new Text('Tokelau'),value:'TK'));
    pais.add(new DropdownMenuItem(child:new Text('Tonga'),value:'TO'));
    pais.add(new DropdownMenuItem(child:new Text('Trinidad and Tobago'),value:'TT'));
    pais.add(new DropdownMenuItem(child:new Text('Tunisia'),value:'TN'));
    pais.add(new DropdownMenuItem(child:new Text('Turkey'),value:'TR'));
    pais.add(new DropdownMenuItem(child:new Text('Turkmenistan'),value:'TM'));
    pais.add(new DropdownMenuItem(child:new Text('Turks and Caicos'),value:'TC'));
    pais.add(new DropdownMenuItem(child:new Text('Tuvalu'),value:'TV'));
    pais.add(new DropdownMenuItem(child:new Text('Uganda'),value:'UG'));
    pais.add(new DropdownMenuItem(child:new Text('Ukraine'),value:'UA'));
    pais.add(new DropdownMenuItem(child:new Text('United Arab Emirates'),value:'AE'));
    pais.add(new DropdownMenuItem(child:new Text('United Kingdom'),value:'GB'));
    pais.add(new DropdownMenuItem(child:new Text('United States'),value:'US'));
    pais.add(new DropdownMenuItem(child:new Text('United States Minor Outlying Islands'),value:'UM'));
    pais.add(new DropdownMenuItem(child:new Text('Uruguay'),value:'UY'));
    pais.add(new DropdownMenuItem(child:new Text('US Virgin Islands'),value:'VI'));
    pais.add(new DropdownMenuItem(child:new Text('Uzbekistan'),value:'UZ'));
    pais.add(new DropdownMenuItem(child:new Text('Vanuatu'),value:'VU'));
    pais.add(new DropdownMenuItem(child:new Text('Vatican'),value:'VA'));
    pais.add(new DropdownMenuItem(child:new Text('Venezuela'),value:'VE'));
    pais.add(new DropdownMenuItem(child:new Text('Viet Nam'),value:'VN'));
    pais.add(new DropdownMenuItem(child:new Text('Wallis and Futuna'),value:'WF'));
    pais.add(new DropdownMenuItem(child:new Text('Yemen'),value:'YE'));
    pais.add(new DropdownMenuItem(child:new Text('Zambia'),value:'ZM'));
    pais.add(new DropdownMenuItem(child:new Text('Zimbabwe'),value:'ZW'));

}
  String paisValue1;
  String paisValue2;
  int inicioValue;
  int terminoValue;

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    loadDataIndicador();
    loadDataAno();
    loadDataAno2();
    loadDataPais();
    loadDataPais2();
    return new MaterialApp(
      home: new Scaffold(
        appBar:new AppBar(
          title: new Text('Formulario Indicadores'),

        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key:formkey,
            child:ListView(
              children:<Widget>[
                  new DropdownButton(
                  value: indicadorSelected,
                  items: indicadores,
                  hint:new Text('Seleccione Indicador'),
                  onChanged: (value){
                    indicadorSelected=value;
                    setState(() {

                    });
                  },
                ),
                    new DropdownButton(
                    value:anoSelected,
                    items: ano,
                    hint:new Text('Año Inicio'),
                    onChanged: (value){
                      anoSelected=value;
                      setState(() {

                    });
                  },
                    ),
                new DropdownButton(
                  value:ano2Selected,
                  items: ano2,
                  hint:new Text('Año Fin'),
                  onChanged: (value){
                    ano2Selected=value;
                    setState(() {

                    });
                  },
                ),
                new DropdownButton(
                  value:paisSelected,
                  items: pais,
                  hint:new Text('Seleccione el Pais 1'),
                  onChanged: (value){
                    paisSelected=value;
                    setState(() {

                    });
                  },
                ),
                new DropdownButton(
                  value:pais2Selected,
                  items: pais2,
                  hint:new Text('Seleccione el Pais 2'),
                  onChanged: (value){
                    pais2Selected=value;
                    setState(() {

                    });
                  },
                ),
                new RaisedButton(
                  textColor:Colors.white,
                  color:Colors.blue,
                  child: Text("Graficar!",style: TextStyle(fontSize:20.0)),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePage(paisSelected,pais2Selected,anoSelected,ano2Selected,indicadorSelected),
                    )
                    );
                  }
                )

              ]
            ),

          ),

        ),

      ),
    );

  }

  //void _graficar(BuildContext context) {
    //if (formkey.currentState.validate()){
      //formkey.currentState.save();
      //Navigator.of(context).pushNamed("/graphic",
          //arguments: GraphicPageArguments(
              //indicador: this.indicadorValue, pais1: this.paisValue1, pais2: this.paisValue2, inicio: this.inicioValue, termino: this.terminoValue
          //));
}
  //}
//}