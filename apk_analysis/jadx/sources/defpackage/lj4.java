package defpackage;

import com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView$$State;
import com.warefly.checkscan.subscriptionLanding.presentation.landing.view.LandingView$$State;
import com.warefly.checkscan.support.presentation.form.view.SupportFormView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class lj4 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ lj4(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new LandingView$$State();
            case 1:
                return new SupportFormView$$State();
            default:
                return new TransferPointsView$$State();
        }
    }
}
