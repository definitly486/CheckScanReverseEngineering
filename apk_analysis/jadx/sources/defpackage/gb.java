package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class gb implements NavArgs {
    public final int a;
    public final int b;

    public gb(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static final gb fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "linkCheckerId", gb.class)) {
            fg.c("Required argument \"linkCheckerId\" is missing and does not have an android:defaultValue");
            return null;
        }
        int i = bundle.getInt("linkCheckerId");
        if (bundle.containsKey("shopId")) {
            return new gb(i, bundle.getInt("shopId"));
        }
        fg.c("Required argument \"shopId\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gb)) {
            return false;
        }
        gb gbVar = (gb) obj;
        return this.a == gbVar.a && this.b == gbVar.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return ln.c(this.a, this.b, "AffiliationCheckFragmentArgs(linkCheckerId=", ", shopId=", ")");
    }
}
