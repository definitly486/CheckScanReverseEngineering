package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class l61 implements NavArgs {
    public final long a;

    public l61() {
        this(-1L);
    }

    public static final l61 fromBundle(Bundle bundle) {
        return new l61(c9.j(bundle, "cardId", l61.class) ? bundle.getLong("cardId") : -1L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l61) && this.a == ((l61) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "CatalogCardOperationsFragmentArgs(cardId=", ")");
    }

    public l61(long j) {
        this.a = j;
    }
}
