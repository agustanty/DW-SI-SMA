<script>  
        var chart = AmCharts.makeChart("chartdiv", {
        "theme": "light",
        "type": "serial",
        "dataProvider": [{
            "country": "Alba",
            "year2015": <?=$nilai1 ?>,
            "year2016": <?=$nilai2 ?>

        }, {
            "country": "Ahmad",
            "year2015": <?=$nilai11 ?>,
            "year2016": <?=$nilai21 ?>
        }, {
            "country": "Agus",
            "year2015": <?=$nilai12 ?>,
            "year2016": <?=$nilai22 ?>
        }, ],
        "valueAxes": [{
            "stackType": "3d",
            "unit": "%",
            "position": "left",
            "title": "NIlai Per Dua Tahun",
        }],
        "startDuration": 1,
        "graphs": [{
            "balloonText": "Nilai [[category]] Tahun (2015): <b>[[value]]</b>",
            "fillAlphas": 0.9,
            "lineAlpha": 0.2,
            "title": "2004",
            "type": "column",
            "valueField": "year2015"
        }, {
            "balloonText": "Nilai [[category]] Tahun (2016): <b>[[value]]</b>",
            "fillAlphas": 0.9,
            "lineAlpha": 0.2,
            "title": "2005",
            "type": "column",
            "valueField": "year2016"
        }],
        "plotAreaFillAlphas": 0.1,
        "depth3D": 60,
        "angle": 30,
        "categoryField": "country",
        "categoryAxis": {
            "gridPosition": "start"
        },
        "export": {
            "enabled": true
         }
    });
    jQuery('.chart-input').off().on('input change',function() {
        var property    = jQuery(this).data('property');
        var target      = chart;
        chart.startDuration = 0;

        if ( property == 'topRadius') {
            target = chart.graphs[0];
            if ( this.value == 0 ) {
              this.value = undefined;
            }
        }

        target[property] = this.value;
        chart.validateNow();
    });
</script>