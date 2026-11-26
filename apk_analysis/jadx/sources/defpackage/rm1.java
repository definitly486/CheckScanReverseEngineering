package defpackage;

import com.warefly.checkscan.presentation.flows.cobrand.view.CobrandView$$State;
import com.warefly.checkscan.presentation.profile.presenter.ProfileView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class rm1 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ rm1(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new CobrandView$$State();
            default:
                return new ProfileView$$State();
        }
    }
}
