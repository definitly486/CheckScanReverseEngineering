package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ef5 implements gf5 {
    public final m4 a;

    public ef5(m4 m4Var) {
        this.a = m4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ef5) && defpackage.aa4.e(this.a, ((ef5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Error(error=" + this.a + ")";
    }
}
