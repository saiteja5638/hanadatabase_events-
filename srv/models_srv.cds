using models from '../db/model';


service oModel {

    entity Orders       as projection on models.orders;
    entity OrderHistory as projection on models.OrderHistory;
    entity LOCATION_LOG as projection on models.LOCATION_LOG;
    entity LOCATION_STB as projection on models.LOCATION_STB;

}