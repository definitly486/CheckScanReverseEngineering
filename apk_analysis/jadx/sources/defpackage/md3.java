package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class md3 implements hd3<Object> {
    public final /* synthetic */ dm3 b;

    public md3(dm3 dm3Var) {
        this.b = dm3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02<? super j59> e02Var) {
        nd3 nd3Var = new nd3(this.b, id3Var, null);
        ld3 ld3Var = new ld3(e02Var, e02Var.getContext());
        Object objD = cn1.d(ld3Var, true, ld3Var, nd3Var);
        return objD == a32.COROUTINE_SUSPENDED ? objD : j59.a;
    }
}
