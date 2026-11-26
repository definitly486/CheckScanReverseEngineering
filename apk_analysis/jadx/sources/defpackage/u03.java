package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class u03 implements g24 {
    public final x04 a;
    public final b24 b;
    public final Throwable c;

    public u03(x04 x04Var, b24 b24Var, Throwable th) {
        this.a = x04Var;
        this.b = b24Var;
        this.c = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u03)) {
            return false;
        }
        u03 u03Var = (u03) obj;
        return aa4.e(this.a, u03Var.a) && aa4.e(this.b, u03Var.b) && this.c.equals(u03Var.c);
    }

    @Override // defpackage.g24
    public final b24 getRequest() {
        return this.b;
    }

    public final int hashCode() {
        x04 x04Var = this.a;
        int iHashCode = x04Var == null ? 0 : x04Var.hashCode();
        return this.c.hashCode() + ((this.b.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ErrorResult(image=" + this.a + ", request=" + this.b + ", throwable=" + this.c + ")";
    }
}
