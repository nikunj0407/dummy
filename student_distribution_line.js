var chart = AmCharts.makeChart("chartdiv", {
    "type": "serial",
	"theme": "none",
    "pathToImages": "http://www.amcharts.com/lib/3/images/",
    "dataProvider": [{
        "date": "1",
        "value": 5
    }, {
        "date": "2",
        "value": 15
    }, {
        "date": "3",
        "value": 13
    }, {
        "date": "4",
        "value": 17
    }, {
        "date": "5",
        "value": 15
    }, {
        "date": "6",
        "value": 19
    }, {
        "date": "7",
        "value": 21
    }, {
        "date": "8",
        "value": 20
    }, {
        "date": "9",
        "value": 20
    }, {
        "date": "10",
        "value": 19
    }, {
        "date": "11",
        "value": 25
    }, {
        "date": "12",
        "value": 24
    }, {
        "date": "13",
        "value": 26
    }, {
        "date": "14",
        "value": 27
    }, {
        "date": "15",
        "value": 25
    }, {
        "date": "16",
        "value": 29
    }, {
        "date": "17",
        "value": 28
    }, {
        "date": "18",
        "value": 30
    }, {
        "date": "19",
        "value": 72,
        "customBullet": "http://www.amcharts.com/lib/3/images/redstar.png"
    }, {
        "date": "20",
        "value": 43
    }],
    "valueAxes": [{
        "axisAlpha": 0,
        "dashLength": 4,
        "position": "left"
    }],
    "graphs": [{
        "bulletSize": 14,
        "customBullet": "http://www.amcharts.com/lib/3/images/star.png",
        "customBulletField": "customBullet",
        "valueField": "value"
    }],
    "marginTop": 20,
    "marginRight": 20,
    "marginLeft": 40,
    "marginBottom": 20,
    "chartCursor": {graphBulletSize:1.5},
    "autoMargins": false,
   // "dataDateFormat": "YYYY-MM-DD",
    "categoryField": "date",
    "categoryAxis": {
       // "parseDates": true,
        "axisAlpha": 0,
        "gridAlpha": 0,
        "inside": true,
        "tickLength": 0
    },
    "exportConfig": {
        "menuTop": "20px",
        "menuRight": "20px",
        "menuItems": [{
            "icon": 'http://www.amcharts.com/lib/3/images/export.png',
            "format": 'png'
        }]
    }
});
