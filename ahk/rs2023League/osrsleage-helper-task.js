completed = Object.values($(".wikisync-completed"));
b = 0;
array = [];
for( ele of completed)
{
	
	b = ele.getAttribute?.("data-taskid")
    if(b)
    {
        array.push(b)
    }
}
console.log(array)




for(const ele of array)
{
    let a = $(`[data-taskid=${ele}]`)
    a.css("border", "dotted blue")
}



array = [
    "435",
    "442",
    "497",
    "498",
    "499",
    "500",
    "665",
    "11",
    "603",
    "679",
    "680",
    "316",
    "1505",
    "739",
    "649",
    "648",
    "650",
    "626",
    "596",
    "595",
    "699",
    "1882",
    "696",
    "496",
    "602",
    "641",
    "673",
    "1725",
    "1644",
    "640",
    "1645",
    "219",
    "220",
    "210",
    "701",
    "1626",
    "969",
    "725",
    "734",
    "720",
    "629",
    "729",
    "1406",
    "738",
    "1405",
    "1404",
    "1716",
    "618",
    "1715",
    "617",
    "616",
    "175",
    "165",
    "1633",
    "681",
    "674",
    "700",
    "1508",
    "1729",
    "1730",
    "609",
    "610",
    "597",
    "611",
    "694",
    "580",
    "495",
    "579",
    "587",
    "588",
    "664",
    "586",
    "521",
    "522",
    "523",
    "709",
    "710",
    "509",
    "510",
    "511",
    "624",
    "313",
    "1688",
    "655",
    "656",
    "657",
    "1731",
    "1732",
    "639",
    "581",
    "1403",
    "604",
    "1708",
    "314",
    "666",
    "1632",
    "717",
    "672",
    "1424",
    "1175",
    "1221",
    "1177",
    "1217",
    "1184",
    "1218",
    "1219",
    "1205",
    "1676",
    "1165",
    "1675",
    "1154",
    "1155",
    "1156",
    "1375",
    "1209",
    "1169",
    "964",
    "980",
    "970",
    "1006",
    "1002",
    "975",
    "958",
    "328",
    "233",
    "1646",
    "245",
    "7",
    "3",
    "0",
    "4",
    "2",
    "1",
    "5",
    "1634",
    "414",
    "476",
    "428",
    "816",
    "1673",
    "815",
    "813",
    "809",
    "768",
    "821",
    "1880",
    "812",
    "771",
    "775",
    "822",
    "803",
    "811",
    "1668",
    "814",
    "1671",
    "1672",
    "1679",
    "1669",
    "1665",
    "1663",
    "807",
    "1495",
    "763",
    "784",
    "1690",
    "766",
    "805",
    "817",
    "759",
    "1284",
    "1237",
    "1244",
    "1248",
    "1240",
    "1295",
    "1297",
    "1287",
    "1456",
    "456",
    "449",
    "1457",
    "1807",
    "1808",
    "1806",
    "501",
    "502",
    "503",
    "280",
    "600",
    "668",
    "682",
    "494",
    "742",
    "743",
    "651",
    "653",
    "652",
    "690",
    "591",
    "598",
    "599",
    "1573",
    "703",
    "697",
    "1574",
    "606",
    "642",
    "675",
    "676",
    "644",
    "643",
    "677",
    "620",
    "211",
    "630",
    "201",
    "1693",
    "726",
    "731",
    "730",
    "732",
    "727",
    "683",
    "258",
    "722",
    "257",
    "735",
    "721",
    "741",
    "49",
    "590",
    "1312",
    "1717",
    "619",
    "621",
    "1691",
    "156",
    "166",
    "589",
    "1659",
    "1637",
    "702",
    "704",
    "612",
    "613",
    "583",
    "614",
    "718",
    "582",
    "281",
    "584",
    "408",
    "524",
    "525",
    "526",
    "711",
    "712",
    "512",
    "513",
    "514",
    "628",
    "660",
    "1733",
    "659",
    "740",
    "695",
    "1769",
    "804",
    "1191",
    "1180",
    "1220",
    "1765",
    "1210",
    "1178",
    "1593",
    "1374",
    "1186",
    "1188",
    "1185",
    "1567",
    "1546",
    "1576",
    "1376",
    "1183",
    "1373",
    "1167",
    "1166",
    "1173",
    "1214",
    "1157",
    "1158",
    "1159",
    "1176",
    "959",
    "966",
    "965",
    "994",
    "995",
    "968",
    "993",
    "999",
    "1005",
    "998",
    "483",
    "286",
    "276",
    "282",
    "480",
    "482",
    "268",
    "266",
    "270",
    "267",
    "1639",
    "1475",
    "1641",
    "272",
    "486",
    "429",
    "430",
    "774",
    "769",
    "1881",
    "1631",
    "808",
    "801",
    "797",
    "1377",
    "772",
    "776",
    "780",
    "785",
    "781",
    "747",
    "810",
    "760",
    "1666",
    "1685",
    "749",
    "818",
    "1481",
    "1236",
    "1285",
    "1292",
    "1288",
    "1232",
    "1233",
    "1242",
    "1249",
    "1253",
    "1296",
    "1222",
    "1223",
    "1256",
    "1291",
    "1678",
    "1441",
    "1458",
    "1809",
    "1442",
    "504",
    "505",
    "506",
    "685",
    "686",
    "745",
    "654",
    "592",
    "601",
    "706",
    "1771",
    "608",
    "678",
    "593",
    "723",
    "733",
    "736",
    "737",
    "22",
    "1313",
    "622",
    "623",
    "157",
    "1100",
    "705",
    "615",
    "1566",
    "229",
    "527",
    "528",
    "713",
    "714",
    "515",
    "516",
    "228",
    "662",
    "1621",
    "585",
    "1192",
    "1189",
    "1211",
    "1181",
    "1766",
    "1542",
    "1596",
    "1187",
    "1597",
    "1179",
    "1168",
    "1174",
    "1160",
    "1161",
    "661",
    "967",
    "996",
    "1553",
    "1554",
    "1752",
    "972",
    "1000",
    "976",
    "985",
    "986",
    "981",
    "971",
    "1004",
    "961",
    "977",
    "960",
    "470",
    "1623",
    "246",
    "277",
    "487",
    "269",
    "273",
    "274",
    "1619",
    "761",
    "762",
    "770",
    "1713",
    "1286",
    "1289",
    "1618",
    "1235",
    "1680",
    "507",
    "508",
    "1711",
    "1467",
    "647",
    "577",
    "543",
    "555",
    "1840",
    "1829",
    "1863",
    "1852",
    "570",
    "556",
    "576",
    "542",
    "554",
    "574",
    "517",
    "594",
    "1195",
    "1372",
    "1190",
    "1207",
    "1381",
    "1172",
    "997",
    "1555",
    "973",
    "963",
    "1001",
    "983",
    "962",
    "1714",
    "288",
    "1734",
    "1770",
    "1707",
    "1263"
  ]