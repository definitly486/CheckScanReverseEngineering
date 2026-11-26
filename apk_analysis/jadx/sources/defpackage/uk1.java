package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardPresenter;
import com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class uk1 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ uk1(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((ClarificationGeolocationPresenter.d) gh4Var).invoke(obj);
                break;
            case 1:
                ((bn) gh4Var).invoke(obj);
                break;
            default:
                ((TransferCardPresenter.a) gh4Var).invoke(obj);
                break;
        }
    }
}
