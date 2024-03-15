sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/app/employeeworklist/test/integration/FirstJourney',
		'com/app/employeeworklist/test/integration/pages/EmployeeList',
		'com/app/employeeworklist/test/integration/pages/EmployeeObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeList, EmployeeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/app/employeeworklist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeList: EmployeeList,
					onTheEmployeeObjectPage: EmployeeObjectPage
                }
            },
            opaJourney.run
        );
    }
);