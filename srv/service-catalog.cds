using my.salesorder as my from '../db/data-model.cds';

service CatalogService @(path:'/catalog') 
{
    entity SalesOrders     as projection on my.SalesOrders;
    entity SalesOrderItems as projection on my.SalesOrderItems;
    entity Customers as projection on my.Customers;
    entity Addresses as projection on my.Addresses; 
}

