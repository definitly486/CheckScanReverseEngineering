package defpackage;

import com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ql0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ ql0(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((hn0) gh4Var).invoke(obj);
                break;
            default:
                ChequesPresenter.ignoreBanner$lambda$20((ChequesPresenter.i) gh4Var, obj);
                break;
        }
    }
}
