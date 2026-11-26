package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class c41 {
    public final b41 a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;

    public c41(b41 b41Var, String str, String str2, boolean z, boolean z2) {
        b41Var.getClass();
        str.getClass();
        str2.getClass();
        this.a = b41Var;
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c41)) {
            return false;
        }
        c41 c41Var = (c41) obj;
        return this.a == c41Var.a && aa4.e(this.b, c41Var.b) && aa4.e(this.c, c41Var.c) && this.d == c41Var.d && this.e == c41Var.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + tg.c(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CardStateInfo(state=");
        sb.append(this.a);
        sb.append(", title=");
        sb.append(this.b);
        sb.append(", subtitle=");
        ud.f(sb, this.c, ", isSuccessBannerShown=", this.d, ", showSuggestionAddMir=");
        return dh.e(sb, this.e, ")");
    }
}
