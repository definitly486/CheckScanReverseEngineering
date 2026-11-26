package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class kw7 {
    public final String a;
    public final qc6 b;

    public kw7(String str, qc6 qc6Var) {
        qc6Var.getClass();
        this.a = str;
        this.b = qc6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kw7)) {
            return false;
        }
        kw7 kw7Var = (kw7) obj;
        return this.a.equals(kw7Var.a) && aa4.e(this.b, kw7Var.b);
    }

    public final int hashCode() {
        return this.b.a.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ShowcaseAnalyticsEvent(name=" + this.a + ", postHogProperties=" + this.b + ")";
    }
}
