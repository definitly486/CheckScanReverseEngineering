package defpackage;

import com.warefly.checkscan.presentation.bonuses.coupons.presenter.CouponsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class m42 extends qm3 implements bm3<Long, Boolean, j59> {
    @Override // defpackage.bm3
    public final j59 invoke(Long l, Boolean bool) {
        ((CouponsPresenter) this.receiver).setFavouriteCoupon(l.longValue(), bool.booleanValue());
        return j59.a;
    }
}
