using ferrero from '../db/data-model';

service MyService {

    entity ToPromotionsToPos       as projection on ferrero.ToPromotionsToPos;
    entity ToProductsToPosToPromos as projection on ferrero.ToProductsToPosToPromos;

}
