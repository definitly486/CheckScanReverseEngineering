package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class m56 implements w56 {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final String d;
    public final Integer e;
    public final String f;
    public final String g;
    public final boolean h;
    public final String i;

    public m56(String str, boolean z, boolean z2, String str2, Integer num, String str3, String str4, boolean z3, String str5) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = str2;
        this.e = num;
        this.f = str3;
        this.g = str4;
        this.h = z3;
        this.i = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m56)) {
            return false;
        }
        m56 m56Var = (m56) obj;
        return aa4.e(this.a, m56Var.a) && this.b == m56Var.b && this.c == m56Var.c && aa4.e(this.d, m56Var.d) && aa4.e(this.e, m56Var.e) && aa4.e(this.f, m56Var.f) && this.g.equals(m56Var.g) && this.h == m56Var.h && this.i.equals(m56Var.i);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.d + this.e + this.f + this.g + this.i + this.c + this.h + this.b;
    }

    @Override // defpackage.w56
    public final String getKey() {
        return this.a;
    }

    @Override // defpackage.w56
    public final String getValue() {
        return this.f;
    }

    @Override // defpackage.w56
    public final boolean h() {
        return this.h;
    }

    public final int hashCode() {
        int iB = zg.b(tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        Integer num = this.e;
        return this.i.hashCode() + tg.c(zg.b(zg.b((iB + (num == null ? 0 : num.hashCode())) * 31, 31, this.f), 31, this.g), 31, this.h);
    }

    @Override // defpackage.w56
    public final String i() {
        return this.g;
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
        StringBuilder sbB = p2.b("PersonalDataFormCityTextViewModel(key=", this.a, ", isError=", ", isRequired=", this.b);
        sbB.append(this.c);
        sbB.append(", title=");
        sbB.append(this.d);
        sbB.append(", icon=");
        sbB.append(this.e);
        sbB.append(", value=");
        sbB.append(this.f);
        sbB.append(", oldValue=");
        ud.f(sbB, this.g, ", skip=", this.h, ", hint=");
        return me0.d(sbB, this.i, ")");
    }
}
