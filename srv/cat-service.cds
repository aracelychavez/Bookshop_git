using my.bookshop as my from '../db/data-model';

service CatalogService {
  entity Books as projection on my.Books;
  entity Authors as projection on my.Authors;
  entity Orders as projection on my.Orders;
}

annotate CatalogService.Books with @(
    UI : { 
        SelectionFields  : [
            title
        ],
        LineItem  : [
            { Value : ID },
            { Value : title }, 
            { Value : stock }                                   
        ],
     }
){
    ID @( title: 'ID' );    
    title @( title: 'Title' );
    stock @( title: 'Stock' );
};