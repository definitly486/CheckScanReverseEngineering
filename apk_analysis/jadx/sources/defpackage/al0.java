package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhonePresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.j;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class al0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ al0(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((j) gh4Var).invoke(obj);
                break;
            default:
                ((TransferPhonePresenter.e) gh4Var).invoke(obj);
                break;
        }
    }
}
