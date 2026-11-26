package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class u32 implements NavArgs {
    public final long a;

    public u32() {
        this(-1L);
    }

    public static final u32 fromBundle(Bundle bundle) {
        return new u32(c9.j(bundle, "couponId", u32.class) ? bundle.getLong("couponId") : -1L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u32) && this.a == ((u32) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "CouponNewFragmentArgs(couponId=", ")");
    }

    public u32(long j) {
        this.a = j;
    }
}
