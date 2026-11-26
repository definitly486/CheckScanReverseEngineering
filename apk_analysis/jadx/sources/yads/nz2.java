package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class nz2 {
    public static final mz2 Companion = new mz2();
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public nz2(int i, String str, String str2, String str3, String str4) {
        if (15 != (i & 15)) {
            defpackage.r96.f(lz2.b, i, 15);
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nz2)) {
            return false;
        }
        nz2 nz2Var = (nz2) obj;
        return defpackage.aa4.e(this.a, nz2Var.a) && defpackage.aa4.e(this.b, nz2Var.b) && defpackage.aa4.e(this.c, nz2Var.c) && defpackage.aa4.e(this.d, nz2Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + l4.a(l4.a(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.dg.c(defpackage.ad2.d("FontUrls(regular=", str, ", bold=", str2, ", light="), this.c, ", medium=", this.d, ")");
    }
}
