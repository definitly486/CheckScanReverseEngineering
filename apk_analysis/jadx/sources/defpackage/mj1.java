package defpackage;

import com.warefly.checkscan.presentation.CiceroneActivity;
import com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class mj1 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ mj1(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                int i2 = CiceroneActivity.s;
                ((qj1) gh4Var).invoke(obj);
                break;
            default:
                ((WebViewFragmentPresenter.c) gh4Var).invoke(obj);
                break;
        }
    }
}
