package defpackage;

import com.warefly.checkscan.presentation.flows.favorite.presenter.FavoriteFlowView$$State;
import com.warefly.checkscan.presentation.flows.verification.view.VerificationFlowView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class q53 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ q53(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new FavoriteFlowView$$State();
            default:
                return new VerificationFlowView$$State();
        }
    }
}
