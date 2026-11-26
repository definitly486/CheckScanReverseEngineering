package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ik4 implements yi4 {
    public final String a;
    public final boolean b;
    public final String c;
    public final String d;
    public final int e;
    public final boolean f;
    public final boolean g;
    public final qv6 h;
    public final int i;
    public final String j;
    public final String k;
    public final qv6 l;

    public ik4(String str, boolean z, String str2, String str3, int i, boolean z2, boolean z3, qv6 qv6Var, int i2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        qv6Var.getClass();
        this.a = str;
        this.b = z;
        this.c = str2;
        this.d = str3;
        this.e = i;
        this.f = z2;
        this.g = z3;
        this.h = qv6Var;
        this.i = i2;
        this.j = str;
        this.k = str3;
        this.l = qv6Var;
    }

    public static ik4 d(ik4 ik4Var, String str, boolean z, int i) {
        String str2 = ik4Var.a;
        boolean z2 = ik4Var.b;
        String str3 = ik4Var.c;
        if ((i & 8) != 0) {
            str = ik4Var.d;
        }
        String str4 = str;
        int i2 = ik4Var.e;
        if ((i & 32) != 0) {
            z = ik4Var.f;
        }
        boolean z3 = z;
        boolean z4 = (i & 64) != 0 ? ik4Var.g : false;
        qv6 qv6Var = ik4Var.h;
        int i3 = (i & 256) != 0 ? ik4Var.i : 6;
        str2.getClass();
        str3.getClass();
        str4.getClass();
        qv6Var.getClass();
        return new ik4(str2, z2, str3, str4, i2, z3, z4, qv6Var, i3);
    }

    @Override // defpackage.yi4
    public final String a() {
        return this.j;
    }

    @Override // defpackage.yi4
    public final String b() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ik4)) {
            return false;
        }
        ik4 ik4Var = (ik4) obj;
        return aa4.e(this.a, ik4Var.a) && this.b == ik4Var.b && aa4.e(this.c, ik4Var.c) && aa4.e(this.d, ik4Var.d) && this.e == ik4Var.e && this.f == ik4Var.f && this.g == ik4Var.g && this.h == ik4Var.h && this.i == ik4Var.i;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c + this.d + this.g;
    }

    @Override // defpackage.yi4
    public final qv6 getType() {
        return this.l;
    }

    public final int hashCode() {
        return Integer.hashCode(this.i) + ((this.h.hashCode() + tg.c(tg.c(ej0.b(this.e, zg.b(zg.b(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31), 31, this.f), 31, this.g)) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbB = p2.b("LandingTextFieldWithBackgroundViewModel(key=", this.a, ", required=", ", title=", this.b);
        kv2.c(sbB, this.c, ", value=", this.d, ", inputType=");
        sbB.append(this.e);
        sbB.append(", valid=");
        sbB.append(this.f);
        sbB.append(", isEnable=");
        sbB.append(this.g);
        sbB.append(", questionType=");
        sbB.append(this.h);
        sbB.append(", imeOptions=");
        return l2.e(sbB, ")", this.i);
    }

    public /* synthetic */ ik4(String str, boolean z, String str2, String str3, int i, boolean z2, qv6 qv6Var) {
        this(str, z, str2, str3, i, z2, true, qv6Var, 5);
    }
}
