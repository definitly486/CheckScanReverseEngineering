package defpackage;

import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardOptionsPresenter;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.presenter.PointsProgramPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class h90 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ h90(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((BankCardOptionsPresenter.e) gh4Var).invoke(obj);
                break;
            default:
                ((PointsProgramPresenter.g) gh4Var).invoke(obj);
                break;
        }
    }
}
