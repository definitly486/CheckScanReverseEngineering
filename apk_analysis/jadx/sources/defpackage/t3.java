package defpackage;

import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class t3 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ t3(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((h4) gh4Var).invoke(obj);
                break;
            default:
                ((ChequePagePresenter.h) gh4Var).invoke(obj);
                break;
        }
    }
}
