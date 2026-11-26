package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class nu4 {

    @bq7("lat")
    private final double a;

    @bq7("lon")
    private final double b;

    public nu4(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    public final du4 a() {
        return new du4(this.a, this.b, (String) null, (String) null, (String) null, 28, (jh2) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nu4)) {
            return false;
        }
        nu4 nu4Var = (nu4) obj;
        return Double.compare(this.a, nu4Var.a) == 0 && Double.compare(this.b, nu4Var.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (Double.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "LocationResponse(lat=" + this.a + ", lon=" + this.b + ")";
    }
}
