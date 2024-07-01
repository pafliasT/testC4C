using {
    ferreroMasterData,
    ferrero
} from '../db/data-model';


@path: 'promotions' //odata/v4/promotions

service promotions {

    entity ToPromotionsToPos       as projection on ferrero.ToPromotionsToPos;
    entity ToProductsToPosToPromos as projection on ferrero.ToProductsToPosToPromos;
    // entity V_PROMOTIONS_TO_POS     as projection on ferrero.V_PROMOTIONS_TO_POS;
    entity Status                  as projection on ferreroMasterData.Status;
    entity Placement               as projection on ferreroMasterData.Placement;
    entity Banner                  as projection on ferreroMasterData.Banner;
    entity Promotions              as projection on ferreroMasterData.Promotions;
    entity Products                as projection on ferreroMasterData.Products;
    entity PosPotential            as projection on ferreroMasterData.PosPotential;
    entity POS                     as projection on ferreroMasterData.POS;
    entity TerritoryManagement     as projection on ferreroMasterData.TerritoryManagement;

}
