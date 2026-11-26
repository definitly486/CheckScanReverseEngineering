package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class o31 extends p31 {
    public final vd1 a;

    public o31(vd1 vd1Var) {
        this.a = vd1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o31) && defpackage.aa4.e(this.a, ((o31) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "RtlMirror(div=" + this.a + ")";
    }
}
