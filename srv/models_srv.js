var cds  = require('@sap/cds')

module.exports =  async srv =>{
    srv.after('CREATE', 'Orders', async (data, req) => {
        await srv.emit('OrderCreated', { ID: data.ID, Order_Name: data.Order_Name });
    });
    srv.on('OrderCreated', async (msg) => {
        const { ID, Order_Name } = msg.data;
       
        var Dat = new Date() + ""
        await cds.run(INSERT.into('MODELS_ORDERHISTORY').entries({
            historyID: cds.utils.uuid(), // Generate a unique history ID
            ID: ID,
            Order_Name: Order_Name,
            actionType: 'CREATED',
            actionTimestamp: Dat,
            details: `Order ${Order_Name} created with ID ${ID}`
        }));

        console.log(`OrderCreated event logged in OrderHistory for Order ID: ${ID}`);
    });
} 