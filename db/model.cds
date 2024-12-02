context models {
    entity orders {
        key ID            : UUID;
            Order_Name    : String(25);
            Order_Desc    : String(30);
            Order_Type    : String(4);
            Order_Created : Date;

    }

    entity OrderHistory {
        key historyID       : UUID;
        key ID              : UUID;
            Order_Name      : String(25);
            actionType      : String;
            actionTimestamp : String;
            details         : String;
    }

    entity LOCATION_STB {
        key LOCATION_ID    : String(4)  @title: 'Location ';
            LOCATION_DESC  : String(30) @title: 'Location Description';
            LOCATION_TYPE  : String(1)  @title: 'Location Type';
            LATITUDE       : String(20) @title: 'Latitude';
            LONGITUTE      : String(20) @title: 'Longitude';
            RESERVE_FIELD1 : String(20) @title: 'Reserve Field1';
            RESERVE_FIELD2 : String(20) @title: 'Reserve Field2';
            RESERVE_FIELD3 : String(20) @title: 'Reserve Field3';
            RESERVE_FIELD4 : String(20) @title: 'Reserve Field4';
            RESERVE_FIELD5 : String(20) @title: 'Reserve Field5';
            AUTH_GROUP     : String     @title: 'Authorization Group';
            CHANGED_DATE   : Date;
            CHANGED_TIME   : Time;
            CHANGED_BY     : String(12);
            CREATED_DATE   : Date;
            CREATED_TIME   : Time;
            CREATED_BY     : String(12);
    }

    entity LOCATION_LOG {
            LOCATION_ID     : String(4) @title: 'Location ';
            actionType      : String;
        key actionTimestamp : String;
            details         : String;
    }

    entity SALES_HIS2 {
        key SALES_DOCUMENT       : String(10);
        key SALES_DOCUMENT_ITEM  : Integer;
        key CHARACTERSTIC        : String(30);
            CHARACTERSTIC_VALUE  : String(70);
            PRODUCT_ID           : String(40);
            PROD_AVAILABILITY_DT : Date;
            CLASS                : String(18);
            CLASS_NUM            : Integer;
            CHARACTERSTIC_NUM    : Integer;
            VALUE_NUM            : String(30);
            CHANGED_DATE         : Date;
            CHANGED_TIME         : Time;
            CHANGED_BY           : String(12);
            CREATED_DATE         : Date;
            CREATED_TIME         : Time;
            CREATED_BY           : String(12);
    }

    entity SALES_HIS2_LOG {
            SALES_DOCUMENT      : String(10);
            SALES_DOCUMENT_ITEM : Integer;
            CHARACTERSTIC       : String(30);
            actionType          : String;
        key actionTimestamp     : String;
            details             : String;
    }

    entity A {
        key ID   : Integer;
            NAME : String(100);
            AGE  : Integer;
    }

    entity B {
        key LogID  : Integer;
            Time   : Timestamp;
            Detail : String(100);
    }

    entity nodes1 {
        key Vertex_ID : String(75);
            name      : String(32);
            field1    : String(32);
            field2    : String(32);
            field3    : String(32);
    }


    entity edges {
        key edge_id    : Integer;
            length     : Integer;
            difficulty : String(16);
            start      : Association to one nodes1 not null;
            end        : Association to one nodes1 not null;
            mode       : String(8);
            status     : String(16);

    }

    entity GS_DEPTH_FIRST_SEARCH_LOG {
        key LOGON       : String;
            Vertex_ID   : String(75);
            VISIT_ORDER : Integer64;
            EXIT_ORDER  : Integer64;
            LEVEL       : Integer64;
    }


}
