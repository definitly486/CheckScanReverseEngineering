package defpackage;

import com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sk1 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ sk1(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                ((ClarificationGeolocationPresenter.h) nl3Var).invoke(obj);
                break;
            default:
                nl3Var.invoke(obj);
                break;
        }
    }
}
