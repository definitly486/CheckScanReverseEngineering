package defpackage;

import com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class p32 extends gh4 implements dm3<h57, String, String, j59> {
    public final /* synthetic */ CouponNewFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p32(CouponNewFragment couponNewFragment) {
        super(3);
        this.f = couponNewFragment;
    }

    @Override // defpackage.dm3
    public final j59 invoke(h57 h57Var, String str, String str2) {
        String str3 = str;
        String str4 = str2;
        h57Var.getClass();
        str3.getClass();
        str4.getClass();
        this.f.o().onGoToShopClick(sy8.Mobile, str3, str4);
        return j59.a;
    }
}
