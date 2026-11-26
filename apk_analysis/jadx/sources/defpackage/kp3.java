package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kp3 {

    @bq7("lat")
    private final double a;

    @bq7("lon")
    private final double b;

    public kp3(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kp3)) {
            return false;
        }
        kp3 kp3Var = (kp3) obj;
        return Double.compare(this.a, kp3Var.a) == 0 && Double.compare(this.b, kp3Var.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (Double.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "GeoRequestBody(lat=" + this.a + ", lon=" + this.b + ")";
    }
}
