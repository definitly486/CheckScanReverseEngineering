package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class nz4 {
    public static final mz4 Companion = new mz4();
    public final double a;

    public nz4(int i, double d) {
        if (1 == (i & 1)) {
            this.a = d;
        } else {
            defpackage.r96.f(lz4.b, i, 1);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nz4) && Double.compare(this.a, ((nz4) obj).a) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.a);
    }

    public final String toString() {
        return "PrefetchedMediationRevenue(value=" + this.a + ")";
    }
}
