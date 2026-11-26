package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zj3 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final a41 f;

    public zj3(long j, String str, String str2, String str3, String str4, a41 a41Var) {
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = a41Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zj3)) {
            return false;
        }
        zj3 zj3Var = (zj3) obj;
        return this.a == zj3Var.a && this.b.equals(zj3Var.b) && this.c.equals(zj3Var.c) && this.d.equals(zj3Var.d) && this.e.equals(zj3Var.e) && this.f.equals(zj3Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + zg.b(zg.b(zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "FragmentCardInfo(id=", ", imageUrl=", this.b);
        kv2.c(sbD, ", title=", this.c, ", description=", this.d);
        sbD.append(", buttonTitle=");
        sbD.append(this.e);
        sbD.append(", buttonEvent=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
