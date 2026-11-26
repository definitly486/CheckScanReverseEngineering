package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class c66 implements w56 {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final String d;
    public final boolean e;
    public final String f;
    public final String g;

    public c66(String str, boolean z, boolean z2, String str2, boolean z3, String str3, String str4) {
        str.getClass();
        str4.getClass();
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = str2;
        this.e = z3;
        this.f = str3;
        this.g = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c66)) {
            return false;
        }
        c66 c66Var = (c66) obj;
        return aa4.e(this.a, c66Var.a) && this.b == c66Var.b && this.c == c66Var.c && this.d.equals(c66Var.d) && this.e == c66Var.e && this.f.equals(c66Var.f) && aa4.e(this.g, c66Var.g);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return cg.d(this.a, this.g, this.d);
    }

    @Override // defpackage.w56
    public final String getKey() {
        return this.a;
    }

    @Override // defpackage.w56
    public final String getValue() {
        return this.d;
    }

    @Override // defpackage.w56
    public final boolean h() {
        return this.e;
    }

    public final int hashCode() {
        return this.g.hashCode() + zg.b(tg.c(zg.b(tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f);
    }

    @Override // defpackage.w56
    public final String i() {
        return this.f;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    @Override // defpackage.w56
    public final boolean j() {
        return this.b;
    }

    public final String toString() {
        StringBuilder sbB = p2.b("PersonalDataFormPhoneTextViewModel(key=", this.a, ", isError=", ", isRequired=", this.b);
        sbB.append(this.c);
        sbB.append(", value=");
        sbB.append(this.d);
        sbB.append(", skip=");
        sbB.append(this.e);
        sbB.append(", oldValue=");
        sbB.append(this.f);
        sbB.append(", title=");
        return me0.d(sbB, this.g, ")");
    }
}
