package defpackage;

import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardOptionsPresenter;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsPresenter;
import com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class g90 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ g90(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((BankCardOptionsPresenter.d) gh4Var).invoke(obj);
                break;
            case 1:
                ((CreateCardPresenter.l) gh4Var).invoke(obj);
                break;
            default:
                ((TransferPointsPresenter.b) gh4Var).invoke(obj);
                break;
        }
    }
}
