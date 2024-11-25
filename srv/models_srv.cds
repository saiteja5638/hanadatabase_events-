using models from '../db/model';


service oModel {

    entity Orders         as projection on models.orders;
    entity OrderHistory   as projection on models.OrderHistory;
    entity LOCATION_LOG   as projection on models.LOCATION_LOG;
    entity LOCATION_STB   as projection on models.LOCATION_STB;
    // entity SALES_HIS2     as projection on models.SALES_HIS2;
    // entity SALES_HIS2_LOG as projection on models.SALES_HIS2_LOG;

    function Agree() returns String;
}
