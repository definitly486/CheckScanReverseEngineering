package defpackage;

import com.warefly.checkscan.presentation.CiceroneActivity;
import com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentPresenter;
import com.warefly.checkscan.presentation.upridWeb.presenter.UpridWebPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class nj1 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ nj1(gh4 gh4Var, int i) {
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
                ((rj1) gh4Var).invoke(obj);
                break;
            case 1:
                ((UpridWebPresenter.a) gh4Var).invoke(obj);
                break;
            default:
                ((WebViewFragmentPresenter.d) gh4Var).invoke(obj);
                break;
        }
    }
}
