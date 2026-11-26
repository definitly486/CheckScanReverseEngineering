package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class d9 implements NavArgs {
    public final long a;

    public d9() {
        this(-1L);
    }

    public static final d9 fromBundle(Bundle bundle) {
        return new d9(c9.j(bundle, "purchase_id", d9.class) ? bundle.getLong("purchase_id") : -1L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d9) && this.a == ((d9) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "AddScreenshotsFragmentArgs(purchaseId=", ")");
    }

    public d9(long j) {
        this.a = j;
    }
}
