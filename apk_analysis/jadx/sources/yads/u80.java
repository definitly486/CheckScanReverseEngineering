package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class u80 {
    public final t80 a;
    public final String b;

    public u80(t80 t80Var, String str) {
        this.a = t80Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u80)) {
            return false;
        }
        u80 u80Var = (u80) obj;
        return this.a == u80Var.a && defpackage.aa4.e(this.b, u80Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "CoreNativeCloseButton(type=" + this.a + ", text=" + this.b + ")";
    }
}
