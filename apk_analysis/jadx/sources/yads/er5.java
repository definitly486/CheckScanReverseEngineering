package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class er5 extends kr5 {
    public final String a;
    public final double b;

    public er5(String str, double d) {
        this.a = str;
        this.b = d;
    }

    @Override // yads.kr5
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof er5)) {
            return false;
        }
        er5 er5Var = (er5) obj;
        return defpackage.aa4.e(this.a, er5Var.a) && Double.compare(this.b, er5Var.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DoubleStoredValue(name=" + this.a + ", value=" + this.b + ")";
    }
}
