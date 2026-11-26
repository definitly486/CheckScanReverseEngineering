package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class y35 {
    public final long a;
    public final long b;
    public final String c;
    public int d;

    public y35(String str, long j, long j2) {
        this.c = str == null ? "" : str;
        this.a = j;
        this.b = j2;
    }

    public final y35 a(y35 y35Var, String str) {
        String strA = o46.a(str, this.c);
        if (y35Var != null && strA.equals(o46.a(str, y35Var.c))) {
            long j = this.b;
            if (j != -1) {
                long j2 = this.a;
                if (j2 + j == y35Var.a) {
                    long j3 = y35Var.b;
                    return new y35(strA, j2, j3 != -1 ? j + j3 : -1L);
                }
            }
            long j4 = y35Var.b;
            if (j4 != -1) {
                long j5 = y35Var.a;
                if (j5 + j4 == this.a) {
                    return new y35(strA, j5, j != -1 ? j4 + j : -1L);
                }
            }
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && y35.class == obj.getClass()) {
            y35 y35Var = (y35) obj;
            if (this.a == y35Var.a && this.b == y35Var.b && this.c.equals(y35Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.d;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.c.hashCode() + ((((((int) this.a) + 527) * 31) + ((int) this.b)) * 31);
        this.d = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RangedUri(referenceUri=");
        sb.append(this.c);
        sb.append(", start=");
        sb.append(this.a);
        sb.append(", length=");
        return defpackage.k2.b(this.b, ")", sb);
    }

    public final Uri a(String str) {
        return Uri.parse(o46.a(str, this.c));
    }
}
