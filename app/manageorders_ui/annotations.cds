using CatalogService as service from '../../srv/service-catalog';

annotate service.SalesOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerNo',
            Value : customerNo,
        },
    ]
);
annotate service.SalesOrders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerNo',
                Value : customerNo,
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
annotate service.SalesOrderItems with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Order Items',
            ID : 'OrderItems',
            Target : '@UI.FieldGroup#OrderItems',
        },
    ],
    UI.FieldGroup #OrderItems : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@UI.ConnectedFields#connected',
                Label : 'Item ',
            },],
    }
);
annotate service.SalesOrderItems with @(
    UI.ConnectedFields #connected : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{item} {material}',
        Data : {
            $Type : 'Core.Dictionary',
            item : {
                $Type : 'UI.DataField',
                Value : item,
            },
            material : {
                $Type : 'UI.DataField',
                Value : material,
            },
        },
    }
);
