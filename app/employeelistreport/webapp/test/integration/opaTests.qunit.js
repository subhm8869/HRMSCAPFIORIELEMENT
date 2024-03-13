sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/app/employeelistreport/test/integration/FirstJourney',
		'com/app/employeelistreport/test/integration/pages/EmployeeList',
		'com/app/employeelistreport/test/integration/pages/EmployeeObjectPage',
		'com/app/employeelistreport/test/integration/pages/AddressObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeList, EmployeeObjectPage, AddressObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/app/employeelistreport') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeList: EmployeeList,
					onTheEmployeeObjectPage: EmployeeObjectPage,
					onTheAddressObjectPage: AddressObjectPage
                }
            },
            opaJourney.run
        );
    }
);