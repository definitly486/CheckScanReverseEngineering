package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i88 {

    @bq7("name")
    private final m88 a;

    @bq7("text")
    private final String b;

    @bq7("color")
    private final String c;

    public i88(m88 m88Var, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = m88Var;
        this.b = str;
        this.c = str2;
    }

    public final String a() {
        return this.c;
    }

    public final m88 b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i88)) {
            return false;
        }
        i88 i88Var = (i88) obj;
        return this.a == i88Var.a && aa4.e(this.b, i88Var.b) && aa4.e(this.c, i88Var.c);
    }

    public final int hashCode() {
        m88 m88Var = this.a;
        return this.c.hashCode() + zg.b((m88Var == null ? 0 : m88Var.hashCode()) * 31, 31, this.b);
    }

    public final String toString() {
        m88 m88Var = this.a;
        String str = this.b;
        String str2 = this.c;
        StringBuilder sb = new StringBuilder("Status(name=");
        sb.append(m88Var);
        sb.append(", title=");
        sb.append(str);
        sb.append(", colorHex=");
        return me0.d(sb, str2, ")");
    }
}
