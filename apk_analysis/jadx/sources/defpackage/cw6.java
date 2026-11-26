package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class cw6 implements NavArgs {
    public final String a;

    public cw6(String str) {
        this.a = str;
    }

    public static final cw6 fromBundle(Bundle bundle) {
        if (c9.j(bundle, "qrCode", cw6.class)) {
            return new cw6(bundle.getString("qrCode"));
        }
        fg.c("Required argument \"qrCode\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof cw6) && aa4.e(this.a, ((cw6) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("QueueFragmentArgs(qrCode=", this.a, ")");
    }
}
