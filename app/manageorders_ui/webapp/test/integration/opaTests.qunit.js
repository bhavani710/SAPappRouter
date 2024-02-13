sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'manageordersui/test/integration/FirstJourney',
		'manageordersui/test/integration/pages/SalesOrdersList',
		'manageordersui/test/integration/pages/SalesOrdersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesOrdersList, SalesOrdersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('manageordersui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesOrdersList: SalesOrdersList,
					onTheSalesOrdersObjectPage: SalesOrdersObjectPage
                }
            },
            opaJourney.run
        );
    }
);