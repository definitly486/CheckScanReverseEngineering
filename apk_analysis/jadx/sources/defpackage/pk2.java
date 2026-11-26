package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pk2 extends r22 {
    public static final /* synthetic */ long e = pz0.a.objectFieldOffset(pk2.class.getDeclaredField("d"));
    public final r22 c;
    public volatile /* synthetic */ int d = 1;

    public pk2(r22 r22Var) {
        this.c = r22Var;
    }

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        k0().dispatch(o22Var, runnable);
    }

    @Override // defpackage.r22
    public final void dispatchYield(o22 o22Var, Runnable runnable) {
        k0().dispatchYield(o22Var, runnable);
    }

    @Override // defpackage.r22
    public final boolean isDispatchNeeded(o22 o22Var) {
        return k0().isDispatchNeeded(o22Var);
    }

    public final r22 k0() {
        return pz0.a.getIntVolatile(this, e) == 1 ? qo2.b : this.c;
    }

    @Override // defpackage.r22
    public final r22 limitedParallelism(int i, String str) {
        return k0().limitedParallelism(i, str);
    }

    @Override // defpackage.r22
    public final String toString() {
        return "DeferredDispatchCoroutineDispatcher(delegate=" + this.c + ")";
    }
}
