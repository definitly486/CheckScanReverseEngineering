package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class qm1 implements NavArgs {
    public final String a;

    public qm1(String str) {
        this.a = str;
    }

    public static final qm1 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "host", qm1.class)) {
            fg.c("Required argument \"host\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString("host");
        if (string != null) {
            return new qm1(string);
        }
        fg.c("Argument \"host\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qm1) && this.a.equals(((qm1) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("CobrandFlowFragmentArgs(host=", this.a, ")");
    }
}
