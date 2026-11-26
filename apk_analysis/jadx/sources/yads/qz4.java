package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class qz4 {
    public static final pz4 Companion = new pz4();
    public static final defpackage.cl4[] c = {null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.u2(3))};
    public final String a;
    public final sz4 b;

    public qz4(int i, String str, sz4 sz4Var) {
        if (3 != (i & 3)) {
            defpackage.r96.f(oz4.b, i, 3);
            throw null;
        }
        this.a = str;
        this.b = sz4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qz4)) {
            return false;
        }
        qz4 qz4Var = (qz4) obj;
        return defpackage.aa4.e(this.a, qz4Var.a) && this.b == qz4Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "PreloadBlock(adUnitId=" + this.a + ", format=" + this.b + ")";
    }

    public qz4(String str, sz4 sz4Var) {
        this.a = str;
        this.b = sz4Var;
    }
}
