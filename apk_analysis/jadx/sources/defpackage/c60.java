package defpackage;

import com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView$$State;
import com.warefly.checkscan.presentation.balance.main.view.BalanceView$$State;
import com.warefly.checkscan.presentation.flows.promotions.view.PromotionFlowView$$State;
import com.warefly.checkscan.presentation.geolocation.presenter.SuccessGeolocationView$$State;
import com.warefly.checkscan.presentation.notifications.presenter.NotificationsView$$State;
import com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class c60 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ c60(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BalanceView$$State();
            case 1:
                return new CardOfferLandingView$$State();
            case 2:
                return new NotificationsView$$State();
            case 3:
                return new PromotionFlowView$$State();
            case 4:
                return new SessionExpiredView$$State();
            default:
                return new SuccessGeolocationView$$State();
        }
    }
}
