package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vk4 implements yi4 {
    public final String a;
    public final boolean b;
    public final String c;
    public final String d;
    public final boolean e;
    public final int f;
    public final String g;
    public final String h;
    public final qv6 i;

    public vk4(String str, boolean z, String str2, String str3, boolean z2, int i) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = z;
        this.c = str2;
        this.d = str3;
        this.e = z2;
        this.f = i;
        this.g = str;
        this.h = str3;
        this.i = qv6.UNUSED;
    }

    @Override // defpackage.yi4
    public final String a() {
        return this.g;
    }

    @Override // defpackage.yi4
    public final String b() {
        return this.h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vk4)) {
            return false;
        }
        vk4 vk4Var = (vk4) obj;
        return aa4.e(this.a, vk4Var.a) && this.b == vk4Var.b && aa4.e(this.c, vk4Var.c) && this.d.equals(vk4Var.d) && this.e == vk4Var.e && this.f == vk4Var.f;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.c, this.d);
    }

    @Override // defpackage.yi4
    public final qv6 getType() {
        return this.i;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f) + tg.c(zg.b(zg.b(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbB = p2.b("LandingUnSelectedTextFieldWithBackgroundViewModel(key=", this.a, ", required=", ", title=", this.b);
        kv2.c(sbB, this.c, ", value=", this.d, ", valid=");
        sbB.append(this.e);
        sbB.append(", imeOptions=");
        sbB.append(this.f);
        sbB.append(")");
        return sbB.toString();
    }
}
