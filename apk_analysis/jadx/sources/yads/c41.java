package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public final class c41 extends d41 {
    public final int a;

    public c41(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c41) && this.a == ((c41) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "Solid(color=", ")");
    }
}
