package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class gg7 implements lk3 {
    public final long a;

    public gg7(long j) {
        this.a = j;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CouponNewFragment couponNewFragment = new CouponNewFragment();
        couponNewFragment.setArguments(new v61(this.a).getArguments());
        return couponNewFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return gg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof gg7) && this.a == ((gg7) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "CouponNew(couponId=", ")");
    }
}
