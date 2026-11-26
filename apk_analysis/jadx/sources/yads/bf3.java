package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bf3 {
    public final e75 a;
    public final e75 b;
    public final e75 c;
    public final e75 d;

    public bf3(e75 e75Var, e75 e75Var2, e75 e75Var3, e75 e75Var4) {
        this.a = e75Var;
        this.b = e75Var2;
        this.c = e75Var3;
        this.d = e75Var4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bf3)) {
            return false;
        }
        bf3 bf3Var = (bf3) obj;
        return this.a == bf3Var.a && this.b == bf3Var.b && this.c == bf3Var.c && this.d == bf3Var.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ImpressionTrackingReportTypes(impressionTrackingSuccessReportType=" + this.a + ", impressionTrackingStartReportType=" + this.b + ", impressionTrackingFailureReportType=" + this.c + ", forcedImpressionTrackingFailureReportType=" + this.d + ")";
    }
}
