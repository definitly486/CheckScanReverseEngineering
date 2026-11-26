package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class lg1 implements h6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ lg1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.h6
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((yg1) obj).f.d.onNext(j59.a);
                break;
            default:
                TransferCouponPresenter.loadInfo$lambda$0((TransferCouponPresenter) obj);
                break;
        }
    }
}
