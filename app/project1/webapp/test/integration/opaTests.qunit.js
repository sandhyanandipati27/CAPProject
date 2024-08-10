sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/employeeList',
		'project1/test/integration/pages/employeeObjectPage'
    ],
    function(JourneyRunner, opaJourney, employeeList, employeeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheemployeeList: employeeList,
					onTheemployeeObjectPage: employeeObjectPage
                }
            },
            opaJourney.run
        );
    }
);