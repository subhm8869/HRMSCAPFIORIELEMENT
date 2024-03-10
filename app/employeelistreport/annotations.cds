using HRMSService as service from '../../srv/hrmsSystem';

annotate service.Employee with @(UI: {
    SelectionFields            : [
        email,
        firstName,
        lastName,
        department_ID
    ],

    LineItem                   : [
        {
            $Type: 'UI.DataField',
            Value: firstName,
        },
        {
            $Type: 'UI.DataField',
            Value: lastName,
        },
        {
            $Type: 'UI.DataField',
            Value: dateOfBirth,
        },
        {
            $Type: 'UI.DataField',
            Value: gender,
        },
        {
            $Type: 'UI.DataField',
            Value: contactNumber,
        },
        {
            $Type: 'UI.DataField',
            Value: emergencyContact,
        },
        {
            $Type: 'UI.DataField',
            Value: department.department,
        }
    ],
    FieldGroup #departmentGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: department_ID
            },
            {
                $Type: 'UI.DataField',
                Value: department.department
            },
            {
                $Type: 'UI.DataField',
                Value: department.description
            }

        ]
    },
    FieldGroup #position       : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: position_ID
            },
            {
                $Type: 'UI.DataField',
                Value: position.level
            },
            {
                $Type: 'UI.DataField',
                Value: position.positionName
            }
        ]
    },
    HeaderInfo                 : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Employee',
        TypeNamePlural: 'Employees',
        Title         : {Value: {$edmJson: {
            $Apply   : [
                {$Path: 'firstName'},
                ' ',
                {$Path: 'lastName'}
            ],
            $Function: 'odata.concat',
        }, }, },
    },
});

annotate service.Employee with {
    department @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Department',
        parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: department_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'department',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description',
            },
        ],
    }
};

annotate service.Employee with {
    position @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Position',
        parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: position_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'level',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'positionName',
            },
        ],
    }
};

annotate service.Employee with {
    resignDetails @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Resignation',
        parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: resignDetails_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'resignDate',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'noticePeriod',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'lastWorkingDate',
            },
        ],
    }
};

annotate service.Address with @(UI: {LineItem #addressLineItem: [
    {
        $Type: 'UI.DataField',
        Value: Street
    },
    {
        $Type: 'UI.DataField',
        Value: City
    },
    {
        $Type: 'UI.DataField',
        Value: Address
    },
    {
        $Type: 'UI.DataField',
        Value: Pincode
    }

], });

annotate service.Bankdetails with @(UI: {LineItem #bankLineItem: [
    {
        $Type: 'UI.DataField',
        Value: AccountNumber
    },
    {
        $Type: 'UI.DataField',
        Value: BankName
    },
    {
        $Type: 'UI.DataField',
        Value: BranchName
    },
    {
        $Type: 'UI.DataField',
        Value: IIFSCCode
    }

], });


annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Value: dateOfBirth,
            },
            {
                $Type: 'UI.DataField',
                Value: gender,
            },
            {
                $Type: 'UI.DataField',
                Value: contactNumber,
            },
            {
                $Type: 'UI.DataField',
                Value: email,
            },
            {
                $Type: 'UI.DataField',
                Value: UAN,
            },
            {
                $Type: 'UI.DataField',
                Value: AAdhar,
            },
            {
                $Type: 'UI.DataField',
                Value: PAN,
            },
            {
                $Type: 'UI.DataField',
                Value: emergencyContact,
            },
        ],
    },
    UI.Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{@i18n>Address}',
            ID    : 'AddressLineItem',
            Target: 'address/@UI.LineItem#addressLineItem'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'DepartmentField',
            Label : '{@i18n>DepartmentSection}',
            Target: '@UI.FieldGroup#departmentGroup'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'Position',
            Label : '{@i18n>Position}',
            Target: '@UI.FieldGroup#position'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{@i18n>BankDetails}',
            ID    : 'BankDetailsFacet',
            Target: 'bankDetail/@UI.LineItem#bankLineItem'
        }
    ]
);
