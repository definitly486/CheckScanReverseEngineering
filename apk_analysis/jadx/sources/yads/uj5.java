package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class uj5 {
    public final String a;
    public final Long b;
    public final boolean c;
    public final boolean d;
    public final ql5 e;

    public uj5(String str, Long l, boolean z, boolean z2, ql5 ql5Var) {
        this.a = str;
        this.b = l;
        this.c = z;
        this.d = z2;
        this.e = ql5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uj5)) {
            return false;
        }
        uj5 uj5Var = (uj5) obj;
        return defpackage.aa4.e(this.a, uj5Var.a) && defpackage.aa4.e(this.b, uj5Var.b) && this.c == uj5Var.c && this.d == uj5Var.d && defpackage.aa4.e(this.e, uj5Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.b;
        int iA = m7.a(m7.a((iHashCode + (l == null ? 0 : l.hashCode())) * 31, 31, this.c), 31, this.d);
        ql5 ql5Var = this.e;
        return iA + (ql5Var != null ? ql5Var.hashCode() : 0);
    }

    public final String toString() {
        return "Settings(templateType=" + this.a + ", multiBannerAutoScrollInterval=" + this.b + ", isHighlightingEnabled=" + this.c + ", isLoopingVideo=" + this.d + ", mediaAssetImageFallbackSize=" + this.e + ")";
    }
}
