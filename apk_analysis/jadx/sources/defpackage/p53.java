package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class p53 implements NavArgs {
    public final boolean a;

    public p53(boolean z) {
        this.a = z;
    }

    public static final p53 fromBundle(Bundle bundle) {
        return new p53(c9.j(bundle, "isFavorite", p53.class) ? bundle.getBoolean("isFavorite") : true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p53) && this.a == ((p53) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("FavoriteFlowFragmentArgs(isFavorite=", ")", this.a);
    }

    public p53() {
        this(true);
    }
}
