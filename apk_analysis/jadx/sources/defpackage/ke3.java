package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ke3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ bm3 c;

    public ke3(hd3 hd3Var, bm3 bm3Var) {
        this.b = hd3Var;
        this.c = bm3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02<? super j59> e02Var) {
        Object objCollect = this.b.collect(new le3(new n07(), id3Var, this.c), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
