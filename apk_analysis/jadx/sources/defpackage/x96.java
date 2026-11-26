package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class x96 implements NavArgs {
    public final long a;

    public x96() {
        this(-1L);
    }

    public static final x96 fromBundle(Bundle bundle) {
        return new x96(c9.j(bundle, "programId", x96.class) ? bundle.getLong("programId") : -1L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x96) && this.a == ((x96) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "PointsProgramFragmentArgs(programId=", ")");
    }

    public x96(long j) {
        this.a = j;
    }
}
