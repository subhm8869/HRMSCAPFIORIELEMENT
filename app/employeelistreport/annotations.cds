using HRMSService as service from '../../srv/hrmsSystem';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Value : dateOfBirth,
        },
        {
            $Type : 'UI.DataField',
            Value : gender,
        },
        {
            $Type : 'UI.DataField',
            Value : contactNumber,
        },
    ]
);
annotate service.Employee with {
    department @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Department',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : department_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'department',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
        ],
    }
};
annotate service.Employee with {
    position @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Position',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : position_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'level',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'positionName',
            },
        ],
    }
};
annotate service.Employee with {
    resignDetails @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Resignation',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : resignDetails_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'resignDate',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'noticePeriod',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastWorkingDate',
            },
        ],
    }
};
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Value : dateOfBirth,
            },
            {
                $Type : 'UI.DataField',
                Value : gender,
            },
            {
                $Type : 'UI.DataField',
                Value : contactNumber,
            },
            {
                $Type : 'UI.DataField',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Value : UAN,
            },
            {
                $Type : 'UI.DataField',
                Value : AAdhar,
            },
            {
                $Type : 'UI.DataField',
                Value : PAN,
            },
            {
                $Type : 'UI.DataField',
                Value : emergencyContact,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
