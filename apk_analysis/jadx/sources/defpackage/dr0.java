package defpackage;

import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView$$State;
import com.warefly.checkscan.presentation.chequePage.share.cheque.presenter.ShareChequeView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class dr0 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ dr0(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BonusesMainNewView$$State();
            default:
                return new ShareChequeView$$State();
        }
    }
}
