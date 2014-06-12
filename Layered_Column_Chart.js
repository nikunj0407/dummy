var chart = AmCharts.makeChart("chartdiv", {
    "theme": "none",
    "type": "serial",
    "dataProvider": [{
        "question_type": "Fill Blanks",
        "year2004": 10,
        "year2005": 9
    }, {
        "question_type": "True False",
        "year2004": 10,
        "year2005": 8
    }, {
        "question_type": "MCQ1",
        "year2004": 20,
        "year2005": 15
    }, {
        "question_type": "MCQ2",
        "year2004": 10,
        "year2005": 7
    }, {
        "question_type": "MCQ3",
        "year2004": 6,
        "year2005": 6
    }, {
        "question_type": "Short Note",
        "year2004": 10,
        "year2005": 5
    },
	{
        "question_type": "Rearrange",
        "year2004": 4,
        "year2005": 2
    },
	{
        "question_type": "HTML Code",
        "year2004": 10,
        "year2005": 2
    }],
    "valueAxes": [{
	/*	"unit": "%",*/
        "position": "left",
        "title": "Marks",
    }],
    "startDuration": 1,
    "graphs": [{
        "balloonText": "Total marks in [[category]]: <b>[[value]]</b>",
        "fillAlphas": 0.9,
        "lineAlpha": 0.2,
        "title": "2004",
        "type": "column",
        "valueField": "year2004"
    }, {
        "balloonText": "Avg marks in [[category]] (2005): <b>[[value]]</b>",
        "fillAlphas": 0.9,
        "lineAlpha": 0.2,
        "title": "2005",
        "type": "column",
        "clustered":false,
        "columnWidth":0.5,
        "valueField": "year2005"
    }],
    "plotAreaFillAlphas": 0.1,
    "categoryField": "question_type",
    "categoryAxis": {
        "gridPosition": "start"
    }
});


