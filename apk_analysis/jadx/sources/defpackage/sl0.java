package defpackage;

import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.presenter.RedirectDialogPresenter;
import com.warefly.checkscan.presentation.newBankCards.presenter.NewBankCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sl0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ sl0(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((vm0) gh4Var).invoke(obj);
                break;
            case 1:
                ((NewBankCardPresenter.a) gh4Var).invoke(obj);
                break;
            default:
                ((RedirectDialogPresenter.b) gh4Var).invoke(obj);
                break;
        }
    }
}
