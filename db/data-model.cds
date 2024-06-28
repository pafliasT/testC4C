namespace ferrero;

using {
    cuid,
    managed
} from '@sap/cds/common';

using ferrero from './master-data';


// Table TO_PROMOTIONS_TO_POS
entity ToPromotionsToPos : cuid, managed {
    tf                     : String;
    mandatory              : Integer;
    debut                  : Timestamp;
    finIncitation          : Timestamp;
    debut2                 : Timestamp;
    finRealisation         : Timestamp;
    debut3                 : Timestamp; //season
    finImplementation      : Timestamp; //season
    timestamp              : Timestamp;
    nombreQuartsDePalettes : Integer;
    nombreDePlv            : Integer;
    salesOrg               : String; // country
    season                 : String; //season
    semainDebut            : Integer; //season
    semainFin              : Integer; //season
    seasonalOrPermanent    : Boolean; // indicates if promotion is seasonal or not
    pos                    : Association to ferrero.POS;
    status                 : Association to ferrero.Status;
    placement              : Association to ferrero.Placement;
    originalPromo          : Association to ferrero.Promotions;
    groupedPromo           : Association to ferrero.Promotions; // filled if promotion has been grouped
    fatherPromo            : Association to ToPromotionsToPos; // season; empty if no father associated
}


// Table TO_PRODUCTS_TO_POS_TO_PROMOS
entity ToProductsToPosToPromos : cuid, managed {
    qteReco           : Integer;
    qteRecoQuint      : Integer;
    qteUeVend         : Integer;
    qteUeVendQuint    : Integer;
    timestamp         : Timestamp;
    salesOrg          : String; // country
    pro1              : Boolean; // season
    pro               : Boolean; // season
    cdeA1             : Integer; // season
    retA1             : Integer; // season
    uvcA1             : Integer; // season
    ueA1              : Integer; // season
    cdeUe1            : Integer; // season
    cdeUe2            : Integer; // season
    cdeUe3            : Integer; // season
    cdeUvc            : Integer; // season
    caa               : Integer; // season
    evolCaaPerc       : Integer; // season
    evolPdsPerc       : Integer; // season
    poidsKg           : Integer; // season
    pdsPerc           : Integer; // season
    toPromotionsToPos : Association to ToPromotionsToPos;
    product           : Association to ferrero.Products;
}
