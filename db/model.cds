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
}
