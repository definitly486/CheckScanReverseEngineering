package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gy6<T> implements y68<T>, hd3, wm3<T> {
    public final /* synthetic */ y68<T> b;
    private final mb4 job;

    public gy6(xg5 xg5Var, s68 s68Var) {
        this.b = xg5Var;
        this.job = s68Var;
    }

    @Override // defpackage.wm3
    public final hd3<T> c(o22 o22Var, int i, cu0 cu0Var) {
        return (((i < 0 || i >= 2) && i != -2) || cu0Var != cu0.DROP_OLDEST) ? bt7.d(this, o22Var, i, cu0Var) : this;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super T> id3Var, e02<?> e02Var) {
        return this.b.collect(id3Var, e02Var);
    }

    @Override // defpackage.y68
    public final T getValue() {
        return this.b.getValue();
    }
}
