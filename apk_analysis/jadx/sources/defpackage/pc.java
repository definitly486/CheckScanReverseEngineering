package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class pc implements NavArgs {
    public final int a;

    public pc(int i) {
        this.a = i;
    }

    public static final pc fromBundle(Bundle bundle) {
        if (c9.j(bundle, "filterId", pc.class)) {
            return new pc(bundle.getInt("filterId"));
        }
        fg.c("Required argument \"filterId\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pc) && this.a == ((pc) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "AllOperationsFragmentArgs(filterId=", ")");
    }
}
