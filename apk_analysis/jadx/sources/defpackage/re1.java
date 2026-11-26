package defpackage;

import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;
import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;
import com.warefly.checkscan.presentation.mailChange.presenter.MailChangePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class re1 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ re1(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((ChequePagePresenter.i) gh4Var).invoke(obj);
                break;
            case 1:
                ((MailChangePresenter.a) gh4Var).invoke(obj);
                break;
            default:
                ((NewOnlineShopPresenter.f) gh4Var).invoke(obj);
                break;
        }
    }
}
