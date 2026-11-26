package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class gr5 extends kr5 {
    public final String a;
    public final String b;

    public gr5(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // yads.kr5
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gr5)) {
            return false;
        }
        gr5 gr5Var = (gr5) obj;
        return defpackage.aa4.e(this.a, gr5Var.a) && defpackage.aa4.e(this.b, gr5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("StringStoredValue(name=", this.a, ", value=", this.b, ")");
    }
}
