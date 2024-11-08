const cov2ap = require("@sap/cds-odata-v2-adapter-proxy");

cds.on("bootstrap", (app) => {
    app.use(cov2ap());
});