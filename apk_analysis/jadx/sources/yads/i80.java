package yads;

import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class i80 {
    public final ll3 a;
    public final String b;
    public final int c;
    public final int d;

    public i80(ll3 ll3Var, String str, int i, int i2) {
        this.a = ll3Var;
        this.b = str;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i80)) {
            return false;
        }
        i80 i80Var = (i80) obj;
        return defpackage.aa4.e(this.a, i80Var.a) && defpackage.aa4.e(this.b, i80Var.b) && this.c == i80Var.c && this.d == i80Var.d;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Integer.hashCode(this.d) + i96.a(this.c, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
    }

    public final String toString() {
        return "CoreNativeAdImage(getDrawable=" + this.a + ", sizeType=" + this.b + ", width=" + this.c + ", height=" + this.d + ")";
    }
}
