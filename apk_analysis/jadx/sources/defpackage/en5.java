package defpackage;

import com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView$$State;
import com.warefly.checkscan.presentation.flows.offerLanding.view.OfferLandingFlowView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class en5 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ en5(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new OnlineShopsView$$State();
            default:
                return new OfferLandingFlowView$$State();
        }
    }
}
