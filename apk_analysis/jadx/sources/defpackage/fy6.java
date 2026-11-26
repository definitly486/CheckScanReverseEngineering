package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fy6<T> implements ys7<T>, hd3, wm3<T> {
    public final /* synthetic */ ys7<T> b;
    private final mb4 job;

    public fy6(vg5 vg5Var, s68 s68Var) {
        this.b = vg5Var;
        this.job = s68Var;
    }

    @Override // defpackage.wm3
    public final hd3<T> c(o22 o22Var, int i, cu0 cu0Var) {
        return bt7.d(this, o22Var, i, cu0Var);
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super T> id3Var, e02<?> e02Var) {
        return this.b.collect(id3Var, e02Var);
    }
}
