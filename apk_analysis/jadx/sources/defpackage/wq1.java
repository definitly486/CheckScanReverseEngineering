package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wq1<R> {
    public final R a;
    public final q21 b;
    public final dm3<Throwable, R, o22, j59> c;
    public final Object d;
    public final Throwable e;

    public /* synthetic */ wq1(Object obj, q21 q21Var, dm3 dm3Var, Throwable th, int i) {
        this(obj, (i & 2) != 0 ? null : q21Var, (dm3<? super Throwable, ? super Object, ? super o22, j59>) ((i & 4) != 0 ? null : dm3Var), (Object) null, (i & 16) != 0 ? null : th);
    }

    public static wq1 a(wq1 wq1Var, q21 q21Var, Throwable th, int i) {
        R r = wq1Var.a;
        if ((i & 2) != 0) {
            q21Var = wq1Var.b;
        }
        q21 q21Var2 = q21Var;
        dm3<Throwable, R, o22, j59> dm3Var = wq1Var.c;
        Object obj = wq1Var.d;
        if ((i & 16) != 0) {
            th = wq1Var.e;
        }
        return new wq1(r, q21Var2, dm3Var, obj, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wq1)) {
            return false;
        }
        wq1 wq1Var = (wq1) obj;
        return aa4.e(this.a, wq1Var.a) && aa4.e(this.b, wq1Var.b) && aa4.e(this.c, wq1Var.c) && aa4.e(this.d, wq1Var.d) && aa4.e(this.e, wq1Var.e);
    }

    public final int hashCode() {
        R r = this.a;
        int iHashCode = (r == null ? 0 : r.hashCode()) * 31;
        q21 q21Var = this.b;
        int iHashCode2 = (iHashCode + (q21Var == null ? 0 : q21Var.hashCode())) * 31;
        dm3<Throwable, R, o22, j59> dm3Var = this.c;
        int iHashCode3 = (iHashCode2 + (dm3Var == null ? 0 : dm3Var.hashCode())) * 31;
        Object obj = this.d;
        int iHashCode4 = (iHashCode3 + (obj == null ? 0 : obj.hashCode())) * 31;
        Throwable th = this.e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.a + ", cancelHandler=" + this.b + ", onCancellation=" + this.c + ", idempotentResume=" + this.d + ", cancelCause=" + this.e + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public wq1(R r, q21 q21Var, dm3<? super Throwable, ? super R, ? super o22, j59> dm3Var, Object obj, Throwable th) {
        this.a = r;
        this.b = q21Var;
        this.c = dm3Var;
        this.d = obj;
        this.e = th;
    }
}
