package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class lo4 {
    public final a16 a;
    public final f66 b;

    public lo4(a16 a16Var, f66 f66Var) {
        this.a = a16Var;
        this.b = f66Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lo4)) {
            return false;
        }
        lo4 lo4Var = (lo4) obj;
        return defpackage.aa4.e(this.a, lo4Var.a) && defpackage.aa4.e(this.b, lo4Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "NoticeValidationHolder(notice=" + this.a + ", validationResult=" + this.b + ")";
    }
}
