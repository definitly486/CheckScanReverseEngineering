package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ff3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ hd3 c;
    public final /* synthetic */ dm3 d;

    public ff3(hd3 hd3Var, hd3 hd3Var2, dm3 dm3Var) {
        this.b = hd3Var;
        this.c = hd3Var2;
        this.d = dm3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02<? super j59> e02Var) {
        co1 co1Var = new co1(new hd3[]{this.b, this.c}, hf3.b, new gf3(this.d, null), id3Var, null);
        ld3 ld3Var = new ld3(e02Var, e02Var.getContext());
        Object objD = cn1.d(ld3Var, true, ld3Var, co1Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (objD != a32Var) {
            objD = j59.a;
        }
        return objD == a32Var ? objD : j59.a;
    }
}
