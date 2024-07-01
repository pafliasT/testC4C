namespace ferreroMasterData;

using {
    cuid,
    managed
} from '@sap/cds/common';

@cds.autoexpose
// Table STATUS
entity Status : cuid, managed {
    description : String;
}

@cds.autoexpose
// Table PLACEMENT
entity Placement : cuid, managed {
    description : String;
}

@cds.autoexpose
// Table BANNER
entity Banner : cuid, managed {
    name : String;
}


@cds.autoexpose
// Table PROMOTIONS
entity Promotions : cuid, managed {
    promotionID    : String  @title: 'Promotion ID'  @description: 'ID sent by external system';
    theme          : String;
    promoMechanics : String;
}

@cds.autoexpose
// Table PRODUCTS
entity Products : cuid, managed {
    productID : String  @title: 'Product ID'  @description: 'ID sent by C4C';
    name      : String;
    pcb       : Integer; // pieces of product per box
    cuWeight  : Integer; // weight of every single piece; needed to compute QUINTAL
    pmc       : Decimal(10, 2); // season; Recommended price of the product
}

@cds.autoexpose
// Table POS_POTENTIAL
entity PosPotential : cuid, managed {
    posPotential : Integer;
    timestamp    : Timestamp;
    current      : Boolean; // flag that is 1 if current pos_potential, 0 if old
    pos          : Association to POS;
}


@cds.autoexpose
// Table POS
entity POS : cuid, managed {
    name    : String;
    address : String;
    banner  : Association to Banner;
}


@cds.autoexpose
// Table TERRITORY_MANAGEMENT
entity TerritoryManagement : cuid, managed {
    area      : Integer;
    user      : String;
    timestamp : Timestamp;
    valid     : Boolean; // flag that is 1 if user still associated to POS, 0 otherwise
    pos       : Association to POS;
}
