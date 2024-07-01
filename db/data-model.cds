using {
    cuid,
    managed
} from '@sap/cds/common';

using ferreroMasterData from './master-data';


// Table TO_PROMOTIONS_TO_POS

context ferrero {
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
        pos                    : Association to ferreroMasterData.POS;
        status                 : Association to ferreroMasterData.Status;
        placement              : Association to ferreroMasterData.Placement;
        originalPromo          : Association to ferreroMasterData.Promotions;
        groupedPromo           : Association to ferreroMasterData.Promotions; // filled if promotion has been grouped
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
        product           : Association to ferreroMasterData.Products;
    }

}
@cds.persistence.exists 
@cds.persistence.calcview 
Entity V_PROMOTIONS_TO_POS {
key     ID: String(36)  @title: 'ID: ID' ; 
        CREATEDAT: Timestamp  @title: 'CREATEDAT: CREATEDAT' ; 
        CREATEDBY: String(255)  @title: 'CREATEDBY: CREATEDBY' ; 
        MODIFIEDAT: Timestamp  @title: 'MODIFIEDAT: MODIFIEDAT' ; 
        MODIFIEDBY: String(255)  @title: 'MODIFIEDBY: MODIFIEDBY' ; 
        TF: String(5000)  @title: 'TF: TF' ; 
        MANDATORY: Integer  @title: 'MANDATORY: MANDATORY' ; 
        DEBUT: Timestamp  @title: 'DEBUT: DEBUT' ; 
        FININCITATION: Timestamp  @title: 'FININCITATION: FININCITATION' ; 
        DEBUT2: Timestamp  @title: 'DEBUT2: DEBUT2' ; 
        FINREALISATION: Timestamp  @title: 'FINREALISATION: FINREALISATION' ; 
        DEBUT3: Timestamp  @title: 'DEBUT3: DEBUT3' ; 
        FINIMPLEMENTATION: Timestamp  @title: 'FINIMPLEMENTATION: FINIMPLEMENTATION' ; 
        TIMESTAMP: Timestamp  @title: 'TIMESTAMP: TIMESTAMP' ; 
        NOMBREQUARTSDEPALETTES: Integer  @title: 'NOMBREQUARTSDEPALETTES: NOMBREQUARTSDEPALETTES' ; 
        NOMBREDEPLV: Integer  @title: 'NOMBREDEPLV: NOMBREDEPLV' ; 
        SALESORG: String(5000)  @title: 'SALESORG: SALESORG' ; 
        SEASON: String(5000)  @title: 'SEASON: SEASON' ; 
        SEMAINDEBUT: Integer  @title: 'SEMAINDEBUT: SEMAINDEBUT' ; 
        SEMAINFIN: Integer  @title: 'SEMAINFIN: SEMAINFIN' ; 
        SEASONALORPERMANENT: Boolean  @title: 'SEASONALORPERMANENT: SEASONALORPERMANENT' ; 
        POS_ID: String(36)  @title: 'POS_ID: POS_ID' ; 
        STATUS_ID: String(36)  @title: 'STATUS_ID: STATUS_ID' ; 
        PLACEMENT_ID: String(36)  @title: 'PLACEMENT_ID: PLACEMENT_ID' ; 
        ORIGINALPROMO_ID: String(36)  @title: 'ORIGINALPROMO_ID: ORIGINALPROMO_ID' ; 
        GROUPEDPROMO_ID: String(36)  @title: 'GROUPEDPROMO_ID: GROUPEDPROMO_ID' ; 
        FATHERPROMO_ID: String(36)  @title: 'FATHERPROMO_ID: FATHERPROMO_ID' ; 
        ID_1: String(36)  @title: 'ID_1: ID_1' ; 
        CREATEDAT_1: Timestamp  @title: 'CREATEDAT_1: CREATEDAT_1' ; 
        CREATEDBY_1: String(255)  @title: 'CREATEDBY_1: CREATEDBY_1' ; 
        MODIFIEDAT_1: Timestamp  @title: 'MODIFIEDAT_1: MODIFIEDAT_1' ; 
        MODIFIEDBY_1: String(255)  @title: 'MODIFIEDBY_1: MODIFIEDBY_1' ; 
        NAME: String(5000)  @title: 'NAME: NAME' ; 
        ADDRESS: String(5000)  @title: 'ADDRESS: ADDRESS' ; 
        BANNER_ID: String(36)  @title: 'BANNER_ID: BANNER_ID' ; 
        ID_2: String(36)  @title: 'ID_2: ID_2' ; 
        CREATEDAT_2: Timestamp  @title: 'CREATEDAT_2: CREATEDAT_2' ; 
        CREATEDBY_2: String(255)  @title: 'CREATEDBY_2: CREATEDBY_2' ; 
        MODIFIEDAT_2: Timestamp  @title: 'MODIFIEDAT_2: MODIFIEDAT_2' ; 
        MODIFIEDBY_2: String(255)  @title: 'MODIFIEDBY_2: MODIFIEDBY_2' ; 
        QTERECO: Integer  @title: 'QTERECO: QTERECO' ; 
        QTERECOQUINT: Integer  @title: 'QTERECOQUINT: QTERECOQUINT' ; 
        QTEUEVEND: Integer  @title: 'QTEUEVEND: QTEUEVEND' ; 
        QTEUEVENDQUINT: Integer  @title: 'QTEUEVENDQUINT: QTEUEVENDQUINT' ; 
        TIMESTAMP_1: Timestamp  @title: 'TIMESTAMP_1: TIMESTAMP_1' ; 
        SALESORG_1: String(5000)  @title: 'SALESORG_1: SALESORG_1' ; 
        PRO1: Boolean  @title: 'PRO1: PRO1' ; 
        PRO: Boolean  @title: 'PRO: PRO' ; 
        CDEA1: Integer  @title: 'CDEA1: CDEA1' ; 
        RETA1: Integer  @title: 'RETA1: RETA1' ; 
        UVCA1: Integer  @title: 'UVCA1: UVCA1' ; 
        UEA1: Integer  @title: 'UEA1: UEA1' ; 
        CDEUE1: Integer  @title: 'CDEUE1: CDEUE1' ; 
        CDEUE2: Integer  @title: 'CDEUE2: CDEUE2' ; 
        CDEUE3: Integer  @title: 'CDEUE3: CDEUE3' ; 
        CDEUVC: Integer  @title: 'CDEUVC: CDEUVC' ; 
        CAA: Integer  @title: 'CAA: CAA' ; 
        EVOLCAAPERC: Integer  @title: 'EVOLCAAPERC: EVOLCAAPERC' ; 
        EVOLPDSPERC: Integer  @title: 'EVOLPDSPERC: EVOLPDSPERC' ; 
        POIDSKG: Integer  @title: 'POIDSKG: POIDSKG' ; 
        PDSPERC: Integer  @title: 'PDSPERC: PDSPERC' ; 
        TOPROMOTIONSTOPOS_ID: String(36)  @title: 'TOPROMOTIONSTOPOS_ID: TOPROMOTIONSTOPOS_ID' ; 
        PRODUCT_ID: String(36)  @title: 'PRODUCT_ID: PRODUCT_ID' ; 
}