package defpackage;

import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.b;
import com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.presenter.AddChequePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class q8 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ q8(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((AddChequePresenter.b) gh4Var).invoke(obj);
                break;
            default:
                ((b) gh4Var).invoke(obj);
                break;
        }
    }
}
