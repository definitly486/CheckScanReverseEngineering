package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rj4 {

    @bq7("headerBlock")
    private final kv4 a;

    @bq7("benefitsBlock")
    private final ii0 b;

    @bq7("stepsBlock")
    private final w88 c;

    @bq7("buttonBlock")
    private final jv0 d;

    @bq7("activationBlock")
    private final u6 e;

    public rj4(kv4 kv4Var, ii0 ii0Var, w88 w88Var, jv0 jv0Var, u6 u6Var) {
        this.a = kv4Var;
        this.b = ii0Var;
        this.c = w88Var;
        this.d = jv0Var;
        this.e = u6Var;
    }

    public final ii0 a() {
        return this.b;
    }

    public final jv0 b() {
        return this.d;
    }

    public final kv4 c() {
        return this.a;
    }

    public final w88 d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rj4)) {
            return false;
        }
        rj4 rj4Var = (rj4) obj;
        return aa4.e(this.a, rj4Var.a) && aa4.e(this.b, rj4Var.b) && aa4.e(this.c, rj4Var.c) && aa4.e(this.d, rj4Var.d) && aa4.e(this.e, rj4Var.e);
    }

    public final int hashCode() {
        kv4 kv4Var = this.a;
        int iHashCode = (kv4Var == null ? 0 : kv4Var.hashCode()) * 31;
        ii0 ii0Var = this.b;
        int iHashCode2 = (iHashCode + (ii0Var == null ? 0 : ii0Var.hashCode())) * 31;
        w88 w88Var = this.c;
        int iHashCode3 = (iHashCode2 + (w88Var == null ? 0 : w88Var.hashCode())) * 31;
        jv0 jv0Var = this.d;
        int iHashCode4 = (iHashCode3 + (jv0Var == null ? 0 : jv0Var.hashCode())) * 31;
        u6 u6Var = this.e;
        return iHashCode4 + (u6Var != null ? u6Var.hashCode() : 0);
    }

    public final String toString() {
        return "LandingResponse(headerBlock=" + this.a + ", benefitsBlock=" + this.b + ", stepsBlock=" + this.c + ", buttonBlock=" + this.d + ", activationBlockResponse=" + this.e + ")";
    }
}
