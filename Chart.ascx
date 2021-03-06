﻿<%@ control language="C#" autoeventwireup="true" inherits="ChartUC, App_Web_jdctjd1b" %>
<div id="chartContainer" style="display: block">
    <asp:Image ID="ajaxLoadNotificationImage" runat="server" ImageUrl="~/images/indicator_medium.gif" />Please
    wait...</div>
<script type="text/javascript">
    $(document).ready(function () {
        var href = window.location.href.split('/');
        var baseUrl = href[0] + '//' + href[2] + '/' + href[3];
        $.ajax({
            url: baseUrl + "/api/Chart/",
            type: 'GET',
            contentType: 'application/json',
            data: { id: '', strChartIds: chartIds, strChartSubType: chartSubType, strDrillBy: '', strUserName: userName, strSearchParameter: searchParameter },
            success: function (data) {
                log(data);
                var myChart = new FusionCharts(baseUrl + '/FusionChartLib/' + data.SWF, 'myChartId', chartWidth, chartHeight, '0', '1');
                myChart.setXMLData(data.ChartXML);
                myChart.render('chartContainer');
            }
        });
    });</script>
