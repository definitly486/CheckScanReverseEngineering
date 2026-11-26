package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cr5 extends kr5 {
    public final String a;
    public final int b;

    public cr5(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // yads.kr5
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cr5)) {
            return false;
        }
        cr5 cr5Var = (cr5) obj;
        return defpackage.aa4.e(this.a, cr5Var.a) && this.b == cr5Var.b;
    }

    public final int hashCode() {
        return l20.c(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("ColorStoredValue(name=", this.a, ", value=", l20.d(this.b), ")");
    }
}
