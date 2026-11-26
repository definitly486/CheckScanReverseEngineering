package defpackage;

import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class fm6 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ fm6(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((ProfilePresenter.b) gh4Var).invoke(obj);
                break;
            default:
                ((ls7) gh4Var).invoke(obj);
                break;
        }
    }
}
