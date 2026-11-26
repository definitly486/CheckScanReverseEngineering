package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class br5 extends kr5 {
    public final String a;
    public final boolean b;

    public br5(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    @Override // yads.kr5
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof br5)) {
            return false;
        }
        br5 br5Var = (br5) obj;
        return defpackage.aa4.e(this.a, br5Var.a) && this.b == br5Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "BooleanStoredValue(name=" + this.a + ", value=" + this.b + ")";
    }
}
