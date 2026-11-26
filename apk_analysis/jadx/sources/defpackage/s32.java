package defpackage;

import com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class s32 extends gh4 implements ll3<j59> {
    public final /* synthetic */ CouponNewFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s32(CouponNewFragment couponNewFragment) {
        super(0);
        this.f = couponNewFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().loadNextHots();
        return j59.a;
    }
}
