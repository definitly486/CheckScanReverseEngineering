package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class x69 extends r22 {
    public static final x69 c = new x69();

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        oi2.d.c.n(runnable, true, false);
    }

    @Override // defpackage.r22
    public final void dispatchYield(o22 o22Var, Runnable runnable) {
        oi2.d.c.n(runnable, true, true);
    }

    @Override // defpackage.r22
    public final r22 limitedParallelism(int i, String str) {
        zd3.b(i);
        if (i >= xo8.d) {
            return str != null ? new wh5(this, str) : this;
        }
        return super.limitedParallelism(i, str);
    }

    @Override // defpackage.r22
    public final String toString() {
        return "Dispatchers.IO";
    }
}
