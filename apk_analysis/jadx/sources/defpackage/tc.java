package defpackage;

import com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackView$$State;
import com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class tc extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ tc(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new AllSpecialsView$$State();
            default:
                return new HowGetMoreCashbackView$$State();
        }
    }
}
