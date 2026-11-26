package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class iz6 implements w18 {
    public final t18 b;

    public iz6(t18 t18Var) {
        this.b = t18Var;
    }

    @Override // defpackage.w18
    public final Object a(e02<? super t18> e02Var) {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof iz6) && aa4.e(this.b, ((iz6) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "RealSizeResolver(size=" + this.b + ")";
    }
}
