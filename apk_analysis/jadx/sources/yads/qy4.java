package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class qy4 {
    public static final py4 Companion = new py4();
    public final String a;
    public final yy4 b;
    public final nz4 c;
    public final iz4 d;
    public final String e;

    public qy4(int i, String str, yy4 yy4Var, nz4 nz4Var, iz4 iz4Var, String str2) {
        if (31 != (i & 31)) {
            defpackage.r96.f(oy4.b, i, 31);
            throw null;
        }
        this.a = str;
        this.b = yy4Var;
        this.c = nz4Var;
        this.d = iz4Var;
        this.e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qy4)) {
            return false;
        }
        qy4 qy4Var = (qy4) obj;
        return defpackage.aa4.e(this.a, qy4Var.a) && defpackage.aa4.e(this.b, qy4Var.b) && defpackage.aa4.e(this.c, qy4Var.c) && defpackage.aa4.e(this.d, qy4Var.d) && defpackage.aa4.e(this.e, qy4Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        yy4 yy4Var = this.b;
        int iHashCode2 = (iHashCode + (yy4Var == null ? 0 : yy4Var.hashCode())) * 31;
        nz4 nz4Var = this.c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (nz4Var == null ? 0 : nz4Var.hashCode())) * 31)) * 31;
        String str = this.e;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        yy4 yy4Var = this.b;
        nz4 nz4Var = this.c;
        iz4 iz4Var = this.d;
        String str2 = this.e;
        StringBuilder sb = new StringBuilder("PrefetchedMediationInfo(adapter=");
        sb.append(str);
        sb.append(", networkWinner=");
        sb.append(yy4Var);
        sb.append(", revenue=");
        sb.append(nz4Var);
        sb.append(", result=");
        sb.append(iz4Var);
        sb.append(", networkAdInfo=");
        return defpackage.me0.d(sb, str2, ")");
    }

    public qy4(String str, yy4 yy4Var, nz4 nz4Var, iz4 iz4Var, String str2) {
        this.a = str;
        this.b = yy4Var;
        this.c = nz4Var;
        this.d = iz4Var;
        this.e = str2;
    }
}
