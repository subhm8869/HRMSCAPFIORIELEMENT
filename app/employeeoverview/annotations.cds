using HRMSService as service from '../../srv/hrmsSystem';

annotate service.EmployeeCountByGender with @(UI: {Chart #employeeDonut: {
    $Type              : 'UI.ChartDefinitionType',
    ChartType          : #Column,
    Measures           : ['EmployeeCount'],
    MeasureAttributes  : [{
        $Type  : 'UI.ChartMeasureAttributeType',
        Measure: 'EmployeeCount',
        Role   : #Axis1
    }],
    Dimensions         : ['Gender'],
    DimensionAttributes: [{
        $Type    : 'UI.ChartDimensionAttributeType',
        Dimension: 'Gender',
        Role     : #Category
    }]
}, });

annotate service.Employee with @(
    UI:{
        Identification #navigationId : [
            {
                $Type : 'UI.DataFieldWithIntentBasedNavigation',
                Value : 'EmployeeOVP',
                SemanticObject : 'Display',
            },
        ],
    }
);