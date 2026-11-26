package defpackage;

import com.google.firebase.inappmessaging.internal.RateLimiterClient;
import com.warefly.checkscan.presentation.bonuses.coupons.presenter.CouponsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class hv implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hv(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((nv) obj2).invoke(obj);
                break;
            case 1:
                ((CouponsPresenter.a) obj2).invoke(obj);
                break;
            default:
                ((RateLimiterClient) obj2).lambda$getRateLimits$7((Throwable) obj);
                break;
        }
    }
}
