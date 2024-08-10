using employeeService as service from '../../srv/service';
annotate service.employee with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'age',
                Value : age,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'hiringDate',
                Value : hiringDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salary_Value',
                Value : salary_Value,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'lastName',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'age',
            Value : age,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phone',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'hiringDate',
            Value : hiringDate,
        },
    ],
);

annotate service.employee with {
    salary @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'salary',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : salary_Value,
                ValueListProperty : 'Value',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'unit',
            },
        ],
    }
};

