package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ck5 {
    public final long a;
    public final String b;
    public final int c;
    public final dk5 d;

    public ck5(int i, long j, String str, dk5 dk5Var) {
        this.a = j;
        this.b = str;
        this.c = i;
        this.d = dk5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ck5)) {
            return false;
        }
        ck5 ck5Var = (ck5) obj;
        return this.a == ck5Var.a && defpackage.aa4.e(this.b, ck5Var.b) && this.c == ck5Var.c && this.d == ck5Var.d;
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        String str = this.b;
        return this.d.hashCode() + i96.a(this.c, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        int i = this.c;
        dk5 dk5Var = this.d;
        StringBuilder sbD = defpackage.ah.d(j, "ShowNotice(delay=", ", url=", str);
        sbD.append(", visibilityPercent=");
        sbD.append(i);
        sbD.append(", type=");
        sbD.append(dk5Var);
        sbD.append(")");
        return sbD.toString();
    }
}
