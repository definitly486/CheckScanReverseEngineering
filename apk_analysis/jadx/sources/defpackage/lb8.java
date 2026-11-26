package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lb8 {

    @bq7("kind")
    private final mb8 a;

    @bq7("url")
    private final String b;

    public lb8(mb8 mb8Var, String str) {
        mb8Var.getClass();
        this.a = mb8Var;
        this.b = str;
    }

    public final mb8 a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lb8)) {
            return false;
        }
        lb8 lb8Var = (lb8) obj;
        return this.a == lb8Var.a && aa4.e(this.b, lb8Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "SubButton(type=" + this.a + ", url=" + this.b + ")";
    }

    public /* synthetic */ lb8(mb8 mb8Var, String str, int i, jh2 jh2Var) {
        this(mb8Var, (i & 2) != 0 ? null : str);
    }
}
