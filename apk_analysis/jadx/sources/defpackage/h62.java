package defpackage;

import com.warefly.checkscan.presentation.bonuses.bonusProgram.presenter.PointsProgramPresenter;
import com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class h62 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ h62(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                CreateCardPresenter.onIssueClick$lambda$1((CreateCardPresenter.i) gh4Var, obj);
                break;
            default:
                ((PointsProgramPresenter.c) gh4Var).invoke(obj);
                break;
        }
    }
}
