package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fr5 extends kr5 {
    public final String a;
    public final long b;

    public fr5(String str, long j) {
        this.a = str;
        this.b = j;
    }

    @Override // yads.kr5
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fr5)) {
            return false;
        }
        fr5 fr5Var = (fr5) obj;
        return defpackage.aa4.e(this.a, fr5Var.a) && this.b == fr5Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "IntegerStoredValue(name=" + this.a + ", value=" + this.b + ")";
    }
}
