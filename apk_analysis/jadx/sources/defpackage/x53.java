package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class x53 implements NavArgs {
    public final boolean a;

    public x53(boolean z) {
        this.a = z;
    }

    public static final x53 fromBundle(Bundle bundle) {
        if (c9.j(bundle, "isFavorite", x53.class)) {
            return new x53(bundle.getBoolean("isFavorite"));
        }
        fg.c("Required argument \"isFavorite\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x53) && this.a == ((x53) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("FavoriteFragmentArgs(isFavorite=", ")", this.a);
    }
}
