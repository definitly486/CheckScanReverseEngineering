package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class zt5 implements NavArgs {
    public final String a;

    public zt5(String str) {
        this.a = str;
    }

    public static final zt5 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "partnerId", zt5.class)) {
            fg.c("Required argument \"partnerId\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString("partnerId");
        if (string != null) {
            return new zt5(string);
        }
        fg.c("Argument \"partnerId\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zt5) && this.a.equals(((zt5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("OfferLandingFragmentArgs(partnerId=", this.a, ")");
    }
}
