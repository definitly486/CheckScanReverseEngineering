package defpackage;

import com.warefly.checkscan.presentation.bonuses.couponPage.presenter.CouponNewPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class pp implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ pp(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((p4) gh4Var).invoke(obj);
                break;
            default:
                ((CouponNewPresenter.d) gh4Var).invoke(obj);
                break;
        }
    }
}
