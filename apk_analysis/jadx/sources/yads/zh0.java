package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class zh0 {
    public static final yh0 Companion = new yh0();
    public final String a;
    public final double b;

    public zh0(int i, String str, double d) {
        if (3 != (i & 3)) {
            defpackage.r96.f(xh0.b, i, 3);
            throw null;
        }
        this.a = str;
        this.b = d;
    }

    public final double a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zh0)) {
            return false;
        }
        zh0 zh0Var = (zh0) obj;
        return defpackage.aa4.e(this.a, zh0Var.a) && Double.compare(this.b, zh0Var.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelWaterfallCpmFloor(networkAdUnitId=" + this.a + ", minCpm=" + this.b + ")";
    }
}
