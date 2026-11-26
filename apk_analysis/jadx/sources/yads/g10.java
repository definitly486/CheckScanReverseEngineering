package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class g10 {
    public final f10 a;
    public final String b;

    public g10(f10 f10Var, String str) {
        this.a = f10Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g10)) {
            return false;
        }
        g10 g10Var = (g10) obj;
        return this.a == g10Var.a && defpackage.aa4.e(this.b, g10Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "CloseButtonValue(type=" + this.a + ", text=" + this.b + ")";
    }
}
