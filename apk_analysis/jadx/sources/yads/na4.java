package yads;

import defpackage.kv2;
import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class na4 {
    public static final ma4 Companion = new ma4();
    public final long a;
    public final String b;
    public final String c;
    public final String d;

    public na4(int i, long j, String str, String str2, String str3) {
        if (15 != (i & 15)) {
            defpackage.r96.f(la4.b, i, 15);
            throw null;
        }
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof na4)) {
            return false;
        }
        na4 na4Var = (na4) obj;
        return this.a == na4Var.a && defpackage.aa4.e(this.b, na4Var.b) && defpackage.aa4.e(this.c, na4Var.c) && defpackage.aa4.e(this.d, na4Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + l4.a(l4.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        StringBuilder sbD = defpackage.ah.d(j, "MobileAdsSdkLog(timestamp=", ", type=", str);
        kv2.c(sbD, ", tag=", str2, ", text=", str3);
        sbD.append(")");
        return sbD.toString();
    }

    public na4(long j, String str, String str2, String str3) {
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }
}
