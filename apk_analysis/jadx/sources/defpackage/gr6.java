package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gr6 implements pz3 {
    public final long a;
    public final String b;
    public final boolean c;
    public final String d;
    public final String e;
    public final aq6 f;
    public final q00 g;

    public gr6(long j, String str, boolean z, String str2, String str3, aq6 aq6Var, q00 q00Var) {
        str.getClass();
        str2.getClass();
        this.a = j;
        this.b = str;
        this.c = z;
        this.d = str2;
        this.e = str3;
        this.f = aq6Var;
        this.g = q00Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gr6)) {
            return false;
        }
        gr6 gr6Var = (gr6) obj;
        return this.a == gr6Var.a && aa4.e(this.b, gr6Var.b) && this.c == gr6Var.c && aa4.e(this.d, gr6Var.d) && this.e.equals(gr6Var.e) && this.f.equals(gr6Var.f) && aa4.e(this.g, gr6Var.g);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.d + this.e + this.c + this.b;
    }

    public final int hashCode() {
        int iHashCode = (this.f.hashCode() + zg.b(zg.b(tg.c(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e)) * 31;
        q00 q00Var = this.g;
        return iHashCode + (q00Var == null ? 0 : q00Var.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "PromocodeViewModel(id=", ", logoUrl=", this.b);
        sbD.append(", isFavourite=");
        sbD.append(this.c);
        sbD.append(", title=");
        sbD.append(this.d);
        sbD.append(", subtitle=");
        sbD.append(this.e);
        sbD.append(", bottom=");
        sbD.append(this.f);
        sbD.append(", badge=");
        sbD.append(this.g);
        sbD.append(")");
        return sbD.toString();
    }
}
