package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class yy4 {
    public static final xy4 Companion = new xy4();
    public final String a;
    public final String b;

    public yy4(int i, String str, String str2) {
        if (3 != (i & 3)) {
            defpackage.r96.f(wy4.b, i, 3);
            throw null;
        }
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yy4)) {
            return false;
        }
        yy4 yy4Var = (yy4) obj;
        return defpackage.aa4.e(this.a, yy4Var.a) && defpackage.aa4.e(this.b, yy4Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("PrefetchedMediationNetworkWinner(networkName=", this.a, ", networkAdUnit=", this.b, ")");
    }
}
