package defpackage;

import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class tj4 implements pz3 {
    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof tj4);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Integer.valueOf(R.drawable.pro_plus_banner + R.drawable.pro_banner);
    }

    public final int hashCode() {
        return Integer.hashCode(R.drawable.pro_plus_banner) + (Integer.hashCode(R.drawable.pro_banner) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(R.drawable.pro_banner);
    }

    public final String toString() {
        return ln.c(R.drawable.pro_banner, R.drawable.pro_plus_banner, "LandingSubscriptionCardViewModel(imgResPro=", ", imgResPlus=", ")");
    }
}
