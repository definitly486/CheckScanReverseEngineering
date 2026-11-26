package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class z31 implements NavArgs {
    public final boolean a;

    public z31(boolean z) {
        this.a = z;
    }

    public static final z31 fromBundle(Bundle bundle) {
        if (c9.j(bundle, "fromDeeplink", z31.class)) {
            return new z31(bundle.getBoolean("fromDeeplink"));
        }
        fg.c("Required argument \"fromDeeplink\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof z31) && this.a == ((z31) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("CardOfferLandingFragmentArgs(fromDeeplink=", ")", this.a);
    }
}
