package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class ze0 {
    public static final ye0 Companion = new ye0();
    public final String a;
    public final String b;

    public ze0(int i, String str, String str2) {
        if (3 != (i & 3)) {
            defpackage.r96.f(xe0.b, i, 3);
            throw null;
        }
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ze0)) {
            return false;
        }
        ze0 ze0Var = (ze0) obj;
        return defpackage.aa4.e(this.a, ze0Var.a) && defpackage.aa4.e(this.b, ze0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("DebugPanelBiddingParameter(name=", this.a, ", value=", this.b, ")");
    }
}
