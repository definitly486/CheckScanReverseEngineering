package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class g93 {
    public final f93 a;
    public final String b;
    public final String c;
    public final g17 d;
    public final boolean e;
    public final boolean f;

    public /* synthetic */ g93(f93 f93Var, g17 g17Var, int i) {
        this(f93Var, new String(), new String(), (i & 8) != 0 ? new g17(".*") : g17Var, true, (i & 32) != 0);
    }

    public static g93 a(g93 g93Var, String str, String str2, boolean z, boolean z2, int i) {
        f93 f93Var = g93Var.a;
        if ((i & 2) != 0) {
            str = g93Var.b;
        }
        String str3 = str;
        if ((i & 4) != 0) {
            str2 = g93Var.c;
        }
        String str4 = str2;
        g17 g17Var = g93Var.d;
        if ((i & 16) != 0) {
            z = g93Var.e;
        }
        boolean z3 = z;
        if ((i & 32) != 0) {
            z2 = g93Var.f;
        }
        g93Var.getClass();
        g93Var.getClass();
        f93Var.getClass();
        str3.getClass();
        str4.getClass();
        g17Var.getClass();
        return new g93(f93Var, str3, str4, g17Var, z3, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g93)) {
            return false;
        }
        g93 g93Var = (g93) obj;
        return aa4.e(this.a, g93Var.a) && aa4.e(this.b, g93Var.b) && aa4.e(this.c, g93Var.c) && aa4.e(this.d, g93Var.d) && this.e == g93Var.e && this.f == g93Var.f;
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + tg.c(tg.c((this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c)) * 31, 31, this.e), 31, this.f);
    }

    public final String toString() {
        return "FieldsState(type=" + this.a + ", value=" + this.b + ", alternativeValue=" + this.c + ", regex=" + this.d + ", isBlank=" + this.e + ", isInvalid=" + this.f + ", isWillBeFocused=false)";
    }

    public g93(f93 f93Var, String str, String str2, g17 g17Var, boolean z, boolean z2) {
        g17Var.getClass();
        this.a = f93Var;
        this.b = str;
        this.c = str2;
        this.d = g17Var;
        this.e = z;
        this.f = z2;
    }
}
