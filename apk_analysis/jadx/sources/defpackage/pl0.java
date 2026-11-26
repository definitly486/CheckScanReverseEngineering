package defpackage;

import com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class pl0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ pl0(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((gn0) gh4Var).invoke(obj);
                break;
            default:
                ((ChequesPresenter.h) gh4Var).invoke(obj);
                break;
        }
    }
}
