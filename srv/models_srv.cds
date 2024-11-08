using models from '../db/model';


service oModel {

    entity Orders as projection on models.orders;
    entity OrderHistory as projection on models.OrderHistory;

}