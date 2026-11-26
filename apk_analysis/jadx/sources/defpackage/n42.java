package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class n42 implements NavArgs {
    public final long a;

    public n42(long j) {
        this.a = j;
    }

    public static final n42 fromBundle(Bundle bundle) {
        if (c9.j(bundle, "admitadId", n42.class)) {
            return new n42(bundle.getLong("admitadId"));
        }
        fg.c("Required argument \"admitadId\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n42) && this.a == ((n42) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "CouponsFragmentArgs(admitadId=", ")");
    }
}
