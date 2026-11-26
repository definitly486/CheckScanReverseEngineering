package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ie3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ int c;

    public ie3(hd3 hd3Var, int i) {
        this.b = hd3Var;
        this.c = i;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02<? super j59> e02Var) {
        Object objCollect = this.b.collect(new je3(new p07(), this.c, id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
