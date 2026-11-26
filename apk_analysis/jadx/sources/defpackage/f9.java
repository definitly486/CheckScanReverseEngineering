package defpackage;

import com.warefly.checkscan.presentation.addScreenshots.presenter.AddScreenshotsPresenter;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.presenter.PointsProgramPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class f9 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ f9(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((AddScreenshotsPresenter.e) gh4Var).invoke(obj);
                break;
            default:
                ((PointsProgramPresenter.d) gh4Var).invoke(obj);
                break;
        }
    }
}
