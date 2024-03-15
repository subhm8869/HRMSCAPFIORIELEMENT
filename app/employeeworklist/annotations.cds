using HRMSService as service from '../../srv/hrmsSystem';

annotate service.Employee with @(UI:{
    SelectionVariant #malePopulation : {
        $Type        : 'UI.SelectionVariantType',
        SelectOptions: [{
            $Type       : 'UI.SelectOptionType',
            PropertyName: gender,
            Ranges      : [{
                $Type : 'UI.SelectionRangeType',
                Sign  : #I,
                Option: #EQ,
                Low   : 'Male'
            }]
        }],
        Text         : 'Male Population'
    },
    SelectionVariant #femalePopulation : {
        $Type        : 'UI.SelectionVariantType',
        SelectOptions: [{
            $Type       : 'UI.SelectOptionType',
            PropertyName: gender,
            Ranges      : [{
                $Type : 'UI.SelectionRangeType',
                Sign  : #I,
                Option: #EQ,
                Low   : 'Female'
            }]
        }],
        Text         : 'Female Population'
    },
    SelectionVariant #othersPopulation : {
        $Type        : 'UI.SelectionVariantType',
        SelectOptions: [{
            $Type       : 'UI.SelectOptionType',
            PropertyName: gender,
            Ranges      : [{
                $Type : 'UI.SelectionRangeType',
                Sign  : #I,
                Option: #EQ,
                Low   : 'Others'
            }]
        }],
        Text         : 'Others Population'
    },
});
