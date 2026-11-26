package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wh5 extends r22 implements wk2 {
    public final /* synthetic */ wk2 c;
    public final r22 d;
    public final String e;

    /* JADX WARN: Multi-variable type inference failed */
    public wh5(r22 r22Var, String str) {
        wk2 wk2Var = r22Var instanceof wk2 ? (wk2) r22Var : null;
        this.c = wk2Var == null ? lh2.a : wk2Var;
        this.d = r22Var;
        this.e = str;
    }

    @Override // defpackage.wk2
    public final hp2 X(long j, Runnable runnable, o22 o22Var) {
        return this.c.X(j, runnable, o22Var);
    }

    @Override // defpackage.wk2
    public final void b(long j, c31 c31Var) {
        this.c.b(j, c31Var);
    }

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        this.d.dispatch(o22Var, runnable);
    }

    @Override // defpackage.r22
    public final void dispatchYield(o22 o22Var, Runnable runnable) {
        this.d.dispatchYield(o22Var, runnable);
    }

    @Override // defpackage.r22
    public final boolean isDispatchNeeded(o22 o22Var) {
        return this.d.isDispatchNeeded(o22Var);
    }

    @Override // defpackage.r22
    public final String toString() {
        return this.e;
    }
}
