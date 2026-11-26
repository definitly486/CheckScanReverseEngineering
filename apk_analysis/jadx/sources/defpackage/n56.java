package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class n56 implements t66 {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final String d;
    public final boolean e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;

    public n56(String str, boolean z, boolean z2, String str2, boolean z3, String str3, String str4, String str5, String str6, String str7, String str8) {
        x7.b(str, str3, str5);
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = str2;
        this.e = z3;
        this.f = str3;
        this.g = str4;
        this.h = str5;
        this.i = str6;
        this.j = str7;
        this.k = str8;
    }

    @Override // defpackage.t66
    public final String c() {
        return this.j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n56)) {
            return false;
        }
        n56 n56Var = (n56) obj;
        return aa4.e(this.a, n56Var.a) && this.b == n56Var.b && this.c == n56Var.c && this.d.equals(n56Var.d) && this.e == n56Var.e && aa4.e(this.f, n56Var.f) && aa4.e(this.g, n56Var.g) && aa4.e(this.h, n56Var.h) && this.i.equals(n56Var.i) && aa4.e(this.j, n56Var.j) && aa4.e(this.k, n56Var.k);
    }

    @Override // defpackage.pz3
    public final Object f() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f);
        sb.append(this.g);
        sb.append(this.a);
        sb.append(this.d);
        sb.append(this.j);
        return me0.d(sb, this.k, this.h);
    }

    @Override // defpackage.t66
    public final String g() {
        return this.h;
    }

    @Override // defpackage.t66
    public final String getHint() {
        return this.g;
    }

    @Override // defpackage.w56
    public final String getKey() {
        return this.a;
    }

    @Override // defpackage.t66
    public final String getTitle() {
        return this.f;
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
        int iB = zg.b(tg.c(zg.b(tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f);
        String str = this.g;
        int iB2 = zg.b(zg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.h), 31, this.i);
        String str2 = this.j;
        int iHashCode = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.k;
        return iHashCode + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // defpackage.w56
    public final String i() {
        return this.i;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, this.f);
    }

    @Override // defpackage.w56
    public final boolean j() {
        return this.b;
    }

    @Override // defpackage.t66
    public final String k() {
        return this.k;
    }

    public final String toString() {
        StringBuilder sbB = p2.b("PersonalDataFormDateTextFieldViewModel(key=", this.a, ", isError=", ", isRequired=", this.b);
        sbB.append(this.c);
        sbB.append(", value=");
        sbB.append(this.d);
        sbB.append(", skip=");
        sbB.append(this.e);
        sbB.append(", title=");
        sbB.append(this.f);
        sbB.append(", hint=");
        kv2.c(sbB, this.g, ", blockKey=", this.h, ", oldValue=");
        kv2.c(sbB, this.i, ", errorMessage=", this.j, ", regex=");
        return me0.d(sbB, this.k, ")");
    }
}
