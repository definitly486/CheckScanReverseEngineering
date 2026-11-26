package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class jr5 extends kr5 {
    public final String a;
    public final String b;

    public jr5(String str, String str2) {
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
        if (!(obj instanceof jr5)) {
            return false;
        }
        jr5 jr5Var = (jr5) obj;
        return defpackage.aa4.e(this.a, jr5Var.a) && defpackage.aa4.e(this.b, jr5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("UrlStoredValue(name=", this.a, ", value=", q46.b(this.b), ")");
    }
}
