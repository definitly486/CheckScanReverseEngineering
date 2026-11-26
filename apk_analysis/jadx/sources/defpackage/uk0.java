package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class uk0 implements NavArgs {
    public final long a;

    public uk0(long j) {
        this.a = j;
    }

    public static final uk0 fromBundle(Bundle bundle) {
        if (c9.j(bundle, "admitadId", uk0.class)) {
            return new uk0(bundle.getLong("admitadId"));
        }
        fg.c("Required argument \"admitadId\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof uk0) && this.a == ((uk0) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "BonusAdmitadNewFragmentArgs(admitadId=", ")");
    }
}
