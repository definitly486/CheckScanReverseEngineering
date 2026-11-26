package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardPresenter;
import com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class vk1 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ vk1(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((ClarificationGeolocationPresenter.e) gh4Var).invoke(obj);
                break;
            case 1:
                ((rv2) gh4Var).invoke(obj);
                break;
            case 2:
                ((ov4) gh4Var).invoke(obj);
                break;
            case 3:
                ((np5) gh4Var).invoke(obj);
                break;
            default:
                ((TransferCardPresenter.b) gh4Var).invoke(obj);
                break;
        }
    }
}
