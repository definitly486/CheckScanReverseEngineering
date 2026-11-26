package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class ui4 implements NavArgs {
    public final int a;

    public ui4(int i) {
        this.a = i;
    }

    public static final ui4 fromBundle(Bundle bundle) {
        if (c9.j(bundle, "promotionId", ui4.class)) {
            return new ui4(bundle.getInt("promotionId"));
        }
        fg.c("Required argument \"promotionId\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ui4) && this.a == ((ui4) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "LandingFragmentArgs(promotionId=", ")");
    }
}
