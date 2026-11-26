package defpackage;

import android.os.Bundle;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class c90 implements NavArgs {
    public final long a;

    public c90() {
        this(-1L);
    }

    public static final c90 fromBundle(Bundle bundle) {
        return new c90(c9.j(bundle, "bankId", c90.class) ? bundle.getLong("bankId") : -1L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c90) && this.a == ((c90) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "BankCardOptionsFragmentArgs(bankId=", ")");
    }

    public c90(long j) {
        this.a = j;
    }
}
