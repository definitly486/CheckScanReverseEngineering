package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class j3 {
    public final long a;
    public final String b;
    public final boolean c;
    public final String d;
    public final boolean e;
    public final String f;

    public j3(long j, String str, boolean z, String str2, boolean z2, String str3) {
        str.getClass();
        str2.getClass();
        this.a = j;
        this.b = str;
        this.c = z;
        this.d = str2;
        this.e = z2;
        this.f = str3;
    }

    public static j3 a(j3 j3Var, String str) {
        long j = j3Var.a;
        String str2 = j3Var.b;
        boolean z = j3Var.c;
        String str3 = j3Var.d;
        boolean z2 = j3Var.e;
        str2.getClass();
        str3.getClass();
        return new j3(j, str2, z, str3, z2, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j3)) {
            return false;
        }
        j3 j3Var = (j3) obj;
        return this.a == j3Var.a && aa4.e(this.b, j3Var.b) && this.c == j3Var.c && aa4.e(this.d, j3Var.d) && this.e == j3Var.e && aa4.e(this.f, j3Var.f);
    }

    public final int hashCode() {
        int iC = tg.c(zg.b(tg.c(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
        String str = this.f;
        return iC + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "AccountInfo(id=", ", username=", this.b);
        sbD.append(", isAnon=");
        sbD.append(this.c);
        sbD.append(", phone=");
        sbD.append(this.d);
        sbD.append(", isPhoneValid=");
        sbD.append(this.e);
        sbD.append(", token=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
